/**
 * Created by wjy on 2016/5/16.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));
function changePsw() {
    var input = $api.dom('#oldPsw');
    input.blur();
    var newPsw1 = $api.dom('#newPsw');
    newPsw1.blur();
    var againPsw1 = $api.dom('#againPsw');
    againPsw1.blur();
    // var oldPsw = $api.val($api.byId('oldPsw'));
    var oldPsw = api.pageParam.type=='must'?$api.getStorage('psw'):$api.val($api.byId('oldPsw'));
    var newPsw = $api.val($api.byId('newPsw'));
    var againPsw = $api.val($api.byId('againPsw'));
    if (oldPsw == '') {
        api.toast({
            msg: '原密码不能为空',
            duration: 2000,
            location: 'bottom'
        });
    }else if(!(newPsw.indexOf(" ") == -1)||!(againPsw.indexOf(" ") == -1)){
        api.toast({
            msg: '密码中不能含有空格',
            duration: 2000,
            location: 'bottom'
        });
    } else if (escape(newPsw).indexOf("%u")!=-1){
        api.toast({
            msg: '密码中不能含有汉字',
            duration: 2000,
            location: 'bottom'
        });

    } else if (trimStr(newPsw).length < 6 || trimStr(newPsw).length >30){
        api.toast({
            msg: '密码长度应在6-30之间',
            duration: 2000,
            location: 'bottom'
        });
    } else if (newPsw != againPsw) {
        api.toast({
            msg: '两次密码不一致',
            duration: 2000,
            location: 'bottom'
        });
    } else if(checkPassword(newPsw)){
        api.toast({
            msg: '密码设置过于简单，请重新设置',
            duration: 2000,
            location: 'bottom'
        });
        $api.val($api.byId('newPsw'), '');
        $api.val($api.byId('againPsw'), '');
        $api.byId('newPsw').focus();
    }else {
        api.showProgress({
            title: '加载中',
            text: '请稍后...',
            modal: false
        });
        apiObj.Put(UrlRouter.ChangePsw, {
            values: {
                uid: $api.getStorage('uid'),
                oldpassword: encodeURIComponent(oldPsw),
                newpassword: encodeURIComponent(newPsw)
            }
        }, function (ret, err) {
            if (ret) {
                if (ret.ret == 0) {
                    api.hideProgress();
                    $api.setStorage('psw',newPsw);
                    api.accessNative({
                        name: 'changePsw',
                        extra: {
                            password: newPsw
                        }

                    }, function (ret, err) {
                        if (ret) {
                        } else {
                            api.toast({
                                msg: JSON.stringify(err),
                                duration: 2000,
                                location: 'bottom'
                            });
                        }
                    });
                    api.closeWin();
                } else {
                    api.hideProgress();
                    api.toast({
                        msg: ret.msg,
                        duration: 2000,
                        location: 'bottom'
                    });
                }
            } else {
                api.hideProgress();
                api.toast({
                    msg: err.msg,
                    duration: 2000,
                    location: 'bottom'
                });
            }
        })
    }

}