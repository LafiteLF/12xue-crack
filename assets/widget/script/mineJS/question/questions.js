/**
 * Create by zhuzhen 2016/5/27
 * */
var apiObj = new GridOpenApi(UrlDomain,source,version);
function initQuestionsList(){
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.Get(UrlRouter.GetFaqLists, {
        values: {
            type: api.pageParam.type
        }
    },function (ret, err){
        if(ret){
            if(ret.ret == 0){
                // var header = $api.dom('header');
                // var headerH = $api.offset(header).h;
                // var frameH = padWinHeight - headerH;
                api.hideProgress();
                // var data = [{id : 'yhxy',title:'用户协议'},{id : 'yszc',title:'隐私政策'}];
                var data=[];
                if (ret.data.length>0){
                    var list = data.concat(ret.data);
                for(var i = 1;i<=list.length;i++){
                    $api.append($api.dom('.aui-list-view'),'<li id="'+list[i-1].id+'" class="aui-list-view-cell aui-list-item-arrow" onclick="openInfo(this)">'+ i+'.'+list[i-1].title+' </li>');
                }
                }else {
                    api.openFrame({
                        name: 'myclass_frame',
                        url: '../../../html/mine/question/question_null.html',
                        rect: {
                            x: 0,
                            y: 40,
                            w: 'auto',
                            h: 'auto'
                        },
                        pageParam: {name: ret.data},
                        bounce:true
                    });
                }
            }else{
                api.hideProgress();
                api.toast({
                    msg:ret.msg,
                    duration:2000,
                    location:'bottom'
                });
            }
        }else{
            api.hideProgress();
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }

    })
}

function openInfo(context) {
    var index = $api.attr(context, 'id');
    if(index =='yhxy'){
        api.openWin({
            name: 'win-user-agreement',
            url: '../../../html/win-user-agreement.html',
            pageParam: {}
        });
    }else if(index == 'yszc'){
        api.openWin({
            name: 'win-privacy-policise',
            url: '../../../html/win-privacy-policise.html',
            pageParam: {}
        });
    }else {
        api.openWin({
            name: 'questionDetails',
            url: 'questionDetails.html',
            pageParam: {id: $api.attr(context, 'id')}
        });
    }
}
//function smsOnclick(context) {
//    //alert('11111');
//    api.sms({
//        numbers: ['18553503122']
//    }, function (ret, err) {
//
//    });
//}