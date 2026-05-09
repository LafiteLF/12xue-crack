/**
 * created by zhuzhen 2016-6-7
 * **/
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));
var xdCode = '';
var bjCode = '';
var njmc = '';
var bjmc = '';
var type = '';
var xddata;
function loadStudentApplySchoolData() {
    var myuid = $api.getStorage('uid');
    apiObj.Get(UrlRouter.GetStudentApplySchoolUrl, {
        values: {
            uid: myuid
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                if (ret.data) {
                    if (ret.data.length != 0) {
                        var schoolName = ret.data.xxmc;
                        var school = $api.dom('.school');
                        $api.html(school, schoolName);
                        $api.setStorage('userSchoolInfo', ret.data);
                        getSchoolStyleData(ret.data);
                    }
                }

            }
        }
    })
}
function loadUserInfoDataGetSchoolDic() {
    var myuid = $api.getStorage('uid');
    apiObj.Get(UrlRouter.GetUserSchoolInfo, {
        values: {
            uid: myuid,
            identitytype: '3'
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret) {
                if (ret.ret == 0) {
                    var schoolName = ret.data[0].xxmc;
                    var school = $api.byId('school');
                    $api.html(school, schoolName);
                    $api.setStorage('userSchoolInfo', ret.data[0]);
                }
            }
        }
    })
}

