String.prototype.trimAllSpace = function () {
    return this.replace(/ /g, '').replace(/(&nbsp;)|\s|\u00a0/g, '').replace(/\n/g, "").replace(/\r/g, "").replace(/\\n/g, "").replace(/\\r/g, "");
};

/**
 * 判断对象或字符串是否为空
 * @param data
 * @author 邹峰
 * @time 2017年07月24日15:44:24
 * @return {boolean}
 */
function is_empty(data) {
    if (typeof data === 'undefined') {
        return true;
    } else if (typeof data === 'string' && (data === '' || data === '0' || data === 'null')) {
        return true;
    } else if (typeof data === 'object') {
        for (var name in data) {
            return false;
        }
        return true;
    } else if (data instanceof Array) {
        if (data.length === 0) return true;
    } else if (typeof data === 'boolean') {
        return data;
    } else if (data === null || data === 'null') {
        return true;
    } else if (data === 0 || data === '0') {
        return true;
    }
    return false;
}

function qj2bj(s) {
    /*正则转换中文标点*/
    s = s.replace(/：/g, ':');
    s = s.replace(/＃/g, '#');
    s = s.replace(/。/g, '.');
    s = s.replace(/“/g, '"');
    s = s.replace(/”/g, '"');
    s = s.replace(/【/g, '[');
    s = s.replace(/】/g, ']');
    s = s.replace(/《/g, '<');
    s = s.replace(/》/g, '>');
    s = s.replace(/〈/g, '<');
    s = s.replace(/〉/g, '>');
    s = s.replace(/‹/g, '<');
    s = s.replace(/›/g, '>');
    s = s.replace(/，/g, ',');
    s = s.replace(/？/g, '?');
    s = s.replace(/！/g, '!');
    s = s.replace(/、/g, ',');
    s = s.replace(/；/g, ';');
    s = s.replace(/（/g, '(');
    s = s.replace(/）/g, ')');
    s = s.replace(/‘/g, "'");
    s = s.replace(/’/g, "'");
    s = s.replace(/『/g, "[");
    s = s.replace(/』/g, "]");
    s = s.replace(/「/g, "[");
    s = s.replace(/」/g, "]");
    s = s.replace(/﹃/g, "[");
    s = s.replace(/﹄/g, "]");
    s = s.replace(/〔/g, "{");
    s = s.replace(/〕/g, "}");
    s = s.replace(/—/g, "-");
    s = s.replace(/·/g, ".");
    s = s.replace(/&lt;/g, '<');
    s = s.replace(/&lt;/g, '<');
    s = s.replace(/&gt;/g, '>');
    s = s.replace(/&nbsp;/g, " ");
    s = s.replace(/′/g, "'");
    s = s.replace(/&apos;/g, "'");
    s = s.replace(/&quot;/g, '"');
    s = s.replace(/&amp;/g, "&");
    s = s.replace(/[\r\n]/g, "");
    s = s.replace(/×/g, "*");
    s = s.replace(/x/g, "*");
    s = s.replace(/ｘ/g, "*");
    s = s.replace(/\u200B/gi, '').replace(/\u200b/gi, '');
    /*正则转换全角为半角*/
    //字符串先转化成数组
    s = s.split("");
    for (var i = 0; i < s.length; i++) {
        //全角空格处理
        if (s[i].charCodeAt(0) === 12288) {
            s[i] = String.fromCharCode(32);
        }
        /*其他全角*/
        if (s[i].charCodeAt(0) > 0xFF00 && s[i].charCodeAt(0) < 0xFFEF) {
            s[i] = String.fromCharCode(s[i].charCodeAt(0) - 65248);
        }
    }
    //数组转换成字符串
    s = s.join("");
    return s;
}

/**
 * 获取时间戳
 * @param date 日期：2017/03/03 13：49：55
 * @param num 当前日期的前或后推几天/小时/分钟/秒
 * @param type d天/h小时/m分钟/s秒
 * @returns {string}
 */
