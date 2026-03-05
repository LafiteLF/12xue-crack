/**
 * Created by zhuzhen on 2018/9/6.
 */

/**主题颜色**/
var THEMECOLOR = '#4bc7c7';

function windowError() {
    window.onerror = function (msg, file, number) {
        api.ajax({
            url: errorEmail,
            method: 'post',
            timeout: 30,
            dataType: 'json',
            returnAll: false,
            data: {
                values: {
                    msg: msg,
                    file: file,
                    number: number,
                    version: api.appVersion,
                    app: '12xue OS',
                    system: api.systemType,
                    system_version: api.systemVersion,
                    uid:$api.getStorage('uid')
                },
            }
        }, function (ret, err) {

        });
    }
}

/**fastclick消除点击延迟**/
if ('addEventListener' in document) {
    document.addEventListener('DOMContentLoaded', function () {
        FastClick.attach(document.body);
    }, false);
}

/**显示加载框**/
function _showPro(title, text) {
    api.showProgress({
        style: 'default',
        animationType: 'fade',
        title: title ? title : '加载中',
        text: text ? text : '请稍后...',
        modal: true
    });
}

/**隐藏加载框**/
function _hidePro() {
    api.hideProgress();
}

/**toast**/
function _toast(text, time, location) {
    api.toast({
        msg: text,
        duration: time ? time : '2000',
        location: location ? location : 'middle'
    });
}
/**获取当前时间戳 秒**/
function getCurrentTimestamp() {
    return Math.round(new Date() / 1000)
}