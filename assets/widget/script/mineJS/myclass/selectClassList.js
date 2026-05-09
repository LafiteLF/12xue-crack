var apiObj = new GridOpenApi(UrlDomain,source,version);
apiObj.SetAuthToken($api.getStorage('token'));
var classArr = [];//行政班
var xqClassArr=[];//兴趣班
var concatClass=[];//两个数组合并
function loadSelectClassListData(){
    var xdStr = api.pageParam.xd;
    var njmcStr = api.pageParam.njmc;
    var schoolidStr = api.pageParam.schoolid;
    api.showProgress({
        title: '加载中',
        text: '请稍后...',
        modal: false
    });
    apiObj.Get(UrlRouter.GetClassListByCodeUrl, {
        values: {
            schoolid:schoolidStr,
            njmc:njmcStr,
            xd:xdStr
        }
    },function(ret,err){
            if(ret){
                if(ret.ret==0){
                    classArr = ret.data.class;
                    xqClassArr=ret.data.xqclass;
                    var allclass=concatClass.concat(xqClassArr,classArr);
                    $api.setStorage('selectClass', allclass);
                    //alert(JSON.stringify($api.getStorage('selectClass')));
                    for(var i = 0;i<allclass.length;i++) {

                        $api.append($api.dom('.aui-content'), '<div class="aui-input-row"><label id="xzlabel" class="aui-input-addon aui-ellipsis-1">'+allclass[i].classname+'</label>' +
                            '<input type="checkbox" class="myCheckbox aui-pull-right aui-checkbox aui-checkbox-info" value="'+allclass[i].code+'"/></div>');
                    }
                    api.hideProgress();

                }else{
                    api.hideProgress();
                    //alert(ret.msg);
                }
            }else{
                api.hideProgress();
                api.toast({
                    msg:err,
                    duration:2000,
                    location:'bottom'
                });
            }
    });
}
function selectMyClass(){
    //在当前window中找到
    //名为frmName的frame，并在该frame中执行jsfun脚本
    var jsfun3 = 'selectMyclassData();';
    api.execScript({
        frameName: 'selectClass_frame',
        script: jsfun3
    });
}