function timestamps(date, num, type) {
    date = date || '';
    num = num || 0;
    type = type || 'd';
    var today;
    if (date == '' || date == 0) {
        today = Date.parse(new Date()).toString();
    } else {
        today = Date.parse(new Date(date)).toString();
    }
    var result = 0;
    if (num != 0 && num != '') {
        num = parseInt(num);
        if (type == 'h') {
            result = today / 1000 + 3600 * num;
        } else if (type == 'm') {
            result = today / 1000 + 60 * num;
        } else if (type == 's') {
            result = today / 1000 + num;
        } else {
            result = today / 1000 + 3600 * 24 * num;
        }
    } else {
        result = today;
    }
    return result.toString().substr(0, 10);
}

/**
 * 生成随机数
 * @param num 位数
 * @return {string}
 */
function get_random_by_number(num) {
    var number = '';
    for (var i = 0; i < num; i++) {
        number += Math.floor(Math.random() * 10);
    }
    return number;
}

/**
 * 计算小题的平均分，totalnum：总小题数，totalscore:总分值，index：当前小题sort，非index索引
 * @author  邹峰
 * @param totalnum
 * @param totalscore
 * @param index
 * @return {number}
 */
function averageScore(totalnum, totalscore, index) {
    totalscore = totalscore || 0;
    //根据小题序号计算当前小题总分
    var average = Math.floor(totalscore * 10 / totalnum) / 10;
    var last = totalscore - (average * (totalnum - 1));
    if (last.toString().split('.')[1] > 0) {
        last = last.toFixed(1)
    } else {
        last = last.toFixed(0)
    }

    return totalnum == index ? last : average;
}

/**
 * 2019-12-18 duoxt && tx_code =2 && tx_code>=4 处理每个小题的分值
 * @param score
 * @param index 小题序号，begin 1
 * @param totalnum
 * @return {number}
 */
function dealPartScore(score, index, totalnum) {
    index = index || 1;
    totalnum = totalnum || 1;
    if (is_empty(score)) {
        return 0;
    }
    var scorelist = score.toString().split(',');
    if (scorelist.length > 1) {
        score = scorelist[(index * 1 - 1)];
    } else {
        score = averageScore(totalnum, score, index);
    }
    return score * 1;
}

function htmlspecialchars(str) {
    var s = '';
    if (typeof str === 'undefined' || str.length === 0) {
        return '';
    }
    for (var i = 0; i < str.length; i++) {
        switch (str.substr(i, 1)) {
            case "<":
                s += "&lt;";
                break;
            case ">":
                s += "&gt;";
                break;
            case "&":
                s += "&amp;";
                break;
            case " ":
                if (str.substr(i + 1, 1) == " ") {
                    s += " &nbsp;";
                    i++;
                } else s += " ";
                break;
            case "\"":
                s += "&quot;";
                break;
            case "\n":
                s += "<br>";
                break;
            default:
                s += str.substr(i, 1);
                break;
        }
    }
    return s;
}

/**
 * number_format
 * @param number 传进来的数,
 * @param bit 保留的小数位,默认保留两位小数
 */
function number_analysis(number, bit) {
    if (is_empty(number)) {
        return number;
    }
    //设置接收参数的默认值
    bit = bit ? bit : 1;

    var str = '';
    number = Number(number);
    number = (number).toFixed(bit);//格式化
    var realnum = number.split('.')[0];//整数位(使用小数点分割整数和小数部分)
    var decimal = number.split('.')[1];//小数位
    //重新拼接实数部分和小数位
    if (parseInt(decimal) > 0)
        realnum = realnum + '.' + decimal;
    return realnum;
}

//生成主键id
function random_key(len, prefix) {
    len = len || 17;
    prefix = prefix || '11';
    //毫秒级时间戳
    var time = new Date().getTime().toString();
    var obj = new Date().getTime().toString();
    if (time.length < len) {
        for (var i = 0; i < (len - obj.length); i++) {
            time = time + '' + Math.floor(Math.random() * 10)
        }
    }
    return prefix + time;
}

