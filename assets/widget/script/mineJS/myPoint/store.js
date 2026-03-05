/**
 * Created by sunjing on 2016/8/4.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));
function GetUserstore() {//获取用户的学币/积分/威望/经验详情
    apiObj.Get(UrlRouter.GetUserstore, "", function (ret, err) {
        if (ret.ret == 0) {
            //alert(222);
            $api.setStorage('point', ret.point);
            $api.setStorage('prestige', ret.prestige);
            $api.setStorage('experience', ret.experience);
            $api.html($api.dom('.jf'), ret.point);
            $api.html($api.dom('.czz'), ret.prestige);

        } else {
            api.toast(
                {
                    msg: err.msg,
                    duration: 2000,
                    location: 'bottom'
                }
            )
        }
    })

}
