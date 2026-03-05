/**
 * Created by sunjing on 2016/8/9.
 */

var apiObj = new GridOpenApi(UrlDomain, source, version);
apiObj.SetAuthToken($api.getStorage('token'));

function PostUserregister() {//用户注册

    apiObj.Post(UrlRouter.PostUserregister, {
        values: {
            identitytype: 3,
            password: $api.getStorage('password'),
            realname: $api.getStorage('realname'),
            sex: $api.getStorage('sex'),
            username: $api.getStorage('username')
        }
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                var user = $api.getStorage('username');
                var dlpassword = $api.getStorage('password');
                api.toast({
                    msg: '注册成功',
                    duration: 2000,
                    location: 'bottom'
                });
                PostUserlogin(user, dlpassword,'register');//用户登录
            } else {
                var input = $api.dom('#username');
                input.blur();
                var password = $api.dom('#password');
                password.blur();
                var realname = $api.dom('#realname');
                realname.blur();
                api.toast(
                    {
                        msg: ret.msg,
                        duration: 2000,
                        location: 'bottom'
                    }
                )
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
