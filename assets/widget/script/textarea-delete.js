/**
 * Created by wjy on 2016/8/26.
 */
/**
 * 初始化textarea-delete
 */
function initTextarea() {
    var getCursortPosition = function (ctrl) {
        var CaretPos = 0;
        CaretPos = ctrl.selectionStart;
        return (CaretPos);
    };

    var selectSomeText = function (element, begin, end) {
        if (element.setSelectionRange) {
            element.setSelectionRange(begin, end);
        }
        else if (element.createTextRange) {
            var range = element.createTextRange();
            range.moveStart("character", begin);
            range.moveEnd("character", end);
            range.select();
        }
    };

    var delWholeWord = function (text, field, pos) {
        var startIndex = pos;
        var is_run = 0;
        if (field.charAt(pos - 1) == ']') {
            for (var i = pos - 2; i >= 0; i--) {
                if (field.charAt(i) === '[') {
                    startIndex = i;
                    is_run = 1;
                    break;
                } else if (field.charAt(i) === ']' || i === 0) {
                    break;
                }

            }
            if (is_run) {
                selectSomeText(text, startIndex, pos);
            }

        }

    };
    $('#content-text').keydown(function (event) {
        if (event.keyCode !== 8) {
            return;
        }
        var bodyText = $(this)[0];
        var bodyField = $(this).val();
        var pos = getCursortPosition(bodyText);
        delWholeWord(bodyText, bodyField, pos);
    });
}

function selectEmoji() {
    $api.byId('content-text').blur();
    if ($api.hasCls($api.dom('.emoji-icon'), 'aui-hide')) {
        $api.removeCls($api.dom('.emoji-icon'), 'aui-hide');
    } else {
        $api.addCls($api.dom('.emoji-icon'), 'aui-hide');
    }
}

/**
 * 输入框文字改变的回调
 */
function onTextChangeListener() {
    var value = $api.dom("#content-text").value;
    if (value == "") {
        $api.text($api.dom(".word-count"), '0/140');
    } else if (textLength(value, 1, 140) > 140) {
        $api.html($api.dom(".word-count"), '<span style="color: #f00">' + Math.ceil(textLength(value)) + '</span>/140');
    } else {
        $api.text($api.dom(".word-count"), 140-Math.ceil(textLength(value, 1, 140)) + '/140');
    }
}

function onTextChange(n) {
    var value = $api.dom("#content-text").value;
    if (value.length > 140) {
        var val = value.substr(0, 140);
        $api.dom("#content-text").value = val;
    }
}

/**
 * 判断文字长度
 */
