var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));

var isBasicXT;//是否是基础习题 因为扩展习题不计入答题进度
var stepStr;//做到了第几步
// var currentIndex;

var zyyqcontent = '';//作业要求
var basicArr = [];//基础习题的所有数组 包括 习题和素材
var basicExArr = [];//基础习题的数组
var basicMateriallist = [];//资源素材数组
var expandArr = [];//扩展习题的数组

var ex_num = '';//习题的数目
var position = 0;//习题的索引
var myScroll;
var data;//所有习题的数组
var homeworkName;
var frameAry = [];//
var hwid;
var classid;
var yxztStr;//预习状态
var xtIndex;//习题题号
var isCanNext;//是否可以跳到下一题

var hwTime = "";//设置下一步的点击间隔时间
var hwTime_up = "";//设置上一步的点击时间间隔
var thisTime;
var thatTime;
var homeworkData;//作业的所有内容
var hasZyyq = false;//是否含有作业要求
var autoToTongji=false;//是否通过做完最后一题自动跳转到了统计界面--liuxiaochen
var contentArr = [];
var finishtime;//完成时间
var dansz;//作业设置 为1就是在截止时间过后显示学生的答题结果 为0 为学生做完作业显示答题结果
var hwnull = false; //空作业  点击下一个直接进入统计界面 标记此作业已经完成

//v1提交答案新增字段
var xkid;
var njid;
var bbid;
var sxcid;
var dyid;
var jieid;
var schoolid;

var is_attach;//是否需要提交附件

