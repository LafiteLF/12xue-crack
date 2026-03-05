/**
 * Created by Mr.Zhang on 2020/3/20.
 */

function stuScorePublicFunction(eventScoreData, eventType) {
    if (eventType == 'stuGroup') {
        api.openFrame({
            name: 'frame_slect_score_pad',
            url: 'widget://html/study/newClass/stuScoring/frame_slect_score_pad.html',
            rect: {
                x: 0,
                y: 0,
                w: 'auto',
                h: 'auto'
            },
            bounces: false
        });
    } else if (eventType == 'stu') {
        api.openFrame({
            name: 'frame_student_score',
            url: 'widget://html/study/newClass/stuScoring/frame_student_score.html',
            rect: {
                x: 0,
                y: 0,
                w: 'auto',
                h: 'auto'
            },
            pageParam: {
                evaluate: eventScoreData.stu_evaluate,
                type: 'stu'
            },
            reload: true,
            bounces: false
        });
    } else if (eventType == 'group'){
        api.openFrame({
            name: 'frame_student_score',
            url: 'widget://html/study/newClass/stuScoring/frame_student_score.html',
            rect: {
                x: 0,
                y: 0,
                w: 'auto',
                h: 'auto'
            },
            pageParam: {
                evaluate: eventScoreData.group_evaluate,
                type: 'group'
            },
            reload: true,
            bounces: false
        });
    } else {
        api.toast({
            msg: '打分数据有误',
            duration: 2000,
            location: 'bottom'
        });
    }
}