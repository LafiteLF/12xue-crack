(function () {


    //http request openapi
    var str = '{"uptoken":"vhmUt78VpQ2YhVN9WinQZ3RFSThs2j5eTi4amFOZ:nhl9vnLotDLJwvkHCgq2MvBdJhA=:eyJzY29wZSI6InJlczEyeHVlIiwiZGVhZGxpbmUiOjE0Njc5NDY4NDV9"}';
    var tokenObj = JSON.parse(str);
    var token = tokenObj.uptoken;

    var uploader = Qiniu.uploader({
        runtimes: 'html5,flash,html4',
        browse_button: 'pickfiles',
        container: 'container',
        drop_element: 'container',
        max_file_size: '1000mb',
        flash_swf_url: 'js/plupload/Moxie.swf',
        dragdrop: true,
        chunk_size: '4mb',
        unique_names: true,
        //获取upload
        uptoken: token,
        domain: 'res-qiniu.12xue.com',
        auto_start: true,
        init: {
            'FilesAdded': function (up, files) {
                console.log(up)
            },
            'BeforeUpload': function (up, file) {
                console.log(up)
            },
            'UploadProgress': function (up, file) {
                console.log(up)
            },
            'UploadComplete': function () {
                console.log("complete!");
            },
            'FileUploaded': function (up, file, info) {
                console.log(info)
                console.log(file)
                console.log(up)
                console.log('hello man,a file is uploaded');
            },
            'Error': function (up, err, errTip) {
                console.log(err)
            }
        }
    });


})();