function getHomeworkDetailData(pageParams, homework, zyyq, index) {

    hwid = pageParams.id;
    classid = pageParams.bjid;
    $api.setStorage('hwClassid', classid);
    $api.setStorage('hwidLzxt', hwid);
    var identitytype = '3';
    var uid = $api.getStorage('uid');
    homeworkName = api.pageParam.homeworkName;//作业名称
    homeworkData = homework;
    hasZyyq = zyyq;

    if (homeworkData != undefined){//这个是从作业详情列表里进来的
        if (hasZyyq) {
            stepStr = 0;
        } else {
            stepStr = index; //第几个题
        }
        xkid = api.pageParam.xkid;
        njid = api.pageParam.njid;
        bbid = api.pageParam.bbid;
        sxcid = api.pageParam.sxcid;
        dyid = api.pageParam.dyid;
        jieid = api.pageParam.jieid;

        schoolid  = api.pageParam.schoolid;

        finishtime = homeworkData.finish_time;
        dansz = homeworkData.dansz;
        maxStep = homeworkData.step;
        yxztStr = homeworkData.yxzt;
        is_attach = homeworkData.is_attach;
        basicExArr = homeworkData.materialdxa;//学习单
        basicMateriallist = homeworkData.materiallist;//作业
        expandArr = homeworkData.materialtzxt;//扩展
        if (homeworkData.content&&homeworkData.content.length != 0) {
            zyyqcontent = homeworkData.content;
            content = homeworkData.content;
            maxStep = maxStep * 1 + 1;
            $api.setStorage('content', zyyqcontent);
            contentArr[0] = {
                content: content
            };
            basicArr = contentArr.concat(basicArr);

        } else {
            $api.setStorage('content', '');
        }
        ////判断有无习题
        $api.setStorage('maxIndex', stepStr);//每次进来设为0
        basicArr = basicExArr.concat(basicMateriallist);
        basicArr = contentArr.concat(basicArr);
        if (basicArr.length == 0 && expandArr.length == 0) {
            hwnull = true;
            var header = document.querySelector('header');
            var headerH = $api.offset(header).h;
            api.openFrame({
                name: 'frame-homeworkDetail-null-pad',
                url: 'frame-homeworkDetail-null-pad.html',
                rect: {
                    x: 0,
                    y: headerH,
                    w: api.winWidth,
                    h: padWinHeight - headerH - 50
                },
                pageParam: {name: 'pageparam'},
                bounces: false
            });
            putHomeworkprepare();
        } else if (basicArr.length == 0 && expandArr.length != 0) {//只有扩展 没有基础
            isBasicXT = false;
            data = expandArr;
            //初始化习题上方的题号
            var num = data.length;
            for (var i = 0; i < num; i++) {
                $api.append($api.dom('.scroll'), '<div class="item" onclick="itemClick(this);">' + (i + 1) + '</div>');
            }
            putHomeworkprepare();
            //只有扩展作业的话 作业状态为已完成
            initZXTItemView()
        } else {//item赋值 打开详情frame 扩展习题

            isBasicXT = true;
            data = basicArr;
            //初始化习题上方的题号
            var num = data.length;
            var itemWidth = num * 45 + 190;
            // $api.css($api.dom('.scroll'), 'height:' + itemWidth + 'px;');
            for (var i = 0; i < num; i++) {
                $api.append($api.dom('.scroll'), '<div class="item" onclick="itemClick(this);">' + (i + 1) + '</div>');
            }
            if (zyyqcontent != '' && stepStr != 0 && yxztStr == 1) {
                stepStr = stepStr * 1;
            }
            initItemView()
        }
    } else {

        api.showProgress({
            title: '加载中',
            text: '请稍后...',
            modal: false
        });
        apiObj.Get(UrlRouter.GetStudenthomeworkUrl,{
            values:{
                hwid:hwid,
                classid:classid,
                identitytype:identitytype,
                uid:uid
            }
        },function (ret,err) {
            api.hideProgress();
            if (ret){
                if (ret.ret==0){
                    homeworkData = ret;

                    xkid = ret.xkid;
                    njid = ret.njid;
                    bbid = ret.bbid;
                    sxcid = ret.sxcid;
                    dyid = ret.dyid;
                    jieid = ret.jieid;
                    schoolid = ret.schoolid;

                    is_attach = ret.is_attach;

                    vm.isEvaluate = ret.remark;
                    vm.isUpload = ret.is_attach;
                    vm.pingyu = ret.pingyu;
                    $api.setStorage('materiallist',ret.materiallist);
                    $api.setStorage('materialtzxt',ret.materialtzxt);
                    if(ret.is_score==1){//是分值的题，统计界面显示分值
                        $api.setStorage('is_score',1);
                    }else {
                        $api.setStorage('is_score',0);
                    }
                    // alert(JSON.stringify(ret.is_score));
                    stepStr=ret.step;
                    maxStep = stepStr;
                    yxztStr = ret.yxzt;
                    is_attach = ret.is_attach;
                    dansz = ret.dansz;
                    finishtime = ret.finish_time;
                    submitStr = ret.submit;
                    if (yxztStr == 2) {
                        stepStr = 0;
                        xtIndex = 0;
                    }
                    basicExArr = ret.materialdxa;//学习单
                    basicMateriallist = ret.materiallist;//作业
                    expandArr = ret.materialtzxt;//扩展
                    if (ret.content&&ret.content.length != 0) {
                        zyyqcontent = ret.content;
                        content = ret.content;
                        maxStep = maxStep*1+1;
                        $api.setStorage('content', zyyqcontent);
                        contentArr[0] = {
                            content: content
                        };
                        // basicArr = basicArr;
                    } else {
                        $api.setStorage('content', '');
                    }
                    //判断有无习题
                    $api.setStorage('maxIndex', stepStr);//每次进来设为0
                    basicArr = basicExArr.concat(basicMateriallist);
                    basicArr = contentArr.concat(basicArr);
                    if (basicArr.length == 0 && expandArr.length == 0) {
                        hwnull = true;
                        vm.hasHomework = true;
                        var header = document.querySelector('header');
                        var headerH = $api.offset(header).h;
                        api.openFrame({
                            name: 'frame-homeworkDetail-null-pad',
                            url: 'frame-homeworkDetail-null-pad.html',
                            rect: {
                                x: 0,
                                y: headerH,
                                w: api.winWidth,
                                h: padWinHeight - headerH
                            },
                            pageParam: {name: 'pageparam'},
                            bounces: false
                        });
                        putHomeworkprepare();
                    } else if (basicArr.length == 0 && expandArr.length != 0) {//只有扩展 没有基础
                        isBasicXT = false;
                        data = expandArr;
                        //初始化习题上方的题号
                        var num = data.length;
                        var itemWidth = num * 45 + 190;
                        // $api.css($api.dom('.scroll'), 'height:' + itemWidth + 'px;');
                        for (var i = 0; i < num; i++) {
                            $api.append($api.dom('.scroll'), '<div class="item" onclick="itemClick(this);">' + (i + 1) + '</div>');
                        }
                        putHomeworkprepare();
                        //只有扩展作业的话 作业状态为已完成
                        initZXTItemView()
                    } else {//item赋值 打开详情frame 扩展习题
                        isBasicXT = true;
                        data = basicArr;
                        //初始化习题上方的题号
                        var num = data.length;
                        var itemWidth = num * 45 + 190;
                        // $api.css($api.dom('.scroll'), 'height:' + itemWidth + 'px;');
                        for (var i = 0; i < num; i++) {
                            $api.append($api.dom('.scroll'), '<div class="item" onclick="itemClick(this);">' + (i + 1) + '</div>');
                        }
                        if (zyyqcontent != '' && stepStr != 0 && yxztStr == 1) {
                            stepStr = stepStr * 1+1;
                        }
                        initItemView()
                    }
                }else {
                    api.toast({
                        msg: ret.msg,
                        duration: 2000,
                        location: 'bottom'
                    });
                }
            }else {
                api.toast({
                    msg: err.msg,
                    duration: 2000,
                    location: 'bottom'
                });
            }
        });
    }

    $api.setStorage('materiallist', basicArr.length);
}
function putHomeworkprepare() {
    apiObj.Put(UrlRouter.PutHomeworkprepareUrl, {
        values: {
            hwid: hwid,
            classid: classid,
            yxzt: '2',
            step: '1',
            uid: $api.getStorage('uid'),
            schoolid:schoolid
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {

            } else {
                //alert(ret.msg);
            }
        } else {

        }
    })
}
function winpageUpOnclick() {

    var time1 = new Date().getTime();
    if (hwTime_up != "") {
        thatTime = new Date().getTime();

        if (thatTime - hwTime_up < 1000) {
            return;
        }
    }
    hwTime_up = time1;

    if (stepStr == 0) {
        api.toast({
            msg: '已经是第一个了',
            duration: 2000,
            location: 'bottom'
        });
        return;
    } else {
        stepStr--;
        initItemView();
    }
}
function winnextOnclick(next) {

    if (hwnull) {
        pushtatisticsFrame();  //接口待调整
    } else {
        //名为frmName的frame，并在该frame中执行jsfun脚本
        var time1 = new Date().getTime();
        if (hwTime != "") {
            thisTime = new Date().getTime();

            if (thisTime - hwTime < 1000) {
                return;
            }
        }
        hwTime = time1;
        var jsfun3 = 'nextOnclick()';
        api.execScript({
            frameName: 'frame',
            script: jsfun3
        });
    }
}
function nextOnclick(next) {
    if (isBasicXT) {
        if (next) {
            if (zyyqcontent != '') {

            }
            stepStr++;
            if (maxStep < stepStr) {
                maxStep = stepStr;
            }
            initItemView();

        } else {
            api.toast({
                msg: '请先选择答案',
                duration: 2000,
                location: 'bottom'
            });
        }
    } else {
        stepStr++;
        initItemView();
    }

}
function iscrollOnclicked(data, array) {
    var item = data;
    var type = '';//右上角显示的提示信息
    var title = "";
    var tagIndex;
    var tagTxt;
    if (item.zyqf == 1) {
        //素材
        //截取title中的course类型 显示
        title = item.zymc;
        tagIndex = title.lastIndexOf('.');
        tagTxt = title.substr(tagIndex + 1);
        //素材，发送事件，在frame里面再判断是否横竖屏切换
        api.sendEvent({
            name: 'isScreen',
            extra: {
                frameName: 'frame' //讲当前的frameName也发出去，在frame里面进行比较
            }
        });
    } else {
        if (stepStr == 0 && zyyqcontent != '') {
            tagTxt = '要求';
        } else {
            var txStr = item.tx;
            if (txStr == 'wendt') {
                tagTxt = '问答';
            }
            if (txStr == 'pdt') {
                tagTxt = '判断';
            }
            if (txStr == 'danxt') {
                tagTxt = '单选';
            }
            if (txStr == 'duoxt') {
                tagTxt = '多选';
            }
            if (txStr == 'tkt') {
                tagTxt = '填空';
            }
        }
    }
    $api.html($api.dom('.type'), (parseInt(stepStr) + 1) + '\/' + array.length);
    for (var i = 0; i < $api.domAll('.item').length; i++) {
        $api.css($api.domAll('.item')[i], 'color:#4bc7c7;background-color: #fff;width:1.5rem;height:1.5rem;line-height: 1.5rem; margin-left: 1rem;font-size: 0.6rem;');
    }
    // if (array.length >= 100) {
    //     $api.css($api.dom(".type"), "font-size:0.5rem;padding-top:0.5rem");
    // }
    $api.css($api.domAll('.item')[stepStr], 'color:#fff;background-color: #4bc7c7; width:1.8rem;height:1.8rem;line-height: 1.8rem; margin-left: 0.85rem;font-size: 0.75rem;');
    //设置上面index跟随下面滑动
    if ($api.html($api.domAll('.item')[stepStr]) > 5) {
        $api.dom('.scroll').scrollTop = ($api.html($api.domAll('.item')[stepStr]) - 4) * 56;
    } else {
        $api.dom('.scroll').scrollTop = 0;
    }
    api.sendEvent({
        name: 'stopVideo'
    });
}
//跳转到统计页面
function pushtatisticsFrame() {
    var step = stepStr;
    if (zyyqcontent != '') {
        step = stepStr - 1;
    }
    if(typeof(data) == undefined||typeof(data) == 'undefined'){
        api.toast({
            msg: '暂无作业内容',
            duration: 2000,
            location: 'bottom'
        });
        return;
    }
    apiObj.Put(UrlRouter.PutHomeworkprepareUrl, {
        values: {
            hwid: hwid,
            classid: classid,
            yxzt: '2',
            step: step*1 + 1,
            uid: $api.getStorage('uid'),
            schoolid:schoolid
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                var points;
                var prestige;
                if((step*1 + 1) == 0){
                    if(typeof(ret.data)== undefined||typeof(ret.data)== 'undefined'){
                        points =ret.points;
                        prestige = ret.prestiges;
                    }else {
                        points =ret.data.points;
                        prestige = ret.data.prestiges;
                    }


                }else {
                    points = ret.points;
                    prestige = ret.prestiges;
                }

                var materialArr = homeworkData.materialdxa.concat(homeworkData.materiallist);
                var jcLastIndex=materialArr.length;//基础题最后一个索引
                jcLastIndex=parseInt(jcLastIndex)-1;
                var jcLastState;
                // alert(JSON.stringify(materialArr));
                if(data.length == 1 && contentArr.length == 1){
                    jcLastState = '1';
                }else {
                    jcLastState=materialArr[jcLastIndex].is_true;//基础题最后一个是否完成
                }

                api.openWin({
                    name: 'win-statistical-results-pad',
                    url: 'win-statistical-results-pad.html',
                    pageParam: {
                        hwid: hwid,
                        classid: classid,
                        points: points,
                        prestige: prestige,
                        jcLastState:jcLastState,
                        autoToTongji:autoToTongji,
                        dansz: dansz,
                        finishtime:finishtime,
                        detailData:api.pageParam.detailData,
                        is_attach:is_attach,
                        remark:vm.isEvaluate,
                        pingyu:vm.pingyu,

                        xkid:xkid,
                        njid:njid,
                        bbid:bbid,
                        sxcid:sxcid,
                        dyid:dyid,
                        jieid:jieid,
                        schoolid:schoolid
                    }
                });
            } else {
                //alert(ret.msg);
            }
        } else {

        }
    })
}
function initItemView() {
    var array = data;
    var header = document.querySelector('header');
    var leftW = $api.offset($api.dom('.content')).w;
    var rightW = $api.offset($api.dom('.right-btn')).w;
    var headerH = $api.offset(header).h;
    var detailDic = array[stepStr];
    iscrollOnclicked(detailDic, array);
    var zyqfStr = detailDic.zyqf;
    var frameUrl;
    if (zyyqcontent != '' && stepStr == 0) {
        frameUrl = 'frame-content-pad.html';
    } else {
        if (zyqfStr == 2) {
            var txStr = detailDic.tx;
            if (txStr == 'danxt') {
                frameUrl = 'frame-danxuan-pad.html';
            }
            if (txStr == 'duoxt') {
                frameUrl = 'frame-duoxuan-pad.html';
            }
            if (txStr == 'wendt') {
                frameUrl = 'frame-wenda-pad.html';
            }
            if (txStr == 'pdt') {
                frameUrl = 'frame-panduan-pad.html';
            }
            if (txStr == 'tkt') {
                frameUrl = 'frame-tkt-pad.html';
            }
        } else if (zyqfStr == 1) {
            frameUrl = 'frame-doc-pad.html';
        }
    }

    api.openFrame({
        name: 'frame',
        url: frameUrl,
        rect: {
            x: leftW,
            y: headerH,
            w: api.winWidth-leftW-leftW,
            h: padWinHeight - headerH

        },
        pageParam: {
            detailData: detailDic,
            index: parseInt(stepStr) + 1,
            isBasicXT: isBasicXT,
            yxztStr: yxztStr,
            mysteped: stepStr,
            sum: array.length,
            headerH: $api.offset($api.dom("header")).h,
            scrollH: $api.offset($api.dom('.scroll')).h,
            footerH: 0,
            submit:submitStr,
            dansz: dansz,
            finishtime:finishtime,

            xkid:xkid,
            njid:njid,
            bbid:bbid,
            sxcid:sxcid,
            dyid:dyid,
            jieid:jieid,
            schoolid:schoolid
        },
        bounces: false,
        reload: true,
        scrollEnabled: true
    });

}
function itemClick(context) {
    //如果点击的题号大于当前显示的题号
    if ($api.text(context) - 1 > maxStep && yxztStr != 2 && isBasicXT == true) {
        api.toast({
            msg: '请按顺序完成作业',
            duration: 2000,
            location: 'bottom'
        });
        return;
    }
    for (var i = 0; i < $api.domAll('.item').length; i++) {
        $api.css($api.domAll('.item')[i], 'color:#4bc7c7;background-color: #fff;width:1.5rem;height:1.5rem;line-height: 1.5rem; margin-left: 1rem;font-size: 0.6rem;');
    }
    $api.css(context, 'color:#fff;background-color: #4bc7c7; width:1.8rem;height:1.8rem;line-height: 1.8rem; margin-left: 0.85rem;font-size: 0.75rem;');
    //设置上面index跟随下面滑动
    if ($api.html(context) > 5) {
        $api.dom('.scroll').scrollTop = ($api.html(context) - 4) * 56;
    } else {
        $api.dom('.scroll').scrollTop = 0;
    }
    stepStr = $api.text(context) - 1;
    initItemView();
    api.sendEvent({
        name: 'stopVideo'
    });
}

