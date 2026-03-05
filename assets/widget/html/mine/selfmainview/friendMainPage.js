0/**
 * Created by bingo on 16/8/4.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
var imgData = '';
function getspaceinfo() {

    // api.showProgress();
    apiObj.SetAuthToken($api.getStorage('token'));


    // getPortrait();

    apiObj.Get(UrlRouter.GetDynamicspaceinfo, {
        values: {
            otheruid: otheruid  //获取hwid
        }
    }, function (ret, err) {
        if (ret) {
             // alert(JSON.stringify(ret));onclick="backgroundImgChange()"' + imgData + '
            if (ret.ret == 0) {
                api.hideProgress();
                var headerHtml = '<a class="aui-pull-left" onclick="api.closeWin()">' + '<span class="aui-iconfont aui-icon-left" style="color: #4bc7c7;font-size: 1rem">'
                    + '</span>' + '</a>' + '<div class="background" >' + '<img class="bacimg"  style="inline-block" src="http://7jprpb.com1.z0.glb.clouddn.com/22.png">'
                    + '</div>' + '<div class="head">' +sexhtml+ '<img class="headImg" src="' + ret.face + '" >' + '</div>';
                $api.html($api.dom('.container'), headerHtml);

                var html = '';
                var  schoolHtml = '';
                if (ret.identitytype == '4') {
                    var schoolArr = ret.school;
                    if (schoolArr.length == 0) {
                        schoolHtml = '<p>' + '家长' + '</p>' + '<p>' + '暂无学校信息' + '</p>';
                    } else {
                        for (i = 0; i < schoolArr.length; i++) {
                            if (schoolArr[i].xd[0]) {
                                schoolHtml = schoolHtml + '<p>' + schoolArr[i].xd[0] + ' (家长)' + '</p>' + '<p>' + schoolArr[i].provincecn +'&nbsp;'+'&nbsp;'+ schoolArr[i].citycn +'&nbsp;'+'&nbsp;'+ schoolArr[i].areacn +'&nbsp;'+'&nbsp;'+ schoolArr[i].xxmc + '</p>' + '<br>';
                            } else {
                                schoolHtml = schoolHtml + '<p>' + '暂无班级信息 (家长)' + '</p>' + '<p>' + schoolArr[i].provincecn+'&nbsp;'+'&nbsp;' + schoolArr[i].citycn +'&nbsp;'+'&nbsp;'+ schoolArr[i].areacn +'&nbsp;'+'&nbsp;'+ schoolArr[i].xxmc + '</p>' + '<br>';
                            }
                        }
                    }
                } else if (ret.identitytype == '2') {
                    var array = ret.xkmc;
                    var str = '';
                    for (var i = 0; i < array.length; i++) {
                        str += array[i];
                    }
                    schoolHtml = '<p>' + str + '(老师)' + '</p>' + '<p>' + ret.school.provincecn+'&nbsp;'+'&nbsp;' + ret.school.citycn+'&nbsp;'+'&nbsp;' + ret.school.areacn+'&nbsp;'+'&nbsp;' + ret.school.xxmc + '</p>';
                } else {

                    var str = '';
                    if (ret.school.xd[0]) {
                        str = ret.school.xd[0] + '(学生)';
                    } else {
                        str = '(学生)';
                    }
                    schoolHtml = '<p>' + str + '</p>' + '<p>' + ret.school.provincecn +'&nbsp;'+'&nbsp;'+ ret.school.citycn +'&nbsp;'+'&nbsp;'+ ret.school.areacn +'&nbsp;'+'&nbsp;'+ ret.school.xxmc + '</p>';
                }



                var btnhtml = '';
                //判断是否为本人
                if(otheruid == $api.getStorage('uid')){
                    //是本人不做操作  不添加关注按钮
                }else {
                    if (ret.follow == true) {
                        btnhtml = '<div class="aui-btn  aui-btn-outlined" onclick="contern(this)">' + '取消关注' + '</div>';
                    } else {
                        btnhtml = '<div class="aui-btn aui-btn-warning aui-btn-infome" onclick="contern(this)">'
                            +'<span class="aui-iconfont aui-icon-add">'+'</span>'+'关注'+'</div>';
                    }
                }


                var gxqmHtml = '';
                if (ret.gxqm) {
                    gxqmHtml = '<p>个性签名:' + ret.gxqm + '</p>';
                }

                html = '<div class="aui-font-size-16">' + '<div class="primary ">' + ret.realname +'</div>'+'<span class="aui-label aui-label-info" style="vertical-align: top;margin-top: 7px;">' + ret.rank + '</span>'
                    + '</div>'
                    + schoolHtml  + '<div class="fansDiv" >'
                    + '<span class="leftDiv">' + '关注 ' + '<span style="color: #00bbd4" onclick="guanzhu()">' + ret.follownum + '</span></span>'
                    + '<div  class="lineDiv"></div>'
                    + '<span class="rightDiv">   粉丝 <span style="color: #00bbd4" onclick="fans()">' + ret.fansnum + '</span></span>'
                    + '</div>'
                    + gxqmHtml + btnhtml;

                $api.html($api.dom('.textContainer'), html);


            } else {
                var headerHtml = ' <a class=" aui-pull-left " onclick="api.closeWin()">' + '<span class="aui-iconfont aui-icon-left" style="color: #4bc7c7;font-size: 1rem">'
                    + '</span>' + '</a> ' + '<div class="background" >' + '<img class="bacimg"  style="inline-block" src="http://7jprpb.com1.z0.glb.clouddn.com/22.png">'
                    + '</div>';
                $api.html($api.dom('.container'), headerHtml);
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();

        }
    })
}

function openDetail(context) {
    var id = $api.attr(context, 'classid');
    api.openWin({
        name: 'win_complete_info_detail',
        url: 'win_complete_info_detail.html',
        pageParam: {classId: id, hwid: api.pageParam.hwid}
    });
}

function backgroundImgChange() {

    if (!checkPermission(['camera', 'storage'])) {
        return;
    }
    if(otheruid == $api.getStorage('uid')){

        api.actionSheet({
            buttons: ['拍照', '从相册中选择'],
        }, function (ret, err) {
            if (ret) {
                if (ret.buttonIndex == 1) {
                    api.getPicture({
                        sourceType: 'camera',
                        encodingType: 'jpg',
                        mediaValue: 'pic',
                        destinationType: 'url',
                        allowEdit: true,
                        quality: 80,
                        targetWidth: 100,
                        targetHeight: 100,
                    }, function (ret, err) {
                        if (ret.data.length > 5) {
                            qiniuUpfile(ret.data);
                        }
                    });
                } else if (ret.buttonIndex == 2) {
                    api.getPicture({
                        sourceType: 'album',
                        encodingType: 'jpg',
                        mediaValue: 'pic',
                        destinationType: 'url',
                        allowEdit: true,
                        quality: 80,
                        targetWidth: 100,
                        targetHeight: 100,
                    }, function (ret, err) {
                        if (ret.data.length > 5) {
                            qiniuUpfile(ret.data);
                        }
                    });
                }
            } else {
                alert(JSON.stringify(err));
            }
        });


    }







}


//获取背景图
function updatePortrait(data) {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.SetAuthToken($api.getStorage('token'));
    apiObj.Put(UrlRouter.GetSpacebackgroung, {
        values: {
            url:data   //获取hwid
        }
    }, function (ret, err) {



        if (ret) {
            if (ret.ret == 0) {
                 api.hideProgress();
                $api.attr($api.dom('.bacimg'), 'src', data);
            } else {
                //alert(ret.msg);
            }
        } else {

        }
    })
}

function getPortrait() {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.SetAuthToken($api.getStorage('token'));

    // alert($api.getStorage('token'));
    // alert(otheruid);

    apiObj.Get(UrlRouter.GetSpacebackgroung, {
        values: {
            uid: otheruid  //获取hwid
        }
    }, function (ret, err) {
        if (ret) {

           // alert(JSON.stringify(ret));

            if (ret.ret == 0) {
                api.hideProgress();

                if (ret.data){
                    imgData = ret.data;
                }else {
                    imgData = "http://7jprpb.com1.z0.glb.clouddn.com/22.png";
                }

                getspaceinfo();

                // $api.attr($api.dom('bacimg'), 'src', ret.data);
            } else {
                imgData = "http://7jprpb.com1.z0.glb.clouddn.com/22.png";
                getspaceinfo();
                // //alert(ret.msg);
            }
        } else {

            imgData = "http://7jprpb.com1.z0.glb.clouddn.com/22.png";
            getspaceinfo();
            //
        }
    })
}

//上传图片
function qiniuUpfile(data) {
    var obj = api.require('qiniuUpfile');
    obj.upfile({
        file: data
    }, function (ret, err) {
        if (ret.status) {
            if (ret.oper == "complete") {
                //上传成功后组装访问路径，或直接访问文档
                updatePortrait("http://vod-qiniu.12xue.com/" + ret.info.key);
//                    pImageList.push("http://obbm2oob4.bkt.clouddn.com/" + ret.info.key);

            } else if (ret.oper == "progress") {
                //上传过程中获取进度数据
            }
        }
    });
}
