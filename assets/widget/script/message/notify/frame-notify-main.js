var classid = '';
var page = 1;
var data = '';
var pullRefresh;
function init() {
    getNotifies();
    //上拉刷新
    pullRefresh = new auiPullToRefresh({
        container: document.querySelector('.aui-refresh-content'), //下拉容器
        triggerDistance: 100 //下拉高度
    }, function (ret) {
        if (ret.status == "success") {
            page = 1;
            getNotifies();
        }
    });
    //下拉到底部的监听
    api.addEventListener({
        name: 'scrolltobottom',
        extra: {
            threshold: -40            //设置距离底部多少距离时触发，默认值为0，数字类型
        }
    }, function (ret, err) {
        page++;
        getNotifies();
    });
}

//获取普通通知状态列表
function getNotifies() {
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    classid = classid == -1 ? "" : classid;
    apiObj.Get(UrlRouter.GetStuNotify, {
        values: {
            p: page
        }
    }, function (ret, err) {
        pullRefresh.cancelLoading();
        if (ret && ret.ret == 0) {
            if (ret.list != null && ret.list != '' && ret.list.length > 0) {
                data = ret.list;
                dealData();
                $api.css($api.dom('.aui-content'), 'display:block;');
                $api.css($api.dom(".no-data"), 'display:none;');
            } else {
                //无数据
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
            }
        } else {
            page--;
            var msg = '';
            if (ret) {
                msg = ret.msg;
            } else {
                msg = err.msg;
            }
            api.toast({
                msg: msg,
                duration: 2000,
                location: 'bottom'
            });
        }
        api.hideProgress();
    });
}

function dealData() {
    //下拉刷新  清一下列表
    if (page == 1) {
        $api.html($api.dom(".ul-notify"), "");
    }

    for (var i = 0; i < data.length; i++) {
        var item = data[i];
        $api.append($api.dom(".ul-notify"), '<li><div class="time">' + item.createtime + '</div><div class="li-content"><div class="title aui-ellipsis-1"><div class="mark"></div>' + item.title + '</div><div class="content">' + item.content + '</div></div></li>');
        var li = $api.last($api.dom(".ul-notify"), '.ul-notify>li');//刚添加上的li
        var contentContainer = $api.dom(li, ".li-content");//在此基础上append模块
        var imgHeight = ($api.offset(contentContainer).w - 30) / 3;
        //图片的解析
        if (item.image_list != null && item.image_list != "") {
            var imgContainter = $api.domAll(contentContainer, ".content-img");
            //若从未添加过图片模块
            if (imgContainter.length == 0) {
                $api.append(contentContainer, '<div class="content-img"><ul class="aui-list-view aui-grid-view ul-img aui-clearfix " style="height: 120px;"></ul><div style="clear: both;"></div></div>');
                var imgList = item.image_list.split("|");
                var htmlImg = '';
                for (var j = 0; j < imgList.length; j++) {
                    htmlImg = htmlImg + '<li class="aui-list-view-cell aui-img  ">' +
                        '<img imageArr = ' + imgList + ' id = ' + j + ' class="aui-img-object" onclick="imgClick(this)" src="' + imgList[j] + '?imageMogr2/auto-orient/thumbnail/!65p" alt="" style="height: ' + imgHeight + 'px">' +
                        '</li>';
                }
                $api.html($api.dom(contentContainer, '.ul-img'), htmlImg);
            }
        }

        //音频的解析
        if (item.audio_list != null && item.audio_list != '') {
            var audioContainter = $api.domAll(contentContainer, ".content-audio");
            if (audioContainter.length == 0) {
                var audioHtml = '<div class="btn-audio aui-btn aui-btn-primary aui-btn-outlined" style=" width: 15% !important; left:2%;" tapmode onclick="palyAudio(this)" url="' + item.audio_list.url + '"> ' +
                    ' <div class="comiis_wrapad" id="slideContainer">' +
                    '<img src="../../../image/2.png" width="15px" height="21px" style="float:left;">' +
                    '</div>' +
                    '<span class="second">' + item.audio_list.duration + '"</span>' +
                    '</div>';
                $api.append(contentContainer, audioHtml);
            }
        }

        // footer的解析
        if (item.userinfo && item.userinfo != null) {
            var footerText = "来自：" + item.userinfo.xxmc + " " + item.userinfo.realname + "老师";
            $api.append(contentContainer, '<div class="content-footer aui-ellipsis-1"><div>' + footerText + '</div></div>');
        }

    }
}

//点击图片
function imgClick(context) {
    var imageScr = $api.attr(context, 'imageArr').split(",");
    var photoBrowser = api.require('photoBrowser');
    photoBrowser.open({
        images: imageScr,
        placeholderImg: 'widget://image/loading_more.gif',
        bgColor: '#000',
        activeIndex: context.id
    }, function (ret, err) {
        if (ret.eventType == 'click') {
            photoBrowser.close();
        }
    });
}

var isDownloading = false;
// 播放音频
function palyAudio(context) {
    var isPlaying = $api.attr(context, 'isPlaying');
    var url = $api.attr(context, 'url');
    if (isPlaying == "1") {
        if (isDownloading) {
            api.cancelDownload({
                url: url
            });
            return;
        } else {
            api.stopPlay();
            $(context).find('.comiis_wrapad').html('<img src="../../../image/2.png" width="15px" height="24px" style="float:left;">')
            $api.attr(context, 'isPlaying', "0");
        }
    } else {
        downloadAudio(url, context);
    }
}
// 每次都要重新下载  欠优化
function downloadAudio(url, context) {
    isDownloading = true;
    var audioName = url.substring(url.lastIndexOf("/"));
    var path = "/audio/" + audioName + ".amr";
    api.download({
        url: url,
        savePath: 'fs:/' + path,
        report: false,
        cache: true,
        allowResume: false
    }, function (ret, err) {
        if (ret && ret.state == 1) {
            // 下载成功  ret.savePath
            isDownloading = false;
            api.startPlay({
                path: api.fsDir + path
            }, function (ret, err) {
                if (ret) {
                    $api.attr(context, 'isPlaying', "0");
                    $(context).find('.comiis_wrapad').html('<img src="../../../image/2.png" width="15px" height="24px"  style="float:left;">')

                }
            });
            $api.attr(context, 'isPlaying', "1");
            $(context).find('.comiis_wrapad').html('<img src="../../../image/1-3.gif" width="15px" height="24px" style="float:left;">')

        }
    });
}
/**
 * 时间的转换  2016-02-01 14:23
 * @param time 1970  时间戳 单位 s
 */
function getTime(time) {
    //date 构造函数为毫秒
    var date = new Date(time * 1000);
    return date.getFullYear() + "-" + date.getMonth() + "-" + date.getDay() + " " + date.getHours() + ":" + date.getMinutes();
}

function showNoData() {
    $api.html($api.dom('.ul-notify'), '<div class="no-data"> <img class="img-null" src="../../../image/stuHomePad/noContent.png" style="height:auto!important;width: 30%;vertical-align: middle;position: absolute;top: 150px;left: 35%;"/> </div>');
    // $api.css($api.dom('.img-null'), 'top:' + api.frameHeight / 3 + 'px');
}