function initZXTItemView() {
    var data = $api.getStorage('materialtzxt');
    var array = data;
    var header = document.querySelector('header');
    var leftW = $api.offset($api.dom('.content')).w;
    var rightW = $api.offset($api.dom('.right-btn')).w;
    var headerH = $api.offset(header).h;
    if (!isBasicXT) {
        stepStr = 0;
    }
    var detailDic = array[stepStr];
    iscrollOnclicked(detailDic, array);
    var zyqfStr = detailDic.zyqf;
    var frameUrl;

    if (zyyqcontent != '' && stepStr == 0) {
        frameUrl = 'zuoyeyaoqiuDetail_frame.html';
    } else {
        if (zyqfStr == 2) {
            var txStr = detailDic.tx;
            if (txStr == 'danxt') {
                frameUrl = 'frame-danxuan-pad.html';
            }
            if (txStr == 'duoxt') {
                frameUrl = 'frame-duoxuan-pad.html';
            }
            if (txStr == 'wendt') {
                frameUrl = 'frame-wenda-pad.html';
            }
            if (txStr == 'pdt') {
                frameUrl = 'frame-panduan-pad.html';
            }
            if (txStr == 'tkt') {
                frameUrl = 'frame-tkt-pad.html';
            }
        } else if (zyqfStr == 1) {
            frameUrl = 'frame-doc-pad.html';
        }
    }


    api.openFrame({
        name: 'frame',
        url: frameUrl,
        rect: {
            x: leftW,
            y: headerH,
            w: api.winWidth-leftW-leftW,
            h: padWinHeight - headerH
        },
        pageParam: {
            detailData: detailDic,
            index: parseInt(stepStr) + 1,
            isBasicXT: isBasicXT,
            yxztStr: yxztStr,
            mysteped: stepStr,
            sum: array.length,
            headerH: $api.offset($api.dom("header")).h,
            scrollH: $api.offset($api.dom('.scroll')).h,
            footerH: 0,
            dansz: dansz,
            finishtime:finishtime,

            xkid:xkid,
            njid:njid,
            bbid:bbid,
            sxcid:sxcid,
            dyid:dyid,
            jieid:jieid,
            schoolid:schoolid
        },
        bounces: false,
        reload: true
    });
}
//跳到统计页面后执行
function openFrameGroup() {
    var header = document.querySelector('header');
    var headerH = $api.offset(header).h;
    api.openFrameGroup({
        name: 'homeworkListGroup',
        scrollEnabled: false,
        rect: {
            x: 0,
            y: headerH + 50,
            w: 'auto',
            h: padWinHeight - headerH - 50
        },
        index: data.length - 1,
        preload: 0,
        frames: frameAry,
        pageParam: {
            headerH: headerH,
            frameH: padWinHeight - headerH - 50
        },
    }, function (ret, err) {
        if (ret.index > data.length - 1) {
            return;
        }
        var item = data[ret.index];

        var type = '';//右上角显示的提示信息
        var title = "";
        var tagIndex;
        var tagTxt;
        if (item.zyqf == 1) {
            //素材
            //截取title中的course类型 显示
            title = item.zymc;
            tagIndex = title.lastIndexOf('.');
            tagTxt = title.substr(tagIndex + 1);


        } else {

            //非素材，强制竖屏
            if(api.systemType == 'ios'){
                api.setScreenOrientation({
                    orientation: 'landscape_left'
                });
            }else {
                api.setScreenOrientation({
                    orientation: 'landscape_left'
                });
            }
            if (ret.index == 0 && zyyqcontent != '') {
                tagTxt = '要求';
            } else {
                var txStr = item.tx;
                if (txStr == 'wendt') {
                    tagTxt = '问答';
                }
                if (txStr == 'pdt') {
                    tagTxt = '判断';
                }
                if (txStr == 'danxt') {
                    tagTxt = '单选';
                }
                if (txStr == 'duoxt') {
                    tagTxt = '多选';
                }
                if (txStr == 'tkt') {
                    tagTxt = '填空';
                }
            }
        }
        $api.html($api.dom('.type'), (ret.index + 1) + '\/' + data.length);
        for (var i = 0; i < $api.domAll('.item').length; i++) {
            $api.css($api.domAll('.item')[i], 'color:#4bc7c7;background-color: #fff;');
        }

        $api.css($api.domAll('.item')[ret.index], 'color:#fff;background-color: #4bc7c7;');
        //设置上面index跟随下面滑动
        if ($api.html($api.domAll('.item')[ret.index]) > 5) {
            $api.dom('.content').scrollLeft = ($api.html($api.domAll('.item')[ret.index]) - 4) * 56;
        } else {
            $api.dom('.content').scrollLeft = 0;
        }
        api.sendEvent({
            name: 'stopVideo'
        });
    });
}
function opentiwenFrame(e) {

    api.sendEvent({
        name: 'stopVideo'
    });

    window.event ? window.event.cancelBubble = true : e.stopPropagation();

    api.openWin({
        name: 'win-tiwen-pad',
        url: 'win-tiwen-pad.html',
        pageParam: {classid: classid, zyid: hwid},
        slidBackEnabled:false
    });
}
function openEvaluateFrame(e) {
    api.sendEvent({
        name: 'stopVideo'
    });
    window.event ? window.event.cancelBubble = true : e.stopPropagation();
    api.openWin({
        name: 'win-evaluate-pad',
        url: 'win-evaluate-pad.html',
        pageParam: {remark: vm.isEvaluate, content: vm.pingyu},
    });
}
function gengduo() {
    api.sendEvent({
        name: 'stopVideo'
    });
    window.event ? window.event.cancelBubble = true : e.stopPropagation();
    var header = document.querySelector('header');
    var headerH = $api.offset(header).h;
    api.openFrame({
        name: 'moreAction_frame',
        url: 'moreAction_frame.html',
        rect: {
            x: 0,
            y: headerH,
            w: 'auto',
            h: padWinHeight - headerH + 20
        },
        pageParam: {classid: classid, zyid: hwid, is_attach: is_attach},
        bounces: false
    });
}
