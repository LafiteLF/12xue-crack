/*
* 使用七牛js SDK上传图片config
*
* */
let qiniuConfig = {
    useCdnDomain: true,   //表示是否使用 cdn 加速域名，为布尔值，true 表示使用，默认为 false。
    region: qiniu.region.z0,    // 根据具体提示修改上传地区,当为 null 或 undefined 时，自动分析上传域名区域
    debugLogLevel:'OFF',
}
let qiniuPutExtra = {
    fname: "",  //文件原文件名
    params: {}, //用来放置自定义变量
    mimeType: ["image/gif"]  //用来限制上传文件类型，为 null 时表示不对文件类型限制；限制类型放到数组里： ["image/png", "image/jpeg", "image/gif"]
};
function b64ImgToBlob(b64Data) {
    var contentType = '';
    var sliceSize = 512;
    var byteCharacters = atob(b64Data.substring(b64Data.indexOf(',') + 1));
    var byteArrays = [];
    for (var offset = 0; offset < byteCharacters.length; offset += sliceSize) {
        var slice = byteCharacters.slice(offset, offset + sliceSize);
        var byteNumbers = new Array(slice.length);
        for (var i = 0; i < slice.length; i++) {
            byteNumbers[i] = slice.charCodeAt(i);
        }
        var byteArray = new Uint8Array(byteNumbers);
        byteArrays.push(byteArray);
    }
    var blob = new Blob(byteArrays, {type: contentType});
    return blob;
}
