/**
 * Created by zhuzhen on 2016/5/30
 */
var apiObj = new GridOpenApi(UrlDomain,source,version);
apiObj.SetAuthToken($api.getStorage('token'));
function getQuestionDetail(){
    apiObj.Get(UrlRouter.GetFaqInfo,{values:{id:api.pageParam.id}},function(ret,err){
        //alert(api.pageParam.id);
        if(ret){
            if(ret.ret == 0){
                $api.html($api.dom('#title'), ret.title);
                $api.html($api.dom('#content'), ret.content);
            }else{
                api.toast({
                    msg:ret.msg,
                duration:2000,
                locatio:'bottom'
                });
            }
        }else{
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
    })
}