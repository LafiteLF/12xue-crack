/**
 *Created by zhuzhen 2016-5-31
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);

function openWin(name, param) {
    api.openWin({
        name: name,
        url: name + '.html',
        pageParam: {key: param}
    });
}


function getUserInfo() {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.Get(UrlRouter.UserInfo, {
        values: {
            uid: $api.getStorage('uid'),
            identitytype: '3'
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                api.hideProgress();
                $api.setStorage("sex", ret.sex);
                $api.text($api.byId('realname'), ret.realname);
                $api.text($api.byId('username'), ret.username);
                $api.text($api.byId('sex'), ret.sex == 0 ? '' : ret.sex == 1 ? '男' : '女');
                $api.text($api.byId('schoolname'), $api.getStorage('xxmc'));
                // $api.text($api.byId('address'), ret.jtzz);
            } else {
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();

        }
    })
}

function getPortrait() {
    apiObj.Get(UrlRouter.GetPortrait, {values: {uid: $api.getStorage('uid'), size: 'b'}}, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                $api.attr($api.byId('img-portrait'), 'src', ret.face);
            } else {
                //alert(ret.msg);
            }
        } else {

        }
    })
}


function updataToQiNiu(data) {
    apiObj.SetAuthToken($api.getStorage('token'));
    var timestamp = new Date().getTime();
    apiObj.Get(UrlRouter.GetQiNiuToken, {
        values: {
            uid: $api.getStorage('uid'),
            bucket: 'vodresource',
            key:'avatar/' + $api.getStorage('uid') + '/big/' + timestamp + '.jpg'
        }
    }, function (ret, err) {
        var qiniuStorage = api.require("qiniuStorage");
        qiniuStorage.configUploader({
            params:{},
            checkCrc: false,
            mimeType: '',
            zone: $api.getStorage('qiniuZone')
        });
        qiniuStorage.start({
            token: ret.data.token,
            path: data,
            key:'avatar/' + $api.getStorage('uid') + '/big/' + timestamp + '.jpg'
        });
        qiniuStorage.addEventListener(function (ret) {
            if(ret.eventType == 'complete'&&(api.systemType=='ios'?ret.info.statusCode:ret.statusCode) == 200){
                //上传成功后组装访问路径，或直接访问文档
                apiObj.Put(UrlRouter.PutPortrait, {
                    values: {
                        uid: $api.getStorage('uid'),
                        avatar: ret.key,
                        encryption: timestamp
                    }
                }, function (ret, err) {
                    if (ret) {

                        if (ret.ret == 0) {
                            api.toast({
                                msg: '上传成功',
                                duration: 2000,
                                location: 'bottom'
                            });
                            $api.attr($api.byId('img-portrait'), 'src', data);
                            RefrashIcon(data);
                            if(api.systemType == 'ios'){
                                api.setScreenOrientation({
                                    orientation: 'landscape_left'
                                });
                            }else {
                                api.setScreenOrientation({
                                    orientation: 'landscape_left'
                                });
                            }
                        } else {
                            api.toast({
                                msg: ret.msg,
                                duration: 2000,
                                location: 'bottom'
                            });
                        }
                    } else {
                        api.toast({
                            msg: err.msg,
                            duration: 2000,
                            location: 'bottom'
                        });
                    }

                });
            }

        });
    });
}

function RefrashIcon(data) {
    api.sendEvent({
        name: 'changeHeadUrl',
        extra: {iconUrl: data}
    });
}