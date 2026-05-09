function qiniu_upload(token,path,fileKey) {
    var qiniuStorage = api.require("qiniuStorage");
    qiniuStorage.configUploader({
        params: {},
        checkCrc: false,
        mimeType: '',
        zone: $api.getStorage('qiniuZone')
    });
    qiniuStorage.start({
        token: token,
        path: api.fsDir + path,
        key: fileKey
    });
    qiniuStorage.addEventListener(function (ret) {
        if (ret.eventType == 'complete') {
            if ((api.systemType == 'ios' ? ret.info.statusCode : ret.statusCode) == 200) {
                //上传成功后组装访问路径，或直接访问文档
                api.hideProgress();
                var qiniuUrl = QINIU_DOMAIN + ret.key;
                api.sendEvent({
                    name: 'giveRecoreData',
                    extra: {
                        index: api.pageParam.index,
                        savename: ret.key,
                        filetime: duration,
                        Local_address: api.fsDir + path,
                        isfrom: api.pageParam.isform,
                        qiniuUrl: qiniuUrl
                    }
                });
            } else {
                api.hideProgress();
                var msg = '上传失败！';
                if (api.systemType == 'ios') {
                    msg = msg + ret.info.statusCode +ret.info.error.domain + ret.info.error.code;
                } else {
                    msg = msg + ret.statusCode +ret.error.domain + ret.info.code;
                }
                api.toast({
                    msg: msg,
                    duration: 3000,
                    location: 'bottom'
                });
            }
        }
    });
}