function textLength(Str, length, maxlen) {
    var charlen = typeof length === 'undefined' ? 2 : length;
    var charmaxlen = typeof maxlen === 'undefined' ? 140 : maxlen;
    Str = Str.replace(/<div>/ig, "").replace(/<\/div>/ig, "<br />");
    Str = Str.replace(/<(?!img|br).*?>/ig, "");
    Str = Str.replace(/<(?!img).*?>/ig, "").replace(/<img[^>]+([^>"]*)"[^>]+>/g, "图");
    Str = Str.replace(/&nbsp;/ig, ' ');
    Str = Str.replace(/\/n/ig, ' ');
    var i, len, code;
    if (Str == null || Str == "")
        return charmaxlen;
    len = Str.length;

    if (charlen == 2) {
        len = Math.ceil(len / 2);
    }
    var left = 0;
    if (len <= charmaxlen) {
        left = charmaxlen - len;
    } else {
        left = 0;
    }
    if (left == 0 && Str == '') {
        left = charmaxlen;
    }
    return left;
}

/**
 * 表情库
 */
var emojiData = ['[注意安全]', '[抱抱]', '[无语]', '[嗯嗯]', '[暗中观察]', '[哈哈哈]', '[嘿嘿]', '[红包]', '[加油]', '[抠鼻]', '[哭]', '[厉害]', '[我超美]', '[亲亲]', '[超生气]', '[我好帅]'
    , '[叹]', '[来玩啊]', '[晚安]', '[吓吓]', '[谢谢]', '[大心心]', '[疑问]', '[赞]'
    , '[3q]', '[打]', '[拜拜]', '[come on]', '[cry]', '[我错了]', '[跳舞]', '[dance]', '[嗯]', '[顾耐]', '[哈哈]', '[好开森]', '[哼～]', '[热]', '[hug]', '[在吗？]'
    , '[么么哒]', '[喵]', '[好想你]', '[早上好]', '[闹闹]', '[NO]', '[洗白白]', '[吃瓜]'];

function finalContent(str) {
    return str.replace(/\[注意安全]/g, emojiUrl('anquan')).replace(/\[抱抱]/g, emojiUrl('baobao')).replace(/\[无语]/g, emojiUrl('dengdeng')).replace(/\[嗯嗯]/g, emojiUrl('enen')).replace(/\[暗中观察]/g, emojiUrl('guan'))
        .replace(/\[哈哈哈]/g, emojiUrl('hahaha')).replace(/\[嘿嘿]/g, emojiUrl('heihei')).replace(/\[红包]/g, emojiUrl('hongbao')).replace(/\[加油]/g, emojiUrl('jiayou'))
        .replace(/\[抠鼻]/g, emojiUrl('koubi')).replace(/\[哭]/g, emojiUrl('ku')).replace(/\[厉害]/g, emojiUrl('lihai')).replace(/\[我超美]/g, emojiUrl('mei'))
        .replace(/\[亲亲]/g, emojiUrl('qinqin')).replace(/\[超生气]/g, emojiUrl('shengqi')).replace(/\[我好帅]/g, emojiUrl('shuai')).replace(/\[叹]/g, emojiUrl('tan'))
        .replace(/\[来玩啊]/g, emojiUrl('wan')).replace(/\[晚安]/g, emojiUrl('wanan')).replace(/\[吓吓]/g, emojiUrl('xiaxia')).replace(/\[谢谢]/g, emojiUrl('xiexie'))
        .replace(/\[大心心]/g, emojiUrl('xin')).replace(/\[疑问]/g, emojiUrl('yiwen')).replace(/\[赞]/g, emojiUrl('zan'))
        .replace(/\[3q]/g, emojiUrl('3q')).replace(/\[打]/g, emojiUrl('beat')).replace(/\[拜拜]/g, emojiUrl('bye')).replace(/\[come on]/g, emojiUrl('comeon'))
        .replace(/\[cry]/g, emojiUrl('cry')).replace(/\[我错了]/g, emojiUrl('cuole')).replace(/\[跳舞]/g, emojiUrl('dance')).replace(/\[dance]/g, emojiUrl('dance1'))
        .replace(/\[嗯]/g, emojiUrl('en')).replace(/\[顾耐]/g, emojiUrl('goodnight')).replace(/\[哈哈]/g, emojiUrl('haha')).replace(/\[好开森]/g, emojiUrl('happy'))
        .replace(/\[哼～]/g, emojiUrl('heng')).replace(/\[热]/g, emojiUrl('hot')).replace(/\[hug]/g, emojiUrl('hug')).replace(/\[在吗？]/g, emojiUrl('ishere'))
        .replace(/\[么么哒]/g, emojiUrl('memeda')).replace(/\[喵]/g, emojiUrl('miao')).replace(/\[好想你]/g, emojiUrl('missyou')).replace(/\[早上好]/g, emojiUrl('morning'))
        .replace(/\[闹闹]/g, emojiUrl('naonao')).replace(/\[NO]/g, emojiUrl('no')).replace(/\[洗白白]/g, emojiUrl('wash')).replace(/\[吃瓜]/g, emojiUrl('watermelon'));
}

function emojiUrl(emoji) {
    return '<img src="http://weibo.12xue.com/static/core/images/expression/rabbit/' + emoji + '.gif" width="60" height="60" alt="' + emoji + '"/>';
}

/**
 * 选择表情
 * @param index 表情库下标
 */
function emojiClick(index) {
    $api.val($api.dom('.comment-text'), $api.val($api.dom('.comment-text')) + emojiData[index]);
    onTextChangeListener();
//        $api.addCls($api.dom('.emoji-icon'), 'aui-hide');
}
