class Iat {
    constructor() {
        this.APPID = '4bcfaca0';
        this.APISecret = 'M2I1ZGFjNzQ3N2Q0NDZiNzYxOWMzYWUy';
        this.APIKey = '6ea21f49f21ac393b8f4cf2ec6f84029';
        this.calback = null;
        this.iatWS = null;
        this.resultText = "";
        this.resultTextTemp = "";
        this.recorder = new RecorderManager("./dist");
        // this.countdownInterval;
    }

    getWebSocketUrl() {
        // 请求地址根据语种不同变化
        var url = "wss://iat-api.xfyun.cn/v2/iat";
        var host = "iat-api.xfyun.cn";
        var apiKey = this.APIKey;
        var apiSecret = this.APISecret;
        var date = new Date().toGMTString();
        var algorithm = "hmac-sha256";
        var headers = "host date request-line";
        var signatureOrigin = `host: ${host}\ndate: ${date}\nGET /v2/iat HTTP/1.1`;
        var signatureSha = CryptoJS.HmacSHA256(signatureOrigin, apiSecret);
        var signature = CryptoJS.enc.Base64.stringify(signatureSha);
        var authorizationOrigin = `api_key="${apiKey}", algorithm="${algorithm}", headers="${headers}", signature="${signature}"`;
        var authorization = btoa(authorizationOrigin);
        url = `${url}?authorization=${authorization}&date=${date}&host=${host}`;
        return url;
    }

    toBase64(buffer) {
        var binary = "";
        var bytes = new Uint8Array(buffer);
        var len = bytes.byteLength;
        for (var i = 0; i < len; i++) {
            binary += String.fromCharCode(bytes[i]);
        }
        return window.btoa(binary);
    }

    start(calback) {
        this.recorder.onFrameRecorded = ({ isLastFrame, frameBuffer }) => {
            if (this.iatWS.readyState === this.iatWS.OPEN) {
                this.send(this.toBase64(frameBuffer),isLastFrame ? 2 : 1);
            }
        };
        this.calback = calback;
        if ("WebSocket" in window) {
            this.iatWS = new WebSocket(this.getWebSocketUrl());
            // console.log('WebSocket');
        } else if ("MozWebSocket" in window) {
            this.iatWS = new MozWebSocket(this.getWebSocketUrl());
            // console.log('MozWebSocket');
        } else {
            alert("浏览器不支持WebSocket");
            return;
        }

        this.iatWS.onopen = () => {
            // console.log('WebSocket连接成功');
            this.recorder.start({
                sampleRate: 8000,
                frameSize: 1280,
            });
            this.sendFirst()
        }
        this.iatWS.onmessage = (event) => {
            // console.log('Websocket:onmessage ', event.data);
            this.renderResult(event.data);
            calback(this.resultTextTemp || this.resultText || "");
        }
        this.iatWS.onclose = () => {
            // console.log('WebSocket:onclose');
        }
    }

    renderResult(resultData) {
        // 识别结束
        let jsonData = JSON.parse(resultData);
        if (jsonData.data && jsonData.data.result) {
            let data = jsonData.data.result;
            let str = "";
            let ws = data.ws;
            for (let i = 0; i < ws.length; i++) {
                str = str + ws[i].cw[0].w;
            }
            // 开启wpgs会有此字段(前提：在控制台开通动态修正功能)
            // 取值为 "apd"时表示该片结果是追加到前面的最终结果；取值为"rpl" 时表示替换前面的部分结果，替换范围为rg字段
            if (data.pgs) {
                if (data.pgs === "apd") {
                    // 将resultTextTemp同步给resultText
                    this.resultText = this.resultTextTemp;
                }
                // 将结果存储在resultTextTemp中
                this.resultTextTemp = this.resultText + str;
            } else {
                this.resultText = this.resultText + str;
            }
        }
        if (jsonData.code === 0 && jsonData.data.status === 2) {
            // this.iatWS.close();
            // this.over()
        }
        if (jsonData.code !== 0) {
            // this.iatWS.close();
            this.over()
            console.error(jsonData);
        }
    }

    sendFirst() {
        // console.log('第一帧：');
        var params = {
            common: {
                app_id: this.APPID,
            },
            business: {
                language: "zh_cn",
                domain: "iat",
                accent: "mandarin",
                vad_eos: 5000,
                dwa: "wpgs",
            },
            data: {
                status: 0,
                format: "audio/L16;rate=8000",
                encoding: "raw",
            },
        };
        this.iatWS.send(JSON.stringify(params));
        // console.log(JSON.stringify(params));
        // console.log('第一帧发送完毕');
    }

    send(audioData, statusCode=1) {
        if (statusCode === 2) {
            // console.log("最后一帧：");
        }else{
            // console.log("中间帧："); 
        }
        var params = {
            data: {
                status: statusCode,
                format: "audio/L16;rate=8000",
                encoding: "raw",
                // encoding: "lame",
                audio: audioData,
            },
        };
        this.iatWS.send(JSON.stringify(params));
        // console.log(JSON.stringify(params));
        if (statusCode === 2) {
            // console.log("最后一帧发送完毕"); 
        }else{
            // console.log("中间帧发送完毕");
        }
    }

    over() {
        // console.log('iat.over');
        this.recorder.stop();

    }
}


