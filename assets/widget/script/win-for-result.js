/**
 * Created by wjy on 2016/8/29.
 */

function detailForResult(context) {
    api.addEventListener({
        name: 'itemRefresh'
    }, function (ret, err) {
        if (ret.value.commentCount != null) {
            $api.text($api.dom($api.closest(context, '.aui-card-list'), '.forward'), ret.value.forwardCount);
            $api.text($api.dom($api.closest(context, '.aui-card-list'), '.appreciate'), ret.value.praiseCount);
            $api.text($api.dom($api.closest(context, '.aui-card-list'), '.comment'), ret.value.commentCount);
            if (ret.value.isThumb) {
                if (!$api.hasCls($api.dom($api.closest(context, '.aui-card-list'), '.btn-appreciate'), 'thumb-red')) {
                    $api.addCls($api.dom($api.closest(context, '.aui-card-list'), '.btn-appreciate'), 'thumb-red');
                }
            } else {
                if ($api.hasCls($api.dom($api.closest(context, '.aui-card-list'), '.btn-appreciate'), 'thumb-red')) {
                    $api.removeCls($api.dom($api.closest(context, '.aui-card-list'), '.btn-appreciate'), 'thumb-red');
                }
            }
        }
        api.removeEventListener({
            name: 'itemRefresh'
        });
    });
}
