/**
 * Created by bingo on 16/6/14.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage("token"));
var data;

function getfanslist() {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });

    var params = {};
    params['p'] = page;
//    params["num"] = 10;

    params['uid'] = $api.getStorage("uid");
    params['otheruid'] = otheruid;


    var fans = api.pageParam.fans;
    var Url = '';
    if (fans == 'no') {
        Url = UrlRouter.GetFollowUsers;
    } else {
        Url = UrlRouter.GetFollowmelists;
    }

    apiObj.SetAuthToken($api.getStorage("token"));
    apiObj.Get(Url, {
        values: params
    }, function (ret, err) {

        if (ret.ret == 0) {
            api.hideProgress();
            api.refreshHeaderLoadDone();
            totalPage = ret.totalpage;
            if (!ret.list || ret.list.length == 0) {
                //无数据
                $api.css($api.dom("ul"), "display:none");
                if (page == 1) {
                    showNoData();
                } else {
                    page--;
                    api.toast({
                        msg: '已加载全部',
                        duration: 2000,
                        location: 'bottom'
                    });
                }
            } else {
                if (page == 1) {
                    data = ret.list;
                } else {
                    data = data.concat(ret.list);
                }
                var html = '';
                for (var i = 0; i < data.length; i++) {
                    if (data[i].xxmc && data[i].face && data[i].realname) {
                        html = html + dealData(i);
                    } else {
                        html = html  + '<li class="aui-card-list aui-border-b">' +
                            '<div class="aui-card-list-header aui-card-list-user">' +
                            '<div class="aui-card-list-user-avatar followAvatar">' + '<img src="http://k12.12xue.com/Common/images/face/middle/online_teacher_1.jpg" class="aui-img-round"/>' +
                            '</div>' +
                            '<div class="aui-font-size-16">' +
                            '<div class="aui-text-primary" >' + '帐号异常' + '</div>' + '<span class="aui-label aui-label-info">' + '</span>' + '<span class="identitytype">' + '</span>' +
                            '</div>' +
                            '<div class="aui-card-list-content aui-text-default aui-invisible" style="display: block;opacity:0;">' + '<span>'  + '</span>' + '</div>' +
                            '<div class="aui-card-list-content aui-text-default" style="display: block; ">'  + '</div>' +
                            '<div class="aui-btn btn-follow aui-btn-warning aui-btn-outlined" otherUid= ' + data[i].uid + '  onclick="concern(this)">' + '取消关注' + '</div>' +
                            '</div>' +
                            '</li>';
                    }
                }
                $api.html($api.dom('.aui-list'), html);
                $api.css($api.dom(".nodata"), 'display:none');
                $api.css($api.dom("ul"), "display:block");
            }
        } else {
            api.hideProgress();
            //无数据
            if (page == 1) {
                showNoData();
            } else {
                page--;
                api.toast({
                    msg: ret.msg,
                    duration: 2000,
                    location: 'bottom'
                });
            }
        }
    })
}
function dealData(i) {
    var html;
    var item = data[i];
    var str = '';
    if (item.identitytype == '2') {
        str = '(老师)';
    } else if (item.identitytype == '4') {
        str = '(家长)';
    } else {
        str = '(学生)';
    }

    var xxmc = '';

    if(item.identitytype == '4'){
        if(item.child&&item.child.length >0){
            xxmc = item.child[0].xxmc;
        }else {
            xxmc = "暂无学校信息";
        }
    }else {
        if (item.xxmc == "") {
            xxmc = "暂无学校信息";
        } else {
            xxmc = item.xxmc;
        }
    }



    var btnhtml = '';


    // if (ret.follow == true) {
    //
    //     btnhtml = '<div class="aui-btn  aui-btn-outlined" onclick="concern(this)">' + '取消关注' + '</div>';
    // } else {
    //
    //     btnhtml = '<div class="aui-btn aui-btn-warning aui-btn-infome" onclick="concern(this)">'
    //         +'<span class="aui-iconfont aui-icon-add">'+'</span>'+'关注'+'</div>';
    //
    // }

    // alert(JSON.stringify(item));

    var array = item.allclass;
    var sstr = '';
    for (var i = 0; i < array.length; i++) {
        if(array[i].length>10)
        {
            array[i]=array[i].substring(0,10)+'...';
        }
        sstr += array[i];
        if(array.length==0||i==array.length-1)
            sstr+=' ';
        else
        {
            sstr += '、';
        }

    }


    if (item.uid == $api.getStorage("uid")) {

    } else {
        if (item.follow == true) {
            btnhtml = '<div class="aui-btn btn-follow aui-btn-warning aui-btn-outlined" follow=' + item.follow + ' otherUid= ' + item.uid + ' onclick="concern(this)">' + '取消关注' + '</div>';
        } else {
            btnhtml = '<div class="aui-btn btn-follow aui-btn-warning " follow=' + item.follow + ' otherUid= ' + item.uid + ' onclick="concern(this)">' + '<span class="aui-iconfont aui-icon-add">' + '</span>' + '关注' + '</div>';
        }
    }

    if (item.xxmc == "") {
        if (item.sex == 1) {
            var sexhtml = '<div class= "aui-iconfont aui-icon-mail sex"></div>';
        } else if (item.sex ==2) {
            var sexhtml = '<div class= "aui-iconfont aui-icon-femail unsex"></div>';
        } else {
            var sexhtml ="";
        }
        html = '<li class="aui-card-list aui-border-b">' +
            '<div class="aui-card-list-header aui-card-list-user">' +
            '<div class="aui-card-list-user-avatar followAvatar">' +
           sexhtml+ '<img src="' + item.face + '" class="aui-img-round"/>' +
            '</div>' +
            '<div class="aui-font-size-16">' +
            '<div class="aui-text-primary" >' + item.realname + '</div>' + '<span class="aui-label aui-label-info">' + item.rank + '</span>' + '<span class="identitytype">' + str + '</span>' +
            '</div>' +
            '<div class="aui-card-list-content aui-text-default " style="display: block; ">' + '<span style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;word-break: break-all ">' + xxmc + '</span>' + '</div>' +
            '<div class="aui-card-list-content aui-text-default aui-invisible" style="display: block;opacity:0;">' + xxmc + '</div>' +
            btnhtml +
            '</div>' +
            '</li>';


    } else {

        if (sstr == "") {
            if (item.sex == 1) {
                var sexhtml = '<div class= "aui-iconfont aui-icon-mail sex"></div>';
            } else if (item.sex == 2) {
                var sexhtml = '<div class= "aui-iconfont aui-icon-femail unsex"></div>';
            } else {
                var sexhtml ="";
            }
            html = '<li class="aui-card-list aui-border-b">' +
                '<div class="aui-card-list-header aui-card-list-user">' +
                '<div class="aui-card-list-user-avatar followAvatar">' +
                sexhtml+'<img src="' + item.face + '" class="aui-img-round"/>' +
                '</div>' +
                '<div class="aui-font-size-16">' +
                '<div class="aui-text-primary" >' + item.realname + '</div>' + '<span class="aui-label aui-label-info">' + item.rank + '</span>' + '<span class="identitytype">' + str + '</span>' +
                '</div>' +
                '<div class="aui-card-list-content aui-text-default "style="display: flex; ">' + '<span style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;word-break: break-all ">' + xxmc + '</span>' + '</div>' +
                '<div class="aui-card-list-content aui-text-default aui-invisible"  style="display: flex;">' + xxmc + '</div>' +
                btnhtml +
                '</div>' +
                '</li>';
        } else {
            if (item.sex == 1) {
                var sexhtml = '<div class= "aui-iconfont aui-icon-mail sex"></div>';
            } else if (item.sex == 2) {
                var sexhtml = '<div class= "aui-iconfont aui-icon-femail unsex"></div>';
            } else {
                var sexhtml ="";
            }
            html = '<li class="aui-card-list aui-border-b">' +
                '<div class="aui-card-list-header aui-card-list-user">' +
                '<div class="aui-card-list-user-avatar followAvatar">' +
                sexhtml+'<img src="' + item.face + '" class="aui-img-round"/>' +
                '</div>' +
                '<div class="aui-font-size-16">' +
                '<div class="aui-text-primary" >' + item.realname + '</div>' + '<span class="aui-label aui-label-info">' + item.rank + '</span>' + '<span class="identitytype">' + str + '</span>' +
                '</div>' +
                '<div class="aui-card-list-content aui-text-default" style="display: flex">' + '<span style="white-space: nowrap;text-overflow: ellipsis;overflow: hidden;word-break: break-all ">' + xxmc + '</span>' + '</div>' +
                '<div class="aui-card-list-content aui-text-default" style="display: block; display: -webkit-box;-webkit-box-orient: vertical;-webkit-line-clamp: 3;overflow: hidden;">' + sstr + '</div>' +
                btnhtml +
                '</div>' +
                '</li>';
        }


    }


    return html;

}

function concern(concern) {


    var uid = $api.attr(concern, 'otherUid');
    // alert(uid);
    var follow = $api.attr(concern, 'follow');
    if ($api.text(concern) != '取消关注') {

        apiObj.SetAuthToken($api.getStorage("token"));
        apiObj.Put(UrlRouter.FollowUser, {
            values: {
                type: 1,
                followuid: uid
            }
        }, function (ret, err) {
            if (ret) {
                if (ret.ret == 0) {
                    $api.text(concern, "取消关注");
                    $api.addCls(concern, 'aui-btn-outlined');
                    api.sendEvent({
                        name: 'reloadNum'
                    });

                } else {
                    // //alert(ret.msg);
                }
            } else {
                //
            }
        });


    } else {

        apiObj.SetAuthToken($api.getStorage("token"));
        apiObj.Put(UrlRouter.FollowUser, {
            values: {
                type: 0,
                followuid: uid
            }
        }, function (ret, err) {
            if (ret) {
                if (ret.ret == 0) {
                    $api.removeCls(concern, 'aui-btn-outlined');
                    $api.html(concern, '<span class="aui-iconfont aui-icon-add"></span>关注');
                    api.sendEvent({
                        name: 'reloadNum'
                    });
                } else {
                    // //alert(ret.msg);
                }
            } else {
                //
            }
        });


    }


}


function signClick(sign) {
    var uid = $api.attr(sign, 'uid');
    var classid = $api.attr(sign, 'classid');
    var zyid = $api.attr(sign, 'zyid');
    var parms = {};
    parms['uid'] = $api.getStorage("uid");
    parms['classid'] = classid;
    parms['zyid'] = zyid;
    parentSignature(sign, parms);
}

function parentSignature(sign, parms) {
    apiObj.SetAuthToken($api.getStorage("token"));
    apiObj.Post(UrlRouter.GetParsignature, {
        values: parms
    }, function (ret, err) {
        api.hideProgress();

        if (ret.ret == 0) {
            $api.text(sign, "已签");
            $api.addCls(sign, "haveSign");
            $api.removeCls(sign, "aui-btn");
        } else {
            api.toast({
                msg: '加载失败',
                duration: 2000,
                location: 'bottom'
            });
        }
    })
}

function signPar(signature, i) {
    var zyid = data[i].id;
    var bjid = data[i].bjid;
    var html = '';
    var uid = $api.getStorage("uid");
    if (signature == 1) {
        html = '<div class="haveSign">已签</div>';
    } else {
        html = '<div uid=' + uid + '  zyid=' + zyid + ' classid=' + bjid + '  class="aui-btn" onclick="signClick(this)">签字</div>';
    }
    return html;
}


function showNoData() {
    $api.css($api.dom(".no-data"), 'display:block;');

}
