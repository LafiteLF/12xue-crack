(function(global, factory) {
  typeof exports === 'object' && typeof module !== 'undefined' ? module.exports = factory() :
  typeof define === 'function' && define.amd ? define(factory) :
  (global = typeof globalThis !== 'undefined' ? globalThis : global || self, global.RecorderManager = factory());
}(this, (function() {
  'use strict';

  // 内联worker和worklet代码
  const WORKER_CODE = `
    self.onmessage = function(e) {
      if(e.data.type === 'init') {
        this.frameSize = e.data.data.frameSize;
        this.arrayBufferType = e.data.data.arrayBufferType;
        this.sampleRate = e.data.data.toSampleRate;
        this.buffer = [];
      } else if(e.data.type === 'message') {
        const result = new Int16Array(e.data.data.length);
        for(let i = 0; i < e.data.data.length; i++) {
          const s = Math.max(-1, Math.min(1, e.data.data[i]));
          result[i] = s < 0 ? s * 0x8000 : s * 0x7FFF;
        }
        self.postMessage({
          frameBuffer: result,
          isLastFrame: false
        });
      } else if(e.data.type === 'stop') {
        self.postMessage({
          frameBuffer: null,
          isLastFrame: true
        });
      }
    };
  `;

  function RecorderManager(processorPath) {
    this.processorPath = processorPath;
    this.audioBuffers = [];
  }

  RecorderManager.prototype.start = function(options) {
    return new Promise((resolve, reject) => {
      try {
        const audioContext = new (window.AudioContext || window.webkitAudioContext)({
          sampleRate: options.sampleRate || 16000
        });
        
        if ( !navigator.mediaDevices) {
          console.error('当前环境不支持媒体设备访问!!!');
          return;
        }
        
        navigator.mediaDevices.getUserMedia({ audio: true }).then(stream => {



          const source = audioContext.createMediaStreamSource(stream);
          
          // 使用ScriptProcessor作为替代方案
          const processor = audioContext.createScriptProcessor(2048, 1, 1);
          const workerBlob = new Blob([WORKER_CODE], {type: 'application/javascript'});
          const worker = new Worker(URL.createObjectURL(workerBlob));
          
          worker.postMessage({
            type: 'init',
            data: {
              frameSize: options.frameSize || 1280,
              arrayBufferType: options.arrayBufferType || 'short16',
              toSampleRate: options.sampleRate || 16000
            }
          });
          
          processor.onaudioprocess = (e) => {
            worker.postMessage({
              type: 'message',
              data: e.inputBuffer.getChannelData(0)
            });
          };
          
          worker.onmessage = (e) => {
            if(this.onFrameRecorded) {
              this.onFrameRecorded(e.data);
            }
            if(e.data.isLastFrame && this.onStop) {
              this.onStop(this.audioBuffers);
            }
          };
          
          source.connect(processor);
          processor.connect(audioContext.destination);
          
          this.audioContext = audioContext;
          this.worker = worker;
          this.processor = processor;
          this.source = source;
          
          if(this.onStart) this.onStart();
          resolve();
        });
      } catch (err) {
        reject(err);
      }
    });
  };

  RecorderManager.prototype.stop = function() {
    if(this.worker) {
      this.worker.postMessage({type: 'stop'});
      this.worker.terminate();
    }
    if(this.source) {
      this.source.disconnect();
      this.source.mediaStream.getTracks()[0].stop();
    }
    if(this.audioContext) {
      this.audioContext.close();
    }
  };

  RecorderManager.prototype.onStart = null;
  RecorderManager.prototype.onStop = null;
  RecorderManager.prototype.onFrameRecorded = null;

  return RecorderManager;
})));