/**
 * 生成数据主键
 * @param num
 * @param uid
 * @return {string}
 */
function getMorePrimaryKey(num, uid ) {
    num = num || 1;
    uid = uid || '';
    var randomTime = timestamps();//当前时间-初始化时间，当做key
    num = num.toString();//转字符串，主要提供给学生答题使用，当前num最大100+100*40 = 4100，max4位数。只取4位，不足补0
    if(num.length<=3) {
        //小于3位数
        num = ('0000'+num).substr(-3, 3);
    }else{
        var f = Math.floor((num * 1) / 1000);
        //三位数，取整后+时间戳中
        randomTime = (randomTime * 1 + f).toString();
        num = num.substr(-3, 3);
    }
    uid = uid ? uid.toString().substr(-6, 6) : '';//uid截取后6位最为标识999999，不足补0
    return randomTime + uid + get_random_by_number(9 - uid.length - num.length) + num;
}

function dealWithAnswer(data, primaryKey) {
    primaryKey = primaryKey || 1;
    var answer = {}, options = [], multilevelAnswers = [];
    if (parseInt(data.tx_code) === 1) {
        //选择题 构造正确答案
        data.zqda = [];
        for (var opt in data.daoptions) {
            data.zqda.push(data.daoptions[opt].id);

        }
    } else if (parseInt(data.tx_code) === 4) {
        //选择题 构造正确答案
        for (var cc in data.children) {
            var chli = data.children[cc];
            chli.zqda = [];
            for (var opt in chli.daoptions) {
                chli.zqda.push(chli.daoptions[opt].id);

            }
        }

    }
    answer.sys_id = getMorePrimaryKey(primaryKey, data.uid);
    answer.xtid = data.xtid;
    answer.uid = data.uid;
    answer.sxda = '';
    answer.xkid = data.xkid || 0;
    answer.njid = data.njid || 0;
    answer.bbid = data.bbid || 0;
    answer.sxcid = data.sxcid || 0;
    answer.dyid = data.dyid || 0;
    answer.jieid = data.jieid || 0;
    answer.kcid = data.kcid;
    answer.xsbjid = data.xsbjid || 0;
    answer.ytlx = data.ytlx || 1;
    answer.is_auto = data.is_auto;
    answer.is_unable = data.is_unable || 0;
    answer.descript = data.descript || 'mobile';
    answer.is_complete = data.is_complete || 0;
    answer.create_time = timestamps();
    answer.update_time = timestamps();
    answer.flag = data.flag || 0;
    answer.accuracy = 0;
    answer.score = 0;
    answer.is_true = 0;
    answer.is_ctb = 0;
    answer.show_time = data.show_time || 0;
    answer.kc_type = data.kc_type || 'homework';
    if (answer.kc_type === 'practice' || 1) {
        answer.tuid = data.tuid || 0;
        answer.schoolid = data.schoolid || 0;
    }
    if (parseInt(data.tx_code) === 1) {
        //选择题
        if (parseInt(answer.is_unable) !== 1) {
            var checkOwn = data.da.every(function (item) {
                //判断提交选项是否有错误的
                return data.zqda.includes(item)
            });
            //判断如果没有错误选项是否漏选
            answer.is_true = checkOwn ? (data.da.length === data.zqda.length ? 1 : 3) : 2;
            if (answer.is_true === 1) {
                answer.accuracy = 1;
                answer.score = data.score || 0;
            } else if (answer.is_true === 2) {
                answer['is_ctb'] = 1;
                answer.accuracy = 0;
                answer.score = 0;
            } else if (answer.is_true === 3) {
                answer['is_ctb'] = 1;
                answer.accuracy = 0.5;
                //use 处理多选题半对分值
                var scccore = data.part_score || data.score;
                answer.score = is_empty(scccore) ? 0 : (is_empty((scccore.toString().split(','))[1]) ? scccore * 0.5 : (scccore.toString().split(','))[1]);
            }
        } else {
            answer.is_true = 2;
            answer.accuracy = 0;
            answer.score = 0;
            answer['is_ctb'] = 1;
        }
        answer.sxda = data.da.join(',')
        //////////////////////选择题结束////////////////////////////
    } else if (parseInt(data.tx_code) === 2) {
        //填空题
        var n = 0;//小空内容排序
        var count = 0;//自动批阅正确num
        var manual = 0;//是否手动批阅
        var number = 1;//空号
        var unable_num = 0;
        var groupObj = {};
        //填空题如有乱序答题，暂时保存乱序分组
        for (var i in data.daoptions) {
            var value = data.daoptions[i];
            if (value.group != '0' && value.is_auto == 1) {
                if (typeof groupObj[value.group] === 'undefined') {
                    groupObj[value.group] = [];
                }
                groupObj[value.group].push(value['description']);

            }
        }
        for (var i in data.daoptions) {
            var val = data.daoptions[i];
            //会做
            var newOption = {
                //'id': answer.sys_id,
                'answer_id': answer.sys_id,
                'topanswer_id': answer.sys_id,
                'descript': '',
                'is_unable': data.da[n].is_unable || 0,
                'is_true': 0,
                'serverpath': '',
                'savename': '',
                'filecode': '',
                'filetime': 0,
                'is_txt': data.da[n].is_txt || 0,
                'sort': 0,
                'create_time': timestamps(),
                'update_time': timestamps(),
                'accuracy': 0,
                'score': 0,
                'is_auto': data.da[n]['is_auto'] || 0,
                'number': number,

            };
            if (parseInt(data.da[n].is_unable) === 1) {
                answer.is_unable = 1;
                //不会做
                newOption.is_true = 2;
                newOption.is_txt = 1;
                options.push(newOption);
                unable_num++;//不会做的num+1

            } else {
                if (parseInt(data.da[n]['is_auto']) === 1) {
                    //判断是否是乱序答题的正确答案
                    if (val.group != '0' && typeof groupObj[val.group] !== 'undefined') {
                        var isTrue = 0;
                        for (var ii in groupObj[val.group]) {
                            var vv = groupObj[val.group][ii];
                            if (vv.replace(/＃/g, '#').split('#').map(function (item) {
                                    return qj2bj(item).trimAllSpace()
                                }).includes(qj2bj(data['da'][n]['descript'][0] || '').trimAllSpace())) {
                                isTrue = 1;
                                groupObj[val.group].splice(ii, 1);
                                break;

                            }
                        }
                        if (isTrue === 1) {
                            count++;
                            newOption['is_true'] = 1;
                            newOption['accuracy'] = 1;
                            newOption['score'] = data.score ? dealPartScore(data.part_score || data.score, number, data.daoptions.length) : 0;
                        } else {
                            newOption['is_true'] = 2;
                            newOption['accuracy'] = 0;
                        }
                    } else {
                        //自动批阅填空题选项
                        if (data['daoptions'][i]['description'].replace(/＃/g, '#').split('#').map(function (item) {
                                return qj2bj(item).trimAllSpace()
                            }).includes(qj2bj(data['da'][n]['descript'][0] || '').trimAllSpace())) {
                            //替换空格（先按#分隔答案为数组，每个选项过滤替换中英文字符，在比较学生答案是否包含在其中）
                            count++;
                            newOption['is_true'] = 1;
                            newOption['accuracy'] = 1;
                            newOption['score'] = data.score ? dealPartScore(data.part_score || data.score, number, data.daoptions.length) : 0;

                        } else {
                            newOption['is_true'] = 2;
                            newOption['accuracy'] = 0;
                        }
                    }
                    newOption.descript = htmlspecialchars(data.da[n]['descript'][0] || '');
                    options.push(newOption);

                } else {
                    //手动批阅填空题选项
                    if (parseInt(data.da[n]['is_txt']) === 0) {
                        //图片格式
                        var sort = 0;
                        for (var iii in data.da[n]['descript']) {
                            var vvv = data.da[n]['descript'][iii];
                            var copNewOption = JSON.parse(JSON.stringify(newOption));
                            copNewOption.descript = "<img src='" + vvv['serverpath'] + vvv['savename'] + "'>";
                            copNewOption.sort = sort;
                            options.push(copNewOption);
                            sort++;
                        }
                    } else if (parseInt(data.da[n]['is_txt']) === 1) {
                        //文字格式
                        newOption.descript = htmlspecialchars(data.da[n]['descript'][0] || '');
                        options.push(newOption);
                    }
                    answer.is_true = 0;
                    manual = 1;
                }
            }
            n++;
            number++;
        }
        //判断填空题整体正确率
        if (n === count && !manual) {
            //对
            answer['is_true'] = 1;
            answer['accuracy'] = 1;
            // answer.score = data.score || 0;
        } else if ((count === 0 && !manual) || unable_num == data.daoptions.length) {
            //一个对的没有 ||
            answer['is_ctb'] = 1;
            answer['is_true'] = 2;
            answer['accuracy'] = 0;
            // answer.score = 0;
        } else if (!manual) {
            //半对
            answer['is_ctb'] = 1;
            answer['is_true'] = 3;
            answer['accuracy'] = (count / data.daoptions.length).toFixed(2);

        }
        options.map(function (item, index) {
            return answer.score += item.score * 1;

        });
        answer.score = number_analysis(answer.score);
        //////////////////////填空题结束////////////////////////
    } else if (parseInt(data.tx_code) === 3) {
        //手动批阅大题模式
        if (parseInt(data.is_unable) === 1) {
            //不会做
            var newOption = {
                //'id': answer.sys_id,
                'answer_id': answer.sys_id,
                'topanswer_id': answer.sys_id,
                'descript': '',
                'is_unable': data.is_unable || 0,
                'is_true': 2,
                'serverpath': '',
                'savename': '',
                'filecode': '',
                'filetime': 0,
                'is_txt': 1,
                'sort': 0,
                'create_time': timestamps(),
                'update_time': timestamps(),
                'accuracy': 0,
                'score': 0,
                'is_auto': 0,
                'number': 1,
            };
            answer['is_true'] = 2;
            answer['is_ctb'] = 1;
            options.push(newOption);
        } else {
            //处理文字或图片答案
            var n = 0;
            for (var i in data.da) {
                var val = data.da[i];
                var newOption = {
                    //'id': answer.sys_id,
                    'answer_id': answer.sys_id,
                    'topanswer_id': answer.sys_id,
                    'descript': '',
                    'is_unable': 0,
                    'is_true': 0,
                    'serverpath': val.serverpath || '',
                    'savename': val.savename || '',
                    'filecode': '',
                    'filetime': val.filetime || 0,
                    'is_txt': typeof val.is_txt !== 'undefined' ? val.is_txt : 1,
                    'sort': n,
                    'create_time': timestamps(),
                    'update_time': timestamps(),
                    'accuracy': 0,
                    'score': 0,
                    'is_auto': 0,
                    'number': 1,

                };
                if (parseInt(val.is_txt) === 0) {
                    //图片
                    newOption.descript = "<img src='" + val['serverpath'] + val['savename'] + "'>";
                } else if (parseInt(val.is_txt) === 1) {
                    //文字
                    newOption.descript = htmlspecialchars(val.descript);
                } else if (parseInt(val.is_txt) === 2) {
                    //音频
                    // newOption.filecode = await M('qiniu').PreprocessAudio(val.docbucket || 'vodresource', val['savename']);
                } else if (parseInt(val.is_txt) === 3) {
                    //视频
                    // newOption.filecode = await M('qiniu').PreprocessMultiMedia(val.docbucket || 'vodresource', val['savename']);
                }
                options.push(newOption);
                n++;
            }
        }
        //////////////////////////手动批阅大题模式结束/////////////////////////
    } else if (parseInt(data.tx_code) === 4) {
        var count = 0;//判断小题对了几个
        var unable_num = 0;
        for (var i in data.children) {
            var val = data.children[i];
            var multilevelAnswer = {
                sys_id: random_key(),
                answer_id: answer.sys_id,
                topid: val.topid,
                xtid: val.id,
                uid: data.uid,
                sxda: val.da.join(','),
                kcid: data.kcid,
                is_true: 0,
                is_unable: val.is_unable || 0,
                create_time: timestamps(),
                update_time: timestamps(),
                accuracy: 0,
                score: 0,
                is_auto: 1,
                sort: val.sort,
            };
            //选择题
            if (parseInt(val.is_unable) !== 1) {
                var checkOwn = val.da.every(function (item) {
                    //判断提交选项是否有错误的
                    return val.zqda.includes(item)
                });
                //判断如果没有错误选项是否漏选
                multilevelAnswer.is_true = checkOwn ? (val.da.length === val.zqda.length ? 1 : 3) : 2;
                if (multilevelAnswer.is_true === 1) {
                    multilevelAnswer.accuracy = 1;
                    multilevelAnswer.score = data.score ? dealPartScore(data.part_score || data.score, val.sort, data.children.length) : 0;
                    count++;
                } else if (multilevelAnswer.is_true === 2) {
                    multilevelAnswer.accuracy = 0;
                    multilevelAnswer.score = 0;
                } else if (multilevelAnswer.is_true === 3) {
                    multilevelAnswer.accuracy = 0.5;
                    multilevelAnswer.accuracy = data.score ? dealPartScore(data.part_score || data.score, val.sort, data.children.length) * 0.5 : 0;
                    count = count + 0.5;
                }
            } else {
                answer.is_unable = 1;
                multilevelAnswer.is_true = 2;
                multilevelAnswer.accuracy = 0;
                unable_num++;
            }
            multilevelAnswers.push(multilevelAnswer);
        }
        //计算习题整体正确率，正确小题数/总小题数
        if (count === data.children.length) {
            //正确
            answer.is_true = 1;
            answer.accuracy = 1;
            // answer.score = data.score || 0;
        } else if (count === 0) {
            //错误
            answer.is_true = 2;
            answer.accuracy = 0;
            answer.is_ctb = 1;
            // answer.score = 0;
        } else {
            //有对有错
            answer.is_true = 3;
            answer.accuracy = (count / data.children.length).toFixed(2);
            answer.is_ctb = 1;
            // answer.score = data.score ? (data.score * (count / data.children.length)).toFixed(1) : 0;
        }
        multilevelAnswers.map(function (item, index) {
            return answer.score += item.score * 1;

        });
        answer.score = number_analysis(answer.score);
        /////////////////////////////////大题带选择小题结束//////////////////////////////////
    } else if (parseInt(data.tx_code) === 5) {
        var manual = 0;//是否手动批阅
        var accuracy = 0;
        var unable_num = 0;
        //大题 带tkt或手动批阅习题
        for (var i in data.children) {
            var val = data.children[i];
            var groupObj = {};
            //填空题如有乱序答题，暂时保存乱序分组
            for (var ii in val['daoptions']) {
                var value = val['daoptions'][ii];
                if (value.group != '0' && value.is_auto == 1) {
                    if (typeof groupObj[value.group] === 'undefined') {
                        groupObj[value.group] = [];
                    }
                    groupObj[value.group].push(value['description']);
                }
            }
            if (val.is_unable == 1) {
                unable_num++;
            }
            var multilevelAnswer = {
                sys_id: random_key(),
                answer_id: answer.sys_id,
                topid: val.topid,
                xtid: val.id,
                uid: data.uid,
                sxda: '',
                kcid: data.kcid,
                is_true: 0,
                is_unable: val.is_unable || 0,
                create_time: timestamps(),
                update_time: timestamps(),
                accuracy: 0,
                score: 0,
                is_auto: val.is_auto,
                sort: val.sort,
            };
            if (parseInt(val.is_auto) === 0) {
                var n = 0;
                //单独处理不会做
                if (val.is_unable == 1) {
                    answer.is_unable = 1;
                    val.da = [{is_unable: 1}];
                } else {
                    //you自动批阅 并且会做，记录需要手动批阅
                    manual = 1;
                }
                //手动批阅小题
                for (var iii in val.da) {
                    var vvv = val.da[iii];
                    //移动端作图题，多图情况下某个图提交null处理
                    if (!is_empty(vvv)) {
                        var newOption = {
                            'answer_id': multilevelAnswer.sys_id,
                            'topanswer_id': multilevelAnswer.answer_id,
                            'descript': '',
                            'is_unable': vvv.is_unable || 0,
                            'is_true': 0,
                            'serverpath': vvv['serverpath'] || '',
                            'savename': vvv['savename'] || '',
                            'filecode': '',
                            'filetime': vvv['filetime'] || 0,
                            'is_txt': typeof vvv.is_txt !== 'undefined' ? vvv.is_txt : 1,
                            'sort': n,
                            'create_time': timestamps(),
                            'update_time': timestamps(),
                            'accuracy': 0,
                            'score': 0,
                            'is_auto': val.is_auto || 0,
                            'number': val.sort,
                        };
                        if (parseInt(vvv['is_unable']) === 1) {
                            multilevelAnswer.is_unable = 1;
                            multilevelAnswer.is_true = 2;
                            //不会做
                            newOption.is_true = 2;
                            newOption.is_txt = 1;

                        } else {
                            if (parseInt(vvv.is_txt) === 0) {
                                //图片
                                newOption.descript = "<img src='" + vvv['serverpath'] + vvv['savename'] + "'>";
                            } else if (parseInt(vvv.is_txt) === 1) {
                                //文字
                                newOption.descript = vvv.descript;
                            } else if (parseInt(vvv.is_txt) === 2) {
                                //音频
                                // newOption.filecode = await M('qiniu').PreprocessAudio(vvv.docbucket || 'vodresource', vvv['savename']);
                            } else if (parseInt(vvv.is_txt) === 3) {
                                //视频
                                // newOption.filecode = await M('qiniu').PreprocessMultiMedia(vvv.docbucket || 'vodresource', vvv['savename']);
                            }
                        }
                        options.push(newOption);
                    }
                    n++;
                }
            } else {
                var n = 0, count = 0;
                var secode_unable = 0;
                //自动批阅小题
                for (var i in val.daoptions) {
                    var vvv = val.daoptions[i];
                    var newOption = {
                        'answer_id': multilevelAnswer.sys_id,
                        'topanswer_id': multilevelAnswer.answer_id,
                        'descript': '',
                        'is_unable': val.da[n].is_unable || 0,
                        'is_true': 0,
                        'serverpath': '',
                        'savename': '',
                        'filecode': '',
                        'filetime': 0,
                        'is_txt': val.da[n].is_txt || 0,
                        'sort': i,
                        'create_time': timestamps(),
                        'update_time': timestamps(),
                        'accuracy': 0,
                        'score': 0,
                        'is_auto': val.is_auto || 0,
                        'number': val.sort,
                    };
                    if (parseInt(val['da'][n].is_unable) === 1) {
                        answer.is_unable = 1;
                        multilevelAnswer.is_unable = 1;
                        secode_unable++;
                        //不会做
                        newOption.is_true = 2;
                        newOption.is_txt = 1;
                    } else {
                        if (vvv.group != '0' && typeof groupObj[vvv.group] !== 'undefined') {
                            var isTrue = 0;
                            for (var ii in groupObj[vvv.group]) {
                                var vv = groupObj[vvv.group][ii];
                                if (vv.replace(/＃/g, '#').split('#').map(function (item) {
                                        return qj2bj(item).trimAllSpace()
                                    }).includes(qj2bj(val['da'][n]['descript']).trimAllSpace())) {
                                    isTrue = 1;
                                    groupObj[vvv.group].splice(ii, 1);
                                    break;

                                }
                            }
                            if (isTrue === 1) {
                                count++;
                                newOption['is_true'] = 1;
                                newOption['accuracy'] = 1;
                                newOption['score'] = data.score ? dealPartScore(data.part_score || data.score, val.sort, data.children.length) / Object.values(val['daoptions']).length : 0;
                            } else {
                                newOption['is_true'] = 2;
                                newOption['accuracy'] = 0;
                            }
                        } else {
                            //自动批阅填空题选项
                            if (val['daoptions'][i]['description'].replace(/＃/g, '#').split('#').map(function (item) {
                                    return qj2bj(item).trimAllSpace();
                                }).includes(qj2bj(val['da'][n]['descript']).trimAllSpace())) {
                                //替换空格（先按#分隔答案为数组，每个选项过滤替换中英文字符，在比较学生答案是否包含在其中）
                                count++;
                                newOption['is_true'] = 1;
                                newOption['accuracy'] = 1;
                                newOption['score'] = data.score ? dealPartScore(data.part_score || data.score, val.sort, data.children.length) / Object.values(val['daoptions']).length : 0;

                            } else {
                                newOption['is_true'] = 2;
                                newOption['accuracy'] = 0;
                            }
                        }
                        newOption.descript = htmlspecialchars(val['da'][n]['descript']);//2019-12-30，input输入存储时转义html字符
                    }
                    multilevelAnswer.score += newOption.score;
                    options.push(newOption);
                    n++;
                }
                //判断填空题整体正确率
                if (n === count) {
                    //对
                    multilevelAnswer['is_true'] = 1;
                    multilevelAnswer['accuracy'] = 1;
                    multilevelAnswer['score'] = data.score ? dealPartScore(data.part_score || data.score, val.sort, data.children.length) : 0;
                } else if (count === 0 || secode_unable == val.daoptions.length) {
                    //错
                    multilevelAnswer['is_true'] = 2;
                    multilevelAnswer['accuracy'] = 0;
                } else {
                    //半对
                    multilevelAnswer['is_true'] = 3;
                    multilevelAnswer['accuracy'] = (count / n).toFixed(2);
                    // multilevelAnswer['score'] = data.score ? ((count / n) * data.score / data.children.length).toFixed(2) : 0;
                }
            }
            accuracy = accuracy + multilevelAnswer['accuracy'] * 100;
            multilevelAnswer['score'] = number_analysis(multilevelAnswer['score']);
            multilevelAnswers.push(multilevelAnswer);
        }
        multilevelAnswers.map(function (item, index) {
            return answer.score += item.score * 1;

        });
        answer.score = number_analysis(answer.score);
        if (!manual) {
            //没有需要手动批阅的
            answer.accuracy = data.children.length === 0 ? 0 : (accuracy / (data.children.length * 100)).toFixed(2);
            if (answer.accuracy == 1) {
                answer.is_true = 1;
                answer.score = data.score || 0;
            } else if (answer.accuracy == 0) {
                answer.is_true = 2;
                answer.score = 0;
                answer['is_ctb'] = 1;
            } else {
                answer.is_true = 3;
                // answer.score = data.score ? (data.score * answer.accuracy).toFixed(1) : 0;
                answer['is_ctb'] = 1;

            }
        } else if (manual && unable_num == data.children.length) {
            answer.is_true = 2;
            answer.score = 0;
            answer['is_ctb'] = 1;

        }

    }
    return {answer: answer, options: options, multilevelAnswers: multilevelAnswers};
}


/**
 * 处理options数据
 */
function dealwithOptionsData(options) {
    var newOptions = [];
    var itemOption = [];
    for (var i=0; i<options.length; i++) {
        if (i == 0) {
            itemOption.push(options[i]);
        } else {
            if (options[i].number != options[i-1].number) {
                newOptions.push(itemOption);
                itemOption = [];
                itemOption.push(options[i]);
            } else {
                itemOption.push(options[i]);
            }
        }
        if (i == options.length -1) {
            newOptions.push(itemOption);
            itemOption = [];
        }
    }
    return newOptions;
}