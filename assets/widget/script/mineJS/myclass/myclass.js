/**
 * */
//已加入的班级
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));
function loadMyJoinClass() {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.Get(UrlRouter.GetStudentJoinClass, {
        values: {
            uid: $api.getStorage('uid')
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                api.hideProgress();
                var header = $api.dom('header');
                var headerH = $api.offset(header).h;
                var frameH = padWinHeight - headerH;
                if (ret.data.length == 0) {
                    api.openFrame({
                        name: 'myclass_noclass',
                        url: '../../../html/mine/myclass/myclass_noclass.html',
                        rect: {
                            x: '0',
                            y: headerH + 65,
                            w: 'auto',
                            h: frameH-5
                        },
                        pageParam: {name: 'pageparam'},
                        bounces: false
                    });
                } else {
                    api.openFrame({
                        name: 'myclass_frame',
                        url: '../../../html/mine/myclass/myclass_joined_frame.html',
                        rect: {
                            x: 0,
                            y: headerH + 65,
                            w: 'auto',
                            h: frameH - 65
                        },
                        pageParam: {name: ret.data},
                        bounces: false,
                        reload: true
                    });
                }
            } else {
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
        api.hideProgress();
    })
}
var hasData;
var hasDataB = true;
var dataA;
var dataB;
//获取待审核的班级列表
function loadMyAuditClass() {
    api.showProgress({
        // title: '加载中',
        // text: '请稍后...',
        // modal: false
    });
    apiObj.Get(UrlRouter.GetStudentAuditClass, {
        values: {
            uid: $api.getStorage('uid'),
            type: '1'
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                getClassB();
                if (ret.data.length == 0) {
                    hasData = false;
                    dataA = ret.data;
                } else {
                    hasData = true;
                    dataA = ret.data;
                }
            } else {
                //alert(ret.msg);
            }
        } else {
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
        api.hideProgress();
    });
    api.hideProgress();

}

//获取学生已经申请并且还没有创建的行政班级列表
function getClassB() {
    apiObj.Get(UrlRouter.GetStudentAuditClassB, {
        values: {
            uid: $api.getStorage('uid')
            //uid:myuid,
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                api.hideProgress();
                var header = $api.dom('header');
                var headerH = $api.offset(header).h;
                var frameH = padWinHeight - headerH;
                if (ret.data.length == 0) {
                    hasDataB = false;
                    if (hasData) {
                        api.openFrame({
                            name: 'myclass_frame',
                            url: '../../../html/mine/myclass/myclass_frame.html',
                            rect: {
                                x: 0,
                                y: headerH + 65,
                                w: 'auto',
                                h: frameH - 65
                            },
                            pageParam: {dataA: dataA, dataB: ret.data},
                            bounce: false,
                            reload: true
                        });
                    }else {
                        api.openFrame({
                            name: 'myclass_noclass',
                            url: '../../../html/mine/myclass/myclass_noclass_audit.html',
                            rect: {
                                x: 0,
                                y: headerH + 65,
                                w: 'auto',
                                h: frameH-65
                            },
                            pageParam: {name: 'pageparam'},
                            bounces: false
                        });
                    }

                } else {

                    api.openFrame({
                        name: 'myclass_frame',
                        url: '../../../html/mine/myclass/myclass_frame.html',
                        rect: {
                            x: 0,
                            y: headerH + 65,
                            w: 'auto',
                            h: frameH - 65
                        },
                        pageParam: {dataA: dataA, dataB: ret.data},
                        bounce: true,
                        reload: true
                    });
                }
            } else {
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
    });
}
//切换tab 已加入的班级
function joinedClass() {
    $api.removeCls($api.byId('auditclass'), 'active');
    $api.addCls($api.byId('joinedclass'), 'active');
    loadMyJoinClass();
}
function auditClass() {
    $api.removeCls($api.byId('joinedclass'), 'active');
    $api.addCls($api.byId('auditclass'), 'active');
    loadMyAuditClass();
}

//撤销加入班级申请
function quitClass(context) {
    // api.showProgress({
    //     style: 'default',
    //     animationType: 'fade',
    //     title: '撤销中...',
    //     text: '',
    //     modal: false
    // });
    var myUid = $api.getStorage('uid');
    var myCode = $api.attr(context, 'code');
    var myId = $api.attr(context, 'id');
    var myGradeid = $api.attr(context, 'gradeid');
    apiObj.Put(UrlRouter.PutStudentRevokeAuditsUrl, {
        values: {
            uid: myUid,
            code: myCode,
            bjid: myId,
            gradeid: myGradeid
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                // api.hideProgress();
                // api.alert({
                //     title: ' ',
                //     msg: '撤销成功',
                // }, function(ret, err) {
                //
                // });
                api.toast({
                    msg: '撤销成功',
                    duration: 3000,
                    location: 'bottom'
                });

                api.sendEvent({
                    name: 'refreshMyClass2'
                });

            } else {
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
    });
}
//退出班级
function logoutStudentClass(context) {
    api.showProgress({
        style: 'default',
        animationType: 'fade',
        title: '退出中...',
        text: '',
        modal: false
    });
    var myUid = $api.getStorage('uid');
    var myId = $api.attr(context, 'id');
    apiObj.Delete(UrlRouter.DelStudentLogoutClassUrl + '?uid=' + myUid + '&classid=' + myId, null, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                api.hideProgress();
                api.toast({
                    msg: '退出班级成功',
                    duration: 2000,
                    location: 'bottom'
                });

                api.sendEvent({
                    name: 'refreshMyClass'
                });

            } else {
                api.hideProgress();
                //alert(ret.msg);
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
