/**
 * Created by liuxiaochen on 2016/5/31.
 */
var apiObj=new GridOpenApi(UrlRouter,source,version);
apiObj.SetAuthToken($api.getStorage('token'));
 function settingQuestion() {

     api.openWin({
         name: 'setProtect_win',
         url: 'setProtect_win.html',
         pageParam: {name: 'pageparamname'}
     });
 }

