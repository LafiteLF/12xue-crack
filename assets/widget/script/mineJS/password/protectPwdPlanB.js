

var questions = new Array(10);
var questionIds = new Array(10);
var myQuestions ='';
var myQuestionsB='';
var id='';
var className = '';
var arrayQuestion = new Array(3);
var chooseQuestion = new Array(3);
//获取全部问题
function initQuestionList() {
    apiObj.Get(UrlRouter.GetMiBaoQuestion, {
        values: {}
    }, function (ret, err) {
        if (ret) {
            if (ret.ret == 0) {
                myQuestions = ret.data;
                // myQuestionsB = ret.data;//备用
                for (var i = 0; i < ret.data.length; i++) {
                    questions[i] = ret.data[i].question;
                    questionIds[i] = ret.data[i].id;
                }

            } else {
                api.hideProgress();
                //alert(ret.msg);
            }
        } else {
            api.hideProgress();
            api.toast({
                msg: err.msg,
                duration: 2000,
                location: 'bottom'
            });
        }
    });

}

//开启问题列表  num第几个问题
function choiceQuestion(num) {

    if (!isReady) {
        return;
    }

    switch (num) {
        case 1:
            className = 'question-one';
            id=0;
            break;
        case 2:
            className = 'question-two';
            id=1;
            break;
        case 3:
            className = 'question-three';
            id=2;
            break;
    }
    api.openFrame({
        name: 'question-frame',
        url: 'questions_frame.html',
        rect: {
            x: 0,
            y: api.pageParam.headerH,
            w: 'auto',
            h: 'auto'
        },
        pageParam: {questions: myQuestions,id:id,tagIdOne:tagId[0],tagIdTwo:tagId[1],tagIdThree:tagId[2]},
        bounces: false
    });
}




      
