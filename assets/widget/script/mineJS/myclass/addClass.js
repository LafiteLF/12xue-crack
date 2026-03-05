/**
 * Created by liuxiaochen on 2016/6/1.
 */
var apiobj=new GridOpenApi(UrlDomain,source,version);
//通过代码加入班级
function joinClass() {
    var input = $api.dom('#classCode');
    input.blur();
    var classCode= $api.val($api.byId('classCode'));
    var cd=classCode.replace(/ /g,'');//过滤空格
    if (cd==''){
        api.toast({
            msg:"班级代码不能为空",
            duration:2000,
            loaction:"bottom"
        
        });
    } else {
        api.showProgress({
            title: '加载中',
            text: '请稍后...',
            modal: false
        });
        apiobj.Post(UrlRouter.JoinClassByCode,{
            values:{
                uid:$api.getStorage('uid'),
                code:cd
            }

        },function (ret,err) {
            if (ret){
                api.hideProgress();

                if (ret.ret == 0) {
                    //从注册来
                    if(api.pageParam.road == 'register'){
                        $api.val($api.byId('classCode'), '');
                        api.openWin({
                            name: 'win-stu-main',
                            url: '../../../html/win-stu-main.html'
                        });
                    } else {
                        api.toast({
                            msg: '加入成功',
                            duration: 2000,
                            location: 'bottom'
                        });

                        api.sendEvent({
                            name: 'refreshMyClass'
                        });

                        api.closeToWin({
                            name: 'myclass_win'
                        });
                    }
                } else {
                    api.hideProgress();
                    api.toast({
                        msg:ret.msg,
                        duration:2000,
                        location:'bottom'

                    });
                }
            }else {
                api.hideProgress();
                api.toast({
                    msg:err.msg,
                    duration:2000,
                    location:'bottom'

                });
            }
            
        });
    }
}
