/**
 * Created by sunjing on 2016/8/4.
 */
/**
 * Created by sunjing on 2016/8/4.
 */
var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));
function GetUserstore() {//获取用户的学币/积分/威望/经验详情
    apiObj.Get(UrlRouter.GetUserstore, "", function (ret, err) {
        if (ret) {
            var gold = ret.gold;
            var point = ret.point;
            var prestige = ret.prestige;
            var experience = ret.experience;
            //   alert( gold)
            $api.setStorage('point', point);
            $api.setStorage('gold', gold);
            $api.setStorage('prestige', prestige);
            $api.setStorage('experience', experience);
            
            if ($api.getStorage('prestige') != 'undefined') {
                $api.html($api.dom('.czz'), $api.getStorage('prestige'));
            }

            if ($api.getStorage('point') != 'undefined') {
                $api.html($api.dom('.jf'), $api.getStorage('point'));
            }

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