var xueduanArr;
var xuezhiArr;
var xdArr;
var xddata;
function getSchoolStyleData(content) {
    var xxxzStr = content.xxxz;
    var czxzStr = content.czxz;
    var gzxzStr = content.gzxz;
    if (xxxzStr != '0' && czxzStr != '0' && gzxzStr != '0') {
         xueduanArr = ["小学", "初中", "高中"];
         xuezhiArr = [xxxzStr, czxzStr, gzxzStr];
         xdArr = ['21', '31', '34'];
        xddata=[{"name":"小学"}, {"name":"初中"}, {"name":"高中"}];
    }

    if (xxxzStr == '0' && czxzStr != '0' && gzxzStr != '0') {
         xueduanArr = ["初中", "高中"];
         xuezhiArr = [czxzStr, gzxzStr];
         xdArr = ['31', '34'];
        xddata=[{"name":"初中"}, {"name":"高中"}];

    }
    if (xxxzStr != '0' && czxzStr == '0' && gzxzStr != '0') {
         xueduanArr = ["小学", "高中"];
         xuezhiArr = [xxxzStr, gzxzStr];
         xdArr = ['21', '34'];
        xddata=[{"name":"小学"}, {"name":"高中"}];

    }
    if (xxxzStr != '0' && czxzStr != '0' && gzxzStr == '0') {
         xueduanArr = ["小学", "初中"];
         xuezhiArr = [xxxzStr, czxzStr];
         xdArr = ['21', '31'];
        xddata=[{"name":"小学"}, {"name":"初中"}];

    }
    if (xxxzStr != '0' && czxzStr == '0' && gzxzStr == '0') {
         xueduanArr = ["小学"];
         xuezhiArr = [xxxzStr];
         xdArr = ['21'];
        xddata=[{"name":"小学"}];

    }
    if (xxxzStr == '0' && czxzStr != '0' && gzxzStr == '0') {
         xueduanArr = ["初中"];
         xuezhiArr = [czxzStr];
         xdArr = ['31'];
        xddata=[{ "name":"初中"}];

    }
    if (xxxzStr == '0' && czxzStr == '0' && gzxzStr != '0') {
         xueduanArr = ["高中"];
         xuezhiArr = [gzxzStr];
         xdArr = ['34'];
        xddata=[ {"name":"高中"}];

    }
    if (xxxzStr == '0' && czxzStr == '0' && gzxzStr == '0') {
         xueduanArr = '';
         xuezhiArr = '';
         xdArr = '';
    }
    $api.setStorage('xueduan', xueduanArr);
    $api.setStorage('xuezhi', xuezhiArr);
    $api.setStorage('xd', xdArr);
}
function select(context) {
    var data = '';
    var title = '';
    var xueduanArr = [];
    var UIActionSelector = api.require('UIActionSelector');

    function getConfig() {
        return {
            datas: data,//JSON 数组类型或路径类型 为选择器指定数据 可以是JSON数组 或是以JSON数组格式内容保存的文件
            layout: {
                row: 5,                        //（可选项）数字类型；每屏显示的数据行数，超出的数据可以滑动查看，只能是奇数；默认：5
                col: 1,                        //（可选项）数字类型；数据源的数据级数，最多3级；默认：3
                height: 35,                    //（可选项）数字类型；每行选项的高度；默认：30
                size: 15,                      //（可选项）数字类型；普通选项的字体大小；默认：12
                sizeActive: 15,                //（可选项）数字类型；当前选项的字体大小；默认：同 size
                rowSpacing: 1,                 //（可选项）数字类型；行与行之间的距离；默认：5
                colSpacing: 10,                //（可选项）数字类型；列与列之间的距离；默认：10
                maskBg: 'rgba(0,0,0,0.2)',     //（可选项）字符串类型；遮罩层背景，支持 rgb，rgba，#，img；默认：rgba(0,0,0,0.2)
                bg: '#fff',                    //（可选项）字符串类型；选择器有效区域背景，支持 rgb，rgba，#，img；默认：#fff
                color: '#a6a6a6',                 //（可选项）字符串类型；选项的文字颜色，支持 rgb，rgba，#；默认：#848484
                colorActive: '#f00',           //（可选项）字符串类型；选项的文字颜色高亮，支持 rgb，rgba，#；默认：同 color
                colorSelected: '#404040'       //（可选项）字符串类型；已选项的文字颜色，支持 rgb，rgba，#；默认：同 colorActive
            },
            animation: true,
            cancel: {                          //（可选项）JSON 对象类型；取消按钮设置
                text: '取消',                  //（可选项）字符串类型；取消按钮的显示文字；默认：未设置时只显示背景
                size: 15,                      //（可选项）数字类型；取消按钮的显示文字大小；默认：12
                w: 55,                         //（可选项）数字类型；取消按钮的宽；默认：90
                h: 40,                         //（可选项）数字类型；取消按钮的高；默认：35
                bg: 'rgba(0,0,0,0.0)',                    //（可选项）字符串类型；取消按钮的背景，支持 rgb，rgba，#，img；默认：'#fff'
                bgActive: 'rgba(0,0,0,0.0)',              //（可选项）字符串类型；取消按钮的背景高亮，支持 rgb，rgba，#，img；默认：同 bg
                color: '#50b8b9',                 //（可选项）字符串类型；取消按钮的文字颜色，支持 rgb，rgba，#；默认：'#848484'
                colorActive: '#50b8b9'            //（可选项）字符串类型；取消按钮的文字颜色高亮，支持 rgb，rgba，#；默认：同 color
            },
            ok: {                              //（可选项）JSON 对象类型；确定按钮设置
                text: '完成',                  //（可选项）字符串类型；确定按钮的显示文字；默认：未设置时只显示背景
                size: 15,                      //（可选项）数字类型；确定按钮的显示文字大小；默认：12
                w: 55,                         //（可选项）数字类型；确定按钮的宽；默认：90
                h: 40,                         //（可选项）数字类型；确定按钮的高；默认：35
                bg: 'rgba(0,0,0,0.0)',                    //（可选项）字符串类型；确定按钮的背景，支持 rgb，rgba，#，img；默认：'#fff'
                bgActive: 'rgba(0,0,0,0.0)',              //（可选项）字符串类型；确定按钮的背景高亮，支持 rgb，rgba，#，img；默认：同 bg
                color: '#50b8b9',                 //（可选项）字符串类型；确定按钮的文字颜色，支持 rgb，rgba，#；默认：'#848484'
                colorActive: '#50b8b9'            //（可选项）字符串类型；确定按钮的文字颜色高亮，支持 rgb，rgba，#；默认：同 color
            },
            title: {                           //（可选项）JSON 对象类型；选择器顶部标题栏设置
                text: title,                //（可选项）字符串类型；选择器的标题内容；默认：请选择
                size: 15,                      //（可选项）数字类型；标题内容的文字大小；默认：12
                h: 40,                         //（可选项）数字类型；标题栏的高；默认：44
                bg: '#f5f5f5',                    //（可选项）字符串类型；标题栏的背景，支持 rgb，rgba，#，img；默认：'#eee'
                color: '#888'                  //（可选项）字符串类型；标题内容的文字颜色，支持 rgb，rgba，#；默认：'#848484'
            },
            fixedOn: api.frameName
        };
    }

    switch (context) {
        case $api.byId('xd'):
            title = '请选择学段';
            data = xddata;
            UIActionSelector.open(getConfig(), function (ret, err) {
                if (ret.eventType == 'ok') {
                    $api.text(context, ret.level1);
                    xdCode = ret.level1 == "小学" ? '21' : ret.level1 == "初中" ? '31' : '34';
                }
            });
            break;
        case $api.byId('rxn'):
            if (xdCode.length == 0) {
                api.toast({
                    msg: '请选择学段',
                    duration: 2000,
                    location: 'bottom'
                });
                return;
            }
            title = '请选择年级';
            apiObj.Get(UrlRouter.GradeList, {
                values: {
                    type: '1',
                    xd: xdCode,
                    xz: '6'
                }
            }, function (ret, err) {
                if (ret) {
                    if (ret.ret == 0) {

                        if (ret.data.length == 0) {
                            api.toast({
                                msg: '该学段还没有老师创建班级',
                                duration: 2000,
                                location: 'bottom'
                            });
                            return;
                        }

                        data = '[';
                        for (var i = 0; i < ret.data.length; i++) {
                            data = data + '{"name":"' + ret.data[i] + '"},';
                        }
                        data = data.substr(0, data.length - 1);
                        data = data + ']';
                        data = $api.strToJson(data);
                        UIActionSelector.open(getConfig(), function (ret, err) {
                            if (ret.eventType == 'ok') {
                                $api.text(context, ret.level1 + '级');
                                njmc = ret.level1;
                            }
                        })
                    } else {
                        //alert(ret.msg);
                    }
                } else {

                }
            });
            break;
    }
}
//点击加入班级
function joinByCode() {
    var myuid = $api.getStorage('uid');
    var data = {};
    var myGccode = $api.getStorage('selectedClassInfo');
    // alert($api.getStorage('selectedClassInfo'));
    data = myGccode;
    // alert(JSON.stringify(data));
    data['schoolid'] = $api.getStorage('userSchoolInfo').id;
    data['uid'] = $api.getStorage('uid');

    if ($api.text($api.byId('school')) == '请选择学校') {
        api.alert({
            title: '提示',
            msg: '请选择学校'
        }, function (ret, err) {

        });
    } else if ($api.text($api.byId('xd')) == '请选择学段') {
        api.alert({
            title: '提示',
            msg: '请选择学段'
        }, function (ret, err) {

        });
    } else if ($api.text($api.byId('rxn')) == '请选择入学年') {
        api.alert({
            title: '提示',
            msg: '请选择年级'
        }, function (ret, err) {

        });
    } else if ($api.text($api.byId('class')) == '请选择班级') {
        api.alert({
            title: '提示',
            msg: '请选择班级'
        }, function (ret, err) {

        });
    } else {
        apiObj.Post(UrlRouter.PostStudentJoinClassesUrl, {
            values: data
        }, function (ret, err) {
            if (ret) {
                if (ret.ret == 0) {
                    api.toast({
                        msg: '加入班级成功',
                        duration: 2000,
                        location: 'bottom'
                    });
                    // alert($api.getStorage('tag'));
                    //从注册来
                    if ($api.getStorage('tag') == 1) {
                        api.closeWin({
                            name: api.pageParam.winname
                        });
                        api.closeWin();
                    } else {
                        api.closeToWin({
                            name: 'win-stu-main',
                            animation: {
                                type: 'curl',
                                subType: 'subtype',
                                duration: 300
                            }
                        });
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
        });
    }
}