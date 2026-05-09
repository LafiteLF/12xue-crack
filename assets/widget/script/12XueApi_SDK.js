/**
 * 12XueOpenApi  SDK   For Javascript
 *  All Right  Reserve By Usher.Yue
 *  2016-04-28
 */


/**
 * http 对象
 */
function Http() {
    //是否缓存
    Http.prototype.__cache = true;
    //http请求超时
    Http.prototype.__timeout = 30;
    //字符集
    Http.prototype.__charset = "utf-8";
    //数据类型 json xml
    Http.prototype.__dataType = "json";
    //是否上报 文件上传进度
    Http.prototype.__report = false;
    //是否需要返回所有response信息，为true时，返回的头信息获取方法(ret.headers)，
    //消息体信息获取方法(ret.body)，状态码获取方法((api.systemType=='ios'?ret.info.statusCode:ret.statusCode))
    Http.prototype.__returnAll = false;
}
/**
 * 简单的http post请求
 * @param {Object} requesturl    api接口的url
 * @param {Object} postdata     post请求数据  json
 * @param {Object} callback      回调地址   callback(ret,err) ;
 * @param {Object} header        http请求头部 json
 */
Http.prototype.Post = function (requesturl, postdata, callback, header) {
    //参数验证
    if ('undefined' == typeof(postdata) || postdata == null) {
        postdata = {};
    }
    if ('undefined' == typeof(requesturl) || requesturl == null) {
        requesturl = "";
    }
    if ('undefined' == typeof(header) || header == null) {
        header = {};
    }
    if ('undefined' == typeof(callback) || callback == null) {
        callback = null;
    }
    api.ajax({
        url: requesturl,
        method: 'post',
        data: postdata,
        headers: header,
        charset: this.__charset,
        returnAll: this.__returnAll,
        dataType: this.__dataType,
        timeout: this.__timeout,
        cache: this.__cache
    }, function (ret, err) {
        if (callback != null) {
            callback(ret, err);
        }
    });
};


/**
 * 简单的http put请求
 * @param {Object} requesturl    api接口的url
 * @param {Object} putdata     post请求数据  json
 * @param {Object} callback      回调地址   callback(ret,err) ;
 * @param {Object} header        http请求头部 json
 */
Http.prototype.Put = function (requesturl, putdata, callback, header) {
    //参数验证
    if ('undefined' == typeof(putdata) || putdata == null) {
        putdata = {};
    }
    if ('undefined' == typeof(requesturl) || requesturl == null) {
        requesturl = "";
    }
    if ('undefined' == typeof(header) || header == null) {
        header = {};
    }
    if ('undefined' == typeof(callback) || callback == null) {
        callback = null;
    }
    api.ajax({
        url: requesturl,
        method: 'put',
        encode:'false',
        data: putdata,
        headers: header,
        charset: this.__charset,
        returnAll: this.__returnAll,
        dataType: this.__dataType,
        timeout: this.__timeout,
        cache: this.__cache
    }, function (ret, err) {
        if (callback != null) {
            callback(ret, err);
        }
    });
};

/**
 * 简单http get请求
 * @param {Object} requesturl
 * @param {Object} callback
 * @param {Object} header
 */
Http.prototype.Get = function (requesturl, getdata, callback, header, tag, cache) {
    if ('undefined' == typeof(requesturl) || requesturl == null) {
        requesturl = "";
    }
    if ('undefined' == typeof(header) || header == null) {
        header = {};
    }
    if ('undefined' == typeof(callback) || callback == null) {
        callback = null;
    }
    if ('undefined' == typeof(tag) || tag == null) {
        tag = null;
    }
    if ('undefined' == typeof(cache) || cache == null) {
        cache = null;
    }

    var isCache = cache;
    if (cache == false) {

    } else {
        isCache = this.__cache;
    }
    api.ajax({
        url: requesturl,
        headers: header,
        charset: this.__charset,
        returnAll: this.__returnAll,
        dataType: this.__dataType,
        timeout: this.__timeout,
        cache: isCache,
        data: getdata,
        tag: tag
    }, function (ret, err) {
        if (callback != null)callback(ret, err);
    });
};

/**
 * 简单http delete请求
 * @param {Object} requesturl
 * @param deletedata
 * @param {Object} callback
 * @param {Object} header
 */
Http.prototype.Delete = function (requesturl, deletedata, callback, header) {
    if ('undefined' == typeof(requesturl) || requesturl == null) {
        requesturl = "";
    }
    if ('undefined' == typeof(header) || header == null) {
        header = {};
    }
    if ('undefined' == typeof(callback) || callback == null) {
        callback = null;
    }
    api.ajax({
        url: requesturl,
        method: 'delete',
        headers: header,
        charset: this.__charset,
        returnAll: this.__returnAll,
        dataType: this.__dataType,
        timeout: this.__timeout,
        cache: this.__cache,
        data: deletedata
    }, function (ret, err) {
        if (callback != null)callback(ret, err);
    });
};


/**
 * 取消ajax
 * @param {Object} tag  tag
 */
Http.prototype.CancleAjax = function (tag) {
    api.cancelAjax({
        tag: tag
    });
};


/**
 *
 * @param {Object} domain   api域名
 * @param {Object} source    来源
 * @param {Object} version  版本
 */
