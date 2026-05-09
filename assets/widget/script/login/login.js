/**
 * Created by sunjing on 2016/8/11.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
var timeOut;//请求信息计时
var ip;//课堂用IP地址
function postDeviceReport(uid) {
    apiObj.SetAuthToken($api.getStorage('token'));
    apiObj.Post(UrlRouter.PostDeviceReport, {
        values: {
            uid: uid,
            mac_addr: '',
            serial_number: '',
            device_type: deviceType
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                if (ret.data == 0) { //清理缓存的标志
                    //创建打开数据库
                    var db = api.require('db');
                    var ret = db.openDatabaseSync({
                        name: dbName,
                        path: 'fs://student_12xue.db'
                    });
                    var truncatedb=db.executeSqlSync({
                        name: dbName,
                        sql: 'delete from IntelligenceAnswer '
                    })
                }
            }
        }
    })
}


function PostUserlogin(user, dlpassword, type) {//用户登录
    ip = $api.getStorage('ip');
    var password = dlpassword;
    apiObj.Post(UrlRouter.PostUserlogin, {
        values: {
            account: base64encode(user),
            password: md5(password),
            client_id: '12xue_stu',
            client_secret: 'a6c36548b3a7c78ef5d912e1d1a1bdce',
            is_pad:'1',
            mac_addr: $api.getStorage('macAdress'),
            decrypt: 'md5_1',
        }
    }, function (ret, err) {
        api.hideProgress();
        if (ret) {
            if (ret.ret == 0) {
                if (type == 'autoLogin') {
                    $api.setStorage('token', ret.access_token);
                    $api.setStorage('isLogin', 'true');
                    $api.setStorage('refresh_token', ret.refresh_token);
                    $api.setStorage('uid', ret.uid);
                    $api.setStorage('openScanner', '1');
                    $api.setStorage('realname', ret.realname);
                    $api.setStorage('account', ret.username);
                    $api.setStorage('username', ret.username);
                    $api.setStorage('psw', password);
                    $api.setStorage('ip', ip);
                    $api.setStorage('sex',ret.sex);
                    //判断token有效期使用
                    $api.setStorage('expires_in', parseInt(new Date().getTime()/1000));
                    
                    //杭智管控判断强制绑定
                    if ($api.getStorage('padType') == '3' && ret.pad_allow_login == 0) {
                        checkAllowLogin();
                    } else {
                        //发送登录成功事件
                        api.sendEvent({
                            name: 'init_user',
                            extra: {token: ret.access_token}
                        });
                        //自动刷新登陆状态以后，发送设备mac地址
                        apiObj.SetAuthToken($api.getStorage('token'));
                        apiObj.Post(UrlRouter.PostDeviceReport, {
                            values: {
                                uid: ret.uid,
                                mac_addr: '',
                                serial_number: '',
                                device_type: ''
                            }
                        }, function (ret, err) {
                        });
                    }

                } else {
                    $api.setStorage('isLogin', 'true');
                    $api.setStorage('token', ret.access_token);
                    $api.setStorage('refresh_token', ret.refresh_token);
                    $api.setStorage('uid', ret.uid);
                    $api.setStorage('openScanner', '1');
                    $api.setStorage('realname', ret.realname);
                    $api.setStorage('account', ret.username);
                    $api.setStorage('username', ret.username);
                    $api.setStorage('psw', password);
                    $api.setStorage('ip', ip);
                    $api.setStorage('sex',ret.sex);
                    //判断token有效期使用
                    $api.setStorage('expires_in', parseInt(new Date().getTime()/1000));

                    //杭智管控判断强制绑定
                    if ($api.getStorage('padType') == '3' && ret.pad_allow_login == 0) {
                        checkAllowLogin();
                    } else {
                        GetStudentAuditNotify();
                        // setHeight();
                        $api.setStorage('padHeight', Math.min(api.winHeight, api.winWidth));
                        postDeviceReport(ret.uid);
                        $('#dlpassword').val('');
                        api.sendEvent({
                            name: 'init_user',
                            extra: {token: ret.access_token}
                        });
                        api.openWin({
                            name: 'win-stu-main',
                            url: '../win-stu-main.html',
                            slidBackEnabled:false,
                            pageParam: {sex: ret.sex}
                        });
                    }
                }
            } else {
                var input = $api.dom('#dlpassword');
                input.blur();
                api.toast({
                    msg: ret.msg,
                    duration: 2000,
                    location: 'bottom'
                });
            }
        } else {
            api.toast({
                msg: '当前网络不可用，请检查网络设置',
                duration: 2000,
                location: 'bottom'
            });
        }
    });
}

function checkAllowLogin() {
    api.alert({
        title: '已开启强制绑定',
        msg: '请登录自己的帐号或联系驻校服务人员！',
        buttons: ['确定']
    }, function (ret, err) {
        if (ret.buttonIndex == 1) {
            $api.setStorage('isLogin', 'false');
            api.closeToWin({
                name: 'root'
            });
        }
    });
}


//查询推送消息的接口
function GetStudentAuditNotify() {
    apiObj.SetAuthToken($api.getStorage('token'));
    apiObj.Get(UrlRouter.GetStudentAuditNotify, {
        values: {
            cuid: $api.getStorage("uid")
        }
    }, function (ret, err) {
        if (ret.ret == 0) {
            if(ret.data.length!=0){
                if(ret.data[0].t_notify == 0){
                    api.confirm({
                        msg: '有新用户申请跟您建立家长绑定关系',
                        buttons: ["忽略", "去审核"]
                    }, function (ret, err) {
                        switch (ret.buttonIndex) {
                            case 1:
                                break;
                            case 2:
                                api.openWin({
                                    name : 'myparent_win',
                                    url  : 'widget://html/personPad/win-person-partent.html'
                                });
                                break;
                        }
                    });

                }
            }
        }
    });
}