function GridOpenApi(domain, source, version) {
    if ('undefined' == typeof(domain) || domain == null) {
        domain = '';
    }
    if ('undefined' == typeof(source) || source == null) {
        source = '';
    }
    if ('undefined' == typeof(version) || version == null) {
        version = '';
    }
    //access token
    this.__accesstoken = "";
    //username
    this.__username = "";
    //password 
    this.__password = "";
    //client_id
    this.__clientid = "";
    //client secret  
    this.__clientsecert = "";
    //domain
    this.__domain = domain;
    //source
    this.__source = source;
    this.__version = version;
    this.__header = {};
    //http 
    this.__http = new Http();
}

/**
 * 初始化OpenApi认证
 * @param {Object} username   用户名
 * @param {Object} password  密码
 * @param {Object} client_id   客户端id  12xue_par 表示12xue家长端 12xue_stu   学生端 12xue_tec  教师端
 * @param {Object} client_secret  客户端key
 * @param {Object} callback   回调 返回数据 error
 */
GridOpenApi.prototype.Auth = function (username, password, client_id, client_secret, callback) {
    var outerObj = this;
    var loginUrl = this.__domain + UrlRouter.Login;
    this.__http.Post(loginUrl, {
        values: {
            'account': username,
            'password': password,
            'client_id': client_id,
            'client_secret': client_secret
        }
    }, function (ret, err) {
        if ('undefined' != typeof(callback) && callback != null) {
            //save access toen
            if (ret && ret.ret == 0) {
                outerObj.__access_token = ret.access_token;
                //username
                outerObj.__username = username;
                //password 
                outerObj.__password = password;
                //client_id
                outerObj.__clientid = client_id;
                //client secret  
                outerObj.__clientsecert = client_secret;
            }
            callback(ret, err);
        }
    });
};


/**
 * header
 */
GridOpenApi.prototype.AuthHeader = function () {
    var header = {
        Token: this.__access_token,
        Source: this.__source,
        Version: this.__version
    };
    for (var i in this.__header){
        header[i] = this.__header[i];
    }
    return header;
};

GridOpenApi.prototype.Header = function (obj) {
    if (typeof obj === 'undefined' || obj == null) {
        obj = {};
    }

    // 克隆当前实例，避免修改原实例的全局 header
    const clone = Object.create(this);
    clone.__header = Object.assign({}, this.__header, obj); // 合并全局 header 和当前调用的 header
    return clone;
};

/**
 * 无需登陆直接设置token
 * @param {Object} access_token  oauth2登陆之后的授权码
 */
GridOpenApi.prototype.SetAuthToken = function (access_token) {
    this.__access_token = access_token;
};


/**
 *  @param {Object} url      tag
 */
GridOpenApi.prototype.CancleAjax = function (tag) {
    this.__http.CancleAjax(tag);
};

/**
 * 带认证的get
 * @param {Object} url      api
 * @param getdata
 * @param {Object} callback   回调
 * @param {Object} tag   标示用于取消
 */
GridOpenApi.prototype.Get = function (url, getdata, callback, tag, cache) {
    this.__access_token = $api.getStorage('token');
    var outerObj = this;
    var requestUrl = this.__domain + url;
    this.__http.Get(requestUrl, getdata, callback, this.AuthHeader(), tag, cache);
};

/**
 * 带认证的delete
 * @param {Object} url      api
 * @param deletedata  参数
 * @param {Object} callback   回调
 * @param {Object} tag   标示用于取消
 */
GridOpenApi.prototype.Delete = function (url, deletedata, callback, tag) {
    this.__access_token = $api.getStorage('token');
    var outerObj = this;
    var requestUrl = this.__domain + url;
    this.__http.Delete(requestUrl, deletedata, callback, this.AuthHeader());
};

/**
 * 带认证的post
 * @param {Object} url       api
 * @param {Object} params   json参数
 * @param {Object} callback  回调
 * @param {Object} tag   tag
 */
GridOpenApi.prototype.Post = function (url, params, callback, tag) {
    this.__access_token = $api.getStorage('token');
    var outerObj = this;
    var requestUrl = this.__domain + url;
    this.__http.Post(requestUrl, params, callback, this.AuthHeader());
};

/**
 * 带认证的put
 * @param {Object} url       api
 * @param {Object} params   json参数
 * @param {Object} callback  回调
 * @param {Object} tag   tag
 */
GridOpenApi.prototype.Put = function (url, params, callback, tag) {
    this.__access_token = $api.getStorage('token');
    var outerObj = this;
    var requestUrl = this.__domain + url;
    var query = new Array();
    for (var i in params.values) {
        query.push(i + '=' + params.values[i]);
    }
    requestUrl += '?' + query.join('&');
    this.__http.Put(requestUrl, params, callback, this.AuthHeader());
};



function checkPermission(perNames) {
    if (api.systemType == 'ios') {
        return true;
    }
    var unList = [];
    var str = '';
    var resultList = api.hasPermission({
        list: perNames
    });
    for (var i = 0; i < resultList.length; i++) {
        if (!resultList[i].granted) {
            unList.push(resultList[i].name);
            str += getPerName(resultList[i].name);
            str += ' ';
        }
    }
    if (unList.length != 0) {
        api.confirm({
            title: '提醒',
            msg: '为了可以使用扫码识别等功能需要获取 ' + str + "权限\n是否前往设置？",
            buttons: ['去设置', '取消']
        }, function(ret, err) {
            if (1 == ret.buttonIndex) {
                api.requestPermission({
                    list: unList,
                    code: 1
                }, function (ret, err) {
                });
            }
        });
        return false;
    }
    return true;
}



function getPerName(perName) {
    switch (perName) {
        case 'camera':
            return '相机';
        case 'microphone':
            return '录音';
        case 'photos':
            return '访问存储';
        case 'storage':
            return '存储';
        default:
            return '';
    }
}