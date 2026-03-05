//全局路由配置
var urlArr = ["https://api.12xue.com", "https://api1.12xue.com", "https://api2.12xue.com", "http://101.200.223.49:3003", "http://api.12xue.com", "http://pre.api.12xue.com", 'http://172.16.205.200:3001'];
var apititleArr = ["主线路", "线路1", "线路2"];
var apiUrlIndex = typeof ($api.getStorage('apiUrlIndex')) == 'undefined' ? 0 : $api.getStorage('apiUrlIndex');
var UrlDomain = urlArr[apiUrlIndex];
var UrlWeibo = 'http://api.weibo.com';
// var source = 'student_ioshd'; //student_androidhd 开放版 student_androidos 管控版 student_ioshd
var source = 'student_androidhd'; //student_androidhd 开放版 student_androidos 管控版 student_ioshd
var version = '3.6.7';
var versioniOS = '3.6.7';//iOS审核用

var dbName = 'student_12xue'; //数据库名称
var studentModel = 'inet_w';//定制机
var QINIU_DOMAIN = "http://vod-qiniu.12xue.com/";
//分享前缀地址和缩略图
var urlPre = 'http://k12.12xue.com/user/share/index/id/';
var imgUrl = 'http://res-qiniu.12xue.com/o_1b0n2d78re3p1tk64p5lp19md9.jpg';
//发送错误邮件
var errorEmail = 'http://report.12xue.com/api/appclient/send';
//口语项目入口,可以手动修改
//新入口线上 https://enweb-new.12xue.com/
var enWebEntry = apiUrlIndex == '3' ? 'https://en-test-front.12xue.com/static' : 'https://enweb-new.12xue.com/static';//测试？测试：线上
// var teacherSwitch = 0;//学校动态开关 默认开-->0/practice/practiceinfo
//pad高度设定
var padWinHeight = document.documentElement.clientHeight; //document.body.clientHeight;//
var UrlRouter = {
    PostDeviceReport: '/device/report',
    //微博开关
    GetteacherSwitch: '/school/switch',//微博开关
    GetSchoolConfig: '/school/config',//学校功能开关 按type区分功能
    //二维码登录
    ScanLogin: '/Scan/login', //二维码登录
    GetIosIsChecking: '/Switch/classroom',//判断iOS学生是否正在审核中
    Login: '/User/login',  //登陆接口
    GetRefreshToken: '/oauth2/refresh_token', //刷新token
    GetSimulateLogin: '/user/simulatelogin', //统计学生使用频率
    UserInfo: '/User/me', //用户信息
    UserSign: '/User/sign',//签到
    GetSchoolIp: '/User/cdn',//获取学校IP
    PostUserregister: '/User/register',// 用户注册
    PostUserlogin: '/User/login',// 用户登录
    CheckUser: '/User/checkAuth', //查看是否有可以使用12xue
    SchoolInfoById: '/School/info', //学校信息
    GradeList: '/School/gradeinfos', //根据学校选年级列表
    ClassList: '/Class/names', //获取系统班级名称列表
    GetUserBaseInfo: '/User/baseinfo', //获取用户基础信息
    ChangeUserInfo: '/User/info', //修改用户基础信息
    ChangeUserData: '/User/data', //修改用户扩展信息
    UpdatePortrait: '/User/face', //修改头像
    GetPortrait: '/User/avatar', //获取用户头像
    PutPortrait: '/User/avatar', //移动端头像处理
    ChangePsw: '/User/password', //修改密码
    GetFaqLists: '/Faq/lists', //获取常见问题列表
    GetFaqInfo: '/Faq/info', //获取常见问题详情
    AddFeedBack: '/Feedback/info', //添加意见反馈
    GetStudentJoinClass: '/student/classes',//已加入班级
    GetStudentAuditClassB: '/Class/surplusLists',//获取学生已经申请并且教师没有创建的行政班级列表
    GetStudentAuditClass: '/student/auditClasses',//获取学生待审核的班级列表
    PutStudentRevokeAuditsUrl: '/Student/revokeAudits',//学生取消所有班级申请
    PutStudentRevokeAuditUrl: '/Student/revokeAudit',//学生取消所有班级申请
    DelStudentLogoutClassUrl: '/Student/class',//学生退出所在班级
    JoinClassByCode: '/Student/joinClassByCode',//通过班级代码加入班级
    CheckMiBao: '/Security/isAnswer',//检查是否设置密保问题
    CheckUserInfo: '/Security/user',//检查用户基本信息
    GetMiBaoQuestion: '/Security/question',//获取设置密保问题
    setMiBaoQuestion: '/Security/answer',//设置密保问题
    GetSecurityInfo: '/Security/info',//获取帐号的密保问题
    GetArea: '/Area/lists',//获取区域信息
    getAreaLists: '/Area/lists', //获取区域信息
    getAreaSchLists: '/School/lists', //获取学校列表
    GetSchoolList: '/School/lists',//获取学校列表
    GetStudentApplySchoolUrl: '/Student/applySchool',//获取学生申请的班级的学校信息
    GetSchoolGradeinfosUrl: '/school/gradeinfos',//根据学校选年级列表
    GetClassListByCodeUrl: '/Class/listByCode',//班级列表根据Code分组
    PostStudentJoinClassesUrl: '/v1/Student/joinClasses',//学生加入多个班级
    KfInfo: '/System/service',//获取联系客服的信息
    GetUsercredits: '/User/credits',//获取用户积分记录
    GetUserSchoolInfo: '/User/school',//获取用户学校信息
    GetUserstore: '/User/store',//获取用户的学币/积分/威望/经验详情
    GetUserprestiges: '/User/prestiges',//获取用户成长值记录
    GetUserrank: '/User/ranklist',//获取用户等级
    GetArticleList: '/article/list',  //获取文章列表
    GetArticleInfo: '/article/info',  //获取文章详情
    GetQuestionxk: '/homework/questionxk',//获取作业提问学科
    GetUserCoin: '/User/store',//获取用户的学币/积分/威望/经验详情
    GetUserRank: '/User/rank',//获取用户的学币/积分/威望/经验详情
    GetUserConfigInfo: '/area/userConfigInfo', //获取签到积分信息
    Postupdatebycode: '/points/infobycode',//签到增加积分
    PostChkAnswer: '/Security/chkAnswer',//验证密保问题
    PutSecurityPassword: '/Security/password',//密保重置问题
    GetSearchUsers: '/Search/users',//搜索系统用户
    GetService: '/System/service',//获取联系客服信息
    GetPadCheckBuyClass: '/pad/checkBuyClass',//检测孩子是否在平板学习班级
    PostPadBuyConfirm: '/pad/buyConfirm',//学生确认收货操作

    PostExitClass: '/classinfo/addUserClassAduit',//学生退出班级审核
    //错题本
    GetStudentWrongBooksUrl: '/Student/wrongBooks',//获取错题本信息列表
    GetStudentExercisesChaptsUrl: '/Student/exercisesChapts',//获取习题的科目、章节等信息
    // DeleteStudentWrongBookUrl: '/Student/wrongBook',//从错题本中移除习题

    // DeleteStudentWrongBookUrl: '/student/v2wrongBook',//从错题本中移除习题
    DeleteStudentWrongBookUrl: '/exercises/triggerWrong',//从错题本中移除习题

    ExercisesXklists: '/exercises/xklists',//获取错题本中的科目列表
    // ExercisesWrongs: '/exercises/wrongs',// 习题错题本列表//优化的接口
    // ExercisesWrongs: '/student/v2wrongBooks',// 习题错题本列表+智能导练错题
    ExercisesWrongs: '/student/getWrongExercises',// 习题错题本列表+智能导练错题
    ExercisesLastWrongsUpload: '/student/LastWrongUpload',// 最后一次上传错题本
    PostErroeExAnswerMark: '/answer/mark',//错题本标记重点


    ExercisesWrongsUploadChapt: '/student/getWrongUploadChapt',// 习题错题本列表教材筛选
    ExercisesWrongsDyChapt: '/chapter/trees',// 习题错题本列表教材筛选
    UploadExercisesWrong: '/student/uploadWrongExercises',// 上传编辑错题

    //错题纠错
    UploadCorrectionImage: '/answer/uploadOnlineImg',//上传纠错图片
    DeleteCorrectionImage: '/answer/deleteOnlineImg',//删除纠错图片
    GetCorrectionImageList: '/answer/wrongOnlineImg',//获取纠错图片列表

    //作业1
    GetClasssubjectsUrl: '/Class/subjects',//从获取班级所有科目
    GetHomeworkXklists: '/homework/xklists',//获取学生所在班级有作业的科目
    GetStudenthomeworksUrl: '/Student/homeworks',//获取作业列表
    GetStudenthomeworkUrl: '/Student/homework',//获取作业详情
    GetParentexercisesUrl: '/Parent/exercises',//获取作业习题详情及答题结果
    GetParentmaterialUrl: '/Parent/material',//获取素材内容
    GetMaterialInfo: '/Material/info',//作业素材详情
    GetExerciseDetail: '/Exercises/info',//获取习题详情
    GetHomeWorkDetailList: '/Teacher/homework', //获取动态里面作业详情
    PostHomeworkexercisesUrl: '/Homework/exercises',//回答作业习题
    PostExercisesWendt: '/Exercises/wendt',//回答问答题
    PutHomeworkprepareUrl: '/Homework/prepare',//更新作业预习进度
    GetHomeworkstatisticsurl: '/Homework/statistics',//答题统计情况
    GetErrorNotebook: '/Student/wrongBook',//获取错题本错误信息
    PostHomeworkQuestion: '/homework/question',//作业提问
    PostQuestionReply: '/homework/questionReply',//作业提问回复
    PostHomeworkAttach: '/Homework/attach',// 上传作业附件
    GetRemark: '/Homework/remark',//获取作业评价
    PostExercisesWendati: '/Exercises/wendati',// 提交问答题信息
    GetHomeworkPushExercises:'/homework/homeworkPushExercises',//获取作业中的推送习题
    GetHomeWorkAnswers:'/homework/answers', //获取推送习题的小题信息
    GetDeepSeekDajxVoice:'/deepseek/text2voice', //获取deepseek答案解析语音
    PostsendAiMessage:'/version/sendAiMessage', //获取流式AI答案
    PostDeepseekAddCot:'/deepseek/addCot', //上传AI文字以及语音
    GetDeepSeekExerciseVoice:"/deepseek/getDajxVoice", //获取已经上传的AI文字以及语音
    GetDeepSeekExerciseVariant:"/deepseek/getExerciseVariant", //获取错题本AI变式题
    GetDeepSeekAiLimit:"/deepseek/getAiLimit", //AI功能每日频次限制接口
    //作业新街口
    PostNewExercisesAnswer: '/v1/exercises/answer',//12xue单个习题作答接口 #### json格式传数据
    GetEoachHomework: '/v1/coach/homework',//获取精品推荐中的作业详情
    GetAnswerV2GetHomeWorkStatistics: '/answerV2/getHomeWorkStatistics',//新题型统计
    //课程
    GetCourseList: '/Student/lessons',//获取学生课程列表
    GetCourseChaptsUrl: '/Student/courseChapts',//获取课程的科目、章节等信息
    GetCourseinfoUrl: '/Course/info',//获取课程详情
    GetStudentexansStatusUrl: '/Student/exansStatus',//获取课程学生答题情况
    CourseXklists: '/course/xklists',
    Getv2courseCourseInfo: '/v2course/courseInfo',//学生家长获取讲义素材列表

    //自主学习practice/checkPayInfo
    GetLearningstuInfo: '/Learning/stuInfo',// 获取学生学段学科信息
    PostLearningstuInfo: '/Learning/stuInfo',//设置学生学段学科信息
    GetLearningpointXd: '/Learning/pointXd',//获取取存在知识点的学段
    GetLearningpointSubject: '/Learning/pointSubject',//获取取存在知识点的学科
    GetLearningcourseNumber: '/Learning/courseNumber',//获取指定知识点下的课程数量
    GetLearningcourselists: '/Learning/courselists',//获取指定知识点下的课程列表
    GetLearnigcourseInfoUrl: '/Learning/courseInfo',//获取课程的详细信息
    GetLearningcourseResourceUrl: '/Learning/courseResource',//获取习题资源详情
    GetLearningexercisesAnswerUrl: '/Learning/exercisesAnswer',//回答习题（只可回答一次）
    GetLearningcourseStaticUrl: '/Learning/courseStatic',//获取课程统计信息
    PutLearningstuInfo: '/Learning/stuInfo',//更新学生信息
    GetLearningsharelink: '/Learning/sharelink',//获取分离地址
    PutLearningcourseStatus: '/Learning/courseStatus',//更新课程进度
    GetArticle: '/index.php?r=article/list&page=0&limit=10&app=stu&type=&categoryA=index&categoryB=&tag=study',//获得文章列表

    //动态
    PostDynamicPublish: '/Dynamic/publish',//发布动态
    GetFollowUsers: '/Follow/users',//获取关注人列表
    GetFollowMoment: '/dynamic/followlists',//获取关注人动态列表
    GetRecommendUsers: '/Recommend/users',//获取推荐用户
    FollowUser: '/Dynamic/follow',//关注/取消关注用户
    PraiseDynamic: '/Dynamic/praise',//动态点赞
    DelDynamic: '/Dynamic/info',//删除动态
    GetSchoolMoment: '/Dynamic/classes',//获取班校动态
    GetTeacherdynamic: '/Dynamic/teacherlist',//获取名师动态
    GetDynamicCommentList: '/Dynamic/commentlists',//根据动态id获取动态评论
    GetDynamicInfoById: '/Dynamic/info',//根据动态ID获取动态内容
    DeleteReply: '/Dynamic/reply',//删除评论
    PostDynamicReply: '/Dynamic/reply',//评论/回复动态
    PostReprouctdynamic: '/Dynamic/transpond',//转发动态
    GetViewConversation: '/Dynamic/reply',//查看对话
    GetAtMe: '/Dynamic/atmelist',//获取@我的动态
    GetFocusMe: '/Follow/melists',//新关注用
    Praiselist: '/Dynamic/praiselist',//获取点赞我的动态
    getStudentAnswerList: '/Homework/stufaqlist',//学生获取作业问答列表
    PostDynamicTranspond: '/Dynamic/transpond',//转发动态
    GetSameAgeList: '/dynamic/sameagelist',//同龄人动态
    //GetViewConversation: '/Dynamic/reply',//查看对话
    GetDynamicSearcher: '/Dynamic/searchuser',//根据key模糊搜索用户信息 用于@用户
    GetDynamicspaceinfo: '/Dynamic/spaceinfo', //动态个人主页信息
    GetFollowmelists: '/Follow/melists',  //获取关注我的人
    GetSpacebackgroung: '/Space/background',//获取个人主页背景图地址
    PostCollect: '/Space/collectres',//动态中收藏资源
    DelateCollect: '/Space/collectres',//动态中取消收藏资源
    WeiboSwitch: '/switch/weibo',//判断学生是否可以发布动态或评论

    //消息  通知
    GetHomeworkMessage: '/Homework/stumessagelist',//获取作业消息列表
    GetCourseMessage: '/Course/messagelist',//获取课程消息列表
    GetReceivedComments: '/dynamic/receivedcomments',//获取用户收到的评论
    GetSentComments: '/dynamic/sentcomments',//获取用户发出的评论
    PostSendNotify: '/Notify/sendmessage',//发送普通通知消息
    GetNotifyNormalnotifyusers: '/Notify/userlist',//获取普通通知消息用户列表
    GetNotifyParentList: '/notify/parentlist',//获取普通通知状态列表
    GetStuFaqList: '/Homework/stufaqlist',//学生获取作业问答列表
    GetStuFaqListByZyid: '/homework/stuQuestionesbyzyid',//学生根据zyid获取作业问答列表
    GetStuNotify: '/notify/studentlist',//学生获取通知列表
    StuReadNotify: '/notify/parentread',//学生家长阅读通知状态变更
    Getpullcommon: '/dynamic/pullcommon', //所有用户@、评论、赞、关注消息
    Getpullstudent: '/dynamic/pullstudent',//学生最新动态状态获取
    Getpullmessage: '/notify/pullmessage',//消息通知提醒
    Getstumessage: '/student/pullfaqmessage',//学生获取作业问答消息
    Getclassmessage: '/course/pullmessage',//课程消息
    Getmessagelist: '/exam/messagelist',//考试消息中查看消息列表
    Getnewexammessage: '/pullmessage/newexammessage',//考试消息中发送消息计数
    Getstuhomeworkmessage: '/Homework/pullmessage',//学生获取作业消息列表
    GetResourceInfo: '/Space/resourceinfo',//动态内获取课程、作业、习题、素材详情
    //课堂
    GetStuLesson: '/Student/startLesson',//获取班级服务ip
    GetKTGKurl: '/class_check',//课堂管控
    //学分动物园
    GetGrouptechCreditZoo: '/grouptech/CreditZoo',//学分动物园
    GetGrouptechGroupRank: '/grouptech/groupRank',//学生根据班级id获取小组学分排行
    GetGrouptechGroupScore: '/grouptech/groupScore',//学生根据班级id获取小组学分情况
    GetGrouptechStuScoreRank: '/grouptech/stuScoreRank',//获取学生学分动物园排行
    GetGrouptechStuScore: '/grouptech/stuScore',//获取学生学分动物园的个人总分
    GetGrouptechRecord: '/grouptech/record',//获取学生学分记录
    GetClassInfoByStu: '/class/infoByStu',//获取某学生的班级及年级信息

    //分组学习
    GetGrouptechLists: '/grouptech/lists',//分组学习获取分组信息
    GetGrouptechMembers: '/grouptech/members',//分组学习获取小组内成员信息
    GetGrouptechEvaluate: '/grouptech/evaluate',//根据学校id获取评分项/评分描述
    GetGrouptechStulists: '/grouptech/stulists',//通过班级id获取班级内学生学分情况
    PostGrouptechStuscoring: '/grouptech/stuscoring',//学生组内互评
    GetGrouptechStutasks: '/grouptech/stutasks',//分组学习学生获取任务列表
    PostGrouptechAnswer: '/grouptech/answer',//分组学习提交答题信息
    GetGrouptechScoreByTask: '/grouptech/scoreByTask',//获取组内互评信息


    //获取应用市场列表
    ApiV1DeviceGetappinfo: '/api/v1/device/getappinfo',//获取应用列表-getappinfo
    PadApps: '/appstore/apps', //获取应用市场列表

    //我的设备相关
    Checkdevice: '/appstore/checkdevice', //判断学习机是否已经验证登记
    Checkpassword: '/appstore/checkpassword', //根据动态密码验证学习机
    PostDevice: '/appstore/device', // 添加学习机设备信息
    Channels: '/appstore/channels', //获取渠道商或客户经理列表
    CardInfo: '/Card/info', //获取卡号信息

    //进入课堂判断学生付费状态
    GetV1ClasspayStatus: '/v1/classpay/status',//进入课堂判断学生付费状态
    GetV1ClasspayServices: '/v1/classpay/services',//进入课堂判断学生付费状态
    PostV1ClasspayTrial: '/v1/classpay/trial',//添加免费试用期时间
    GetV1ClasspaybuyServices: '/v1/classpay/buyservices',//根据uid获取已购买的服务列表
    // GetV1ClasspayUserpays:'/v1/classpay/userpays',//获取用户消费记录
    PostV1ClasspayOrder: '/v1/classpay/order',//用户付费创建订单
    GetParentlist: '/Parent/lists',//获取家长列表
    PostV1ClasspayStatus: '/v1/classpay/paystatus',//同步回调更新ZF状态

    //进入作业判断收费
    GetV1CoachPayinfo: '/v1/coach/payinfo',
    GetV1BoutiquePrices: '/v1/boutique/prices',
    GetV1BoutiquePayorder: '/v1/boutique/payorder',
    PostV1BoutiquePaynotify: '/v1/boutique/paynotify',//同步回调更新ZF状态
    GetV1ClasspayUserpays: '/v1/classpay/userpays',//获取用户消费记录
    //学生同步辅导
    getStudentBoutique: '/student/boutique',//学生同步辅导
    PostV1BoutiquePayorder: '/v1/boutique/payorder',
    GetClasspayPaystatusbycharge: '/classpay/paystatusbycharge',
    GetV1BoutiqueCheckresrole: '/v1/boutique/checkresrole',
    GetQiNiuToken: '/qiniu/uptoken',//新的七牛
    //智能导练
    GetPracticeSubject: '/practice/subject',// 获取科目列表
    GetPracticeChaptlist: '/practice/chaptlist',//获取章节列表
    GetPracticeDatalist: '/practice/datalist',//获取起始套题列表
    GetPracticeUnlock: '/practice/unlock',// 验证解锁码
    GetPracticeVolumeprice: '/practice/volumeprice',// 获取智能导练分册价格
    GetPracticePayorder: '/practice/payorder',// 购买智能导练创建订单
    GetPracticePracticeinfo: '/practice/practiceinfo',
    GetPracticePayStatus: '/practice/payStatus',//  扫码ZF获取ZF状态
    GetPracticeMicroclassinfo: '/practice/Microclassinfo',//  获取微课详情
    PostPracticeUpdateComplete: '/practice/updateComplete',//  修改精品套题提交状态
    PostPracticeDoHomework: '/practice/doHomework',//  精品套题答案提交 json格式传递数据
    GetPracticeBoutiqueHwStatistics: '/practice/BoutiqueHwStatistics',//  学生答题后统计
    GetPracticeIndividExercises: '/practice/individExercises',//  学生获取个性推荐习题列表
    GetPracticeGetCourseList: '/practice/getCourselist', //获取精品课程列表
    GetPracticeCourseInfo: '/practice/courseinfo', //获取精品课程详情


    GetPracticeCheckPayInfo: '/practice/checkPayInfo',  //用户是否可以查看精品资源
    PostPracticeSetPracticeLog: '/practice/setPracticeLog',//自主学习课增加记录
    GetUserSchoolinfo: '/user/schoolinfo', //获取学校id
    PostExercisesTriggerWrong: '/exercises/triggerWrong',//错题本改版 ，添加错题本、移除错题本、表及重点
    //家长绑定孩子
    GetStudentAllparents: '/student/allParents', //查看家长列表--包括待验证的家长
    GetStudentVerifyParent: '/student/verifyParent', // 验证家长绑定申请通过或者不通过
    PostSyudentunbindparent: '/student/unbindParent',  //学生解除与家长的绑定关系
    GetSpaceResourceinfo: '/space/resourceinfo',//动态内获取课程、作业、习题、素材详情
    GetResourceCodeMaterialInfo: '/resource/codeMaterialInfo',// 学生扫码查看素材


    //新版作业
    PostAnswerDoHomework: '/answer/doHomework',  //作业答题统一提交 json格式传递数据
    PostAnswerUpdateHomeworkComplete: '/answer/updateHomeworkComplete',  //修改作业完成状态
    PostAnswerUpdateAnswerLog: '/answer/updateAnswerLog',  //记录作业资源作答时间
    GetStudentGetstuhwlist: '/student/getstuhwlist', // 学生获取作业列表（统一提交）基本信息
    GetStudentAuditNotify: '/student/auditNotify', //学生获取推送消息
    //新题型
    PostAnswerV2SoHomework: '/answerV2/doHomework', //14.25. v2作业统一提交
    PostV2exercisesAnswer: '/v2exercises/answer', //14.28. v2单个习题作答接口 #### json格式传数据


    //学生课堂
    GetCmdToPc: '/interact', //PC端的命令接口 好多都是这个
    GetGroup: '/group', //打开分组教学
    PostGroupAnswer: '/group_answer', //分组教学答题
    GetQiangda: '/qiangda', //打开分组教学
    PostAnswer: '/answer', //打开分组教学
    GetVirtualclass: '/virtualclass/info', //学生获取虚拟课堂信息
    GetUiaConfig: '/uia/config',
    GetCheckStuOnLine: '/check_students_online', //学生课堂在线
    //课堂答题修改
    GetExercisesFormation: '/course/sExercisesFormation',//学生获取习题、组题数据
    PostCourseAnswers: '/course/doCourseAnswers', //课堂检测答题提交新业务接口v2（包含限时答题，组题答题）提交json

    //学生打分
    GetScorecheckAudit: '/score/checkAudit', //获取用户是否有打分权限
    // GetGrouptechStulists:'/grouptech/stulists',//通过班级id获取班级内学生学分情况
    PostGrouptechUscoring: '/grouptech/uscoring',// 分组教学老师给学生打分
    GetCheckScoreAudit: '/score/checkLessonAudit', //获取学生是否有课堂打分权限
    GetGrouptechList: '/grouptech/lists', //获取分组信息
    GetIndexCheck: '/index/check', //检查学校服务是否关闭

    //学生批阅
    GetCorrectGetHomeworkCorrectList: '/correct/getHomeworkCorrectList',// 待批主观题列表
    GetcorrectMobileExercisesIndex: '/correct/mobileExercisesIndex',//新版批阅
    GetcorrectAnswerOptionStudents: '/correct/answerOptionStudents',//新版批阅批阅列表
    PostEexercisesReviewAnswer: '/exercises/reviewAnswer',
    PostExercisesReviewImages: '/exercises/reviewImages',//作业批阅图片上传
    GetGuideLists: '/guide/lists',//用户指南列表
    GetGuideInfo: '/guide/info',//用户指南详情
    GuidePraise: '/guide/praise',//用户指南点赞


    settingGetSchoolset: '/setting/getSchoolset',//获取学校配置开关
    //学生考试
    GetPaperSubjects: '/paper/subjects',// 学生获取有考试的科目
    GetPaperLists: '/paper/lists',// 学生获取已考试列表
    GetPaperSoonexam: '/paper/soonexam',// 学生获取待考试列表
    GetPaperStuinfo: '/paper/stuinfo',// 学生获取考试详情
    GetPaperPaperExercisesAnswer: '/paper/paperExercisesAnswer',// 考试获取习题and学生答题详情
    PostPaperDoPaper: '/paper/doPaper', //考试答案提交
    GetPaperStuStasticinfo: '/paper/stuStasticinfo',// 学生获取考试统计
    GetPaperTimes: '/paper/times',//
    GetPublicNowtime: '/public/nowtime',//获取当前时间
    GetPaperCheckfinish: '/paper/checkfinish',//学生考试过程中验证结束时间

    postLoginSync: '/login/sync',//各端同步登录状态

    GetWeiboSetting: '/weibo/setting',//获取微博各项端口是否开放

    GetRenewCheck: '/parentcharge/getmsginfo',//检测缴费支付
    GetHomeworkHomeworkchapt: '/homework/homeworkchapt',//作业筛选
    GetClassinfoHistoryclasslist: '/classinfo/historyclasslist',//获取我所在的班级包含历史
    PostFaqDelfaq: '/faq/delfaq',//删除作业提问

    GetSelectCourseStuOpenSelect: '/selectcourse/stuOpenSelect',//学生获取选课状态
    GetSelectCourseStuClassList: '/selectcourse/stuClassList',//学生获取走班班级情况
    PostSelectCourse: '/selectcourse/selectCourse',//学生选课
    GetStudentStudentgradeid: '/student/studentgradeid',//获取学生高中年级的id

    //线上会员
    GetPayfeeUserInfo: '/payfee/getUseInfo',//获取套餐信息
    GetPayfeeCountByType: '/payfee/getCountByType',//获取单个功能剩余使用次数
    PostPayfeeOperationLog: '/payfee/addOperationLog',//增加使用记录
    PostPayfeeActivatePackage: '/payfee/activatePackage',//激活套餐
    GetPayfeeActivateCodeInfo: '/payfee/ActivateCodeInfo',//获取激活码信息
    GetMaterialMaterialServer: '/material/materialServer',//获取二维码
    GetpayfeeUseLog: '/payfee/getUseLog',//获取功能使用记录

    //AI模型相关业务
    PostAIofflineAiCorrect: '/ai/offlineAiCorrect',//线下作文调用AI批阅
    GetFindOfflineRedTip: '/AI/findOfflineRedTip',//获取AI线下作文批阅批阅成功红点
    GetAiOfflineCorrectList:'/ai/getAiOfflineCorrectList', //线下作文调用批阅历史
    GetClassSwitch: '/ai/getClassSwitch', //课堂老师控制学生功能开关状态获取
    GetPhetScienceExperiment:'/phet/scienceExperiment',

    WrongPonit:'/answer/wrongpointStats'
    
};

//过滤两头空格
function trimStr(str) {
    return str.replace(/(^\s*)|(\s*$)/g, "");
}

//正确答案排序
function stringSort(string) {
    return string.split("").sort().join('');
}

function clear_emoji(content) {
    var ranges = [
        '\ud83c[\udf00-\udfff]',
        '\ud83d[\udc00-\ude4f]',
        '\ud83d[\ude80-\udeff]'
    ];
    var emojireg = content.replace(new RegExp(ranges.join('|'), 'g'), '');
    var clearString = emojireg.replace(/\uD83C[\uDF00-\uDFFF]|\uD83D[\uDC00-\uDE4F]/g, "");
    clearString = clearString.replace(/(?:0\u20E3|1\u20E3|2\u20E3|3\u20E3|4\u20E3|5\u20E3|6\u20E3|7\u20E3|8\u20E3|9\u20E3|#\u20E3|\*\u20E3|\uD83C(?:\uDDE6\uD83C(?:\uDDE8|\uDDE9|\uDDEA|\uDDEB|\uDDEC|\uDDEE|\uDDF1|\uDDF2|\uDDF4|\uDDF6|\uDDF7|\uDDF8|\uDDF9|\uDDFA|\uDDFC|\uDDFD|\uDDFF)|\uDDE7\uD83C(?:\uDDE6|\uDDE7|\uDDE9|\uDDEA|\uDDEB|\uDDEC|\uDDED|\uDDEE|\uDDEF|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF6|\uDDF7|\uDDF8|\uDDF9|\uDDFB|\uDDFC|\uDDFE|\uDDFF)|\uDDE8\uD83C(?:\uDDE6|\uDDE8|\uDDE9|\uDDEB|\uDDEC|\uDDED|\uDDEE|\uDDF0|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF5|\uDDF7|\uDDFA|\uDDFB|\uDDFC|\uDDFD|\uDDFE|\uDDFF)|\uDDE9\uD83C(?:\uDDEA|\uDDEC|\uDDEF|\uDDF0|\uDDF2|\uDDF4|\uDDFF)|\uDDEA\uD83C(?:\uDDE6|\uDDE8|\uDDEA|\uDDEC|\uDDED|\uDDF7|\uDDF8|\uDDF9|\uDDFA)|\uDDEB\uD83C(?:\uDDEE|\uDDEF|\uDDF0|\uDDF2|\uDDF4|\uDDF7)|\uDDEC\uD83C(?:\uDDE6|\uDDE7|\uDDE9|\uDDEA|\uDDEB|\uDDEC|\uDDED|\uDDEE|\uDDF1|\uDDF2|\uDDF3|\uDDF5|\uDDF6|\uDDF7|\uDDF8|\uDDF9|\uDDFA|\uDDFC|\uDDFE)|\uDDED\uD83C(?:\uDDF0|\uDDF2|\uDDF3|\uDDF7|\uDDF9|\uDDFA)|\uDDEE\uD83C(?:\uDDE8|\uDDE9|\uDDEA|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF6|\uDDF7|\uDDF8|\uDDF9)|\uDDEF\uD83C(?:\uDDEA|\uDDF2|\uDDF4|\uDDF5)|\uDDF0\uD83C(?:\uDDEA|\uDDEC|\uDDED|\uDDEE|\uDDF2|\uDDF3|\uDDF5|\uDDF7|\uDDFC|\uDDFE|\uDDFF)|\uDDF1\uD83C(?:\uDDE6|\uDDE7|\uDDE8|\uDDEE|\uDDF0|\uDDF7|\uDDF8|\uDDF9|\uDDFA|\uDDFB|\uDDFE)|\uDDF2\uD83C(?:\uDDE6|\uDDE8|\uDDE9|\uDDEA|\uDDEB|\uDDEC|\uDDED|\uDDF0|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF5|\uDDF6|\uDDF7|\uDDF8|\uDDF9|\uDDFA|\uDDFB|\uDDFC|\uDDFD|\uDDFE|\uDDFF)|\uDDF3\uD83C(?:\uDDE6|\uDDE8|\uDDEA|\uDDEB|\uDDEC|\uDDEE|\uDDF1|\uDDF4|\uDDF5|\uDDF7|\uDDFA|\uDDFF)|\uDDF4\uD83C\uDDF2|\uDDF5\uD83C(?:\uDDE6|\uDDEA|\uDDEB|\uDDEC|\uDDED|\uDDF0|\uDDF1|\uDDF2|\uDDF3|\uDDF7|\uDDF8|\uDDF9|\uDDFC|\uDDFE)|\uDDF6\uD83C\uDDE6|\uDDF7\uD83C(?:\uDDEA|\uDDF4|\uDDF8|\uDDFA|\uDDFC)|\uDDF8\uD83C(?:\uDDE6|\uDDE7|\uDDE8|\uDDE9|\uDDEA|\uDDEC|\uDDED|\uDDEE|\uDDEF|\uDDF0|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF7|\uDDF8|\uDDF9|\uDDFB|\uDDFD|\uDDFE|\uDDFF)|\uDDF9\uD83C(?:\uDDE6|\uDDE8|\uDDE9|\uDDEB|\uDDEC|\uDDED|\uDDEF|\uDDF0|\uDDF1|\uDDF2|\uDDF3|\uDDF4|\uDDF7|\uDDF9|\uDDFB|\uDDFC|\uDDFF)|\uDDFA\uD83C(?:\uDDE6|\uDDEC|\uDDF2|\uDDF8|\uDDFE|\uDDFF)|\uDDFB\uD83C(?:\uDDE6|\uDDE8|\uDDEA|\uDDEC|\uDDEE|\uDDF3|\uDDFA)|\uDDFC\uD83C(?:\uDDEB|\uDDF8)|\uDDFD\uD83C\uDDF0|\uDDFE\uD83C(?:\uDDEA|\uDDF9)|\uDDFF\uD83C(?:\uDDE6|\uDDF2|\uDDFC)))|[\xA9\xAE\u203C\u2049\u2122\u2139\u2194-\u2199\u21A9\u21AA\u231A\u231B\u2328\u23CF\u23E9-\u23F3\u23F8-\u23FA\u24C2\u25AA\u25AB\u25B6\u25C0\u25FB-\u25FE\u2600-\u2604\u260E\u2611\u2614\u2615\u2618\u261D\u2620\u2622\u2623\u2626\u262A\u262E\u262F\u2638-\u263A\u2648-\u2653\u2660\u2663\u2665\u2666\u2668\u267B\u267F\u2692-\u2694\u2696\u2697\u2699\u269B\u269C\u26A0\u26A1\u26AA\u26AB\u26B0\u26B1\u26BD\u26BE\u26C4\u26C5\u26C8\u26CE\u26CF\u26D1\u26D3\u26D4\u26E9\u26EA\u26F0-\u26F5\u26F7-\u26FA\u26FD\u2702\u2705\u2708-\u270D\u270F\u2712\u2714\u2716\u271D\u2721\u2728\u2733\u2734\u2744\u2747\u274C\u274E\u2753-\u2755\u2757\u2763\u2764\u2795-\u2797\u27A1\u27B0\u27BF\u2934\u2935\u2B05-\u2B07\u2B1B\u2B1C\u2B50\u2B55\u3030\u303D\u3297\u3299]|\uD83C[\uDC04\uDCCF\uDD70\uDD71\uDD7E\uDD7F\uDD8E\uDD91-\uDD9A\uDE01\uDE02\uDE1A\uDE2F\uDE32-\uDE3A\uDE50\uDE51\uDF00-\uDF21\uDF24-\uDF93\uDF96\uDF97\uDF99-\uDF9B\uDF9E-\uDFF0\uDFF3-\uDFF5\uDFF7-\uDFFF]|\uD83D[\uDC00-\uDCFD\uDCFF-\uDD3D\uDD49-\uDD4E\uDD50-\uDD67\uDD6F\uDD70\uDD73-\uDD79\uDD87\uDD8A-\uDD8D\uDD90\uDD95\uDD96\uDDA5\uDDA8\uDDB1\uDDB2\uDDBC\uDDC2-\uDDC4\uDDD1-\uDDD3\uDDDC-\uDDDE\uDDE1\uDDE3\uDDEF\uDDF3\uDDFA-\uDE4F\uDE80-\uDEC5\uDECB-\uDED0\uDEE0-\uDEE5\uDEE9\uDEEB\uDEEC\uDEF0\uDEF3]|\uD83E[\uDD10-\uDD18\uDD80-\uDD84\uDDC0]/g, '');
    // var regStr = /[\uD83C|\uD83D|\uD83E][\uDC00-\uDFFF][\u200D|\uFE0F]|[\uD83C|\uD83D|\uD83E][\uDC00-\uDFFF]|[0-9|*|#]\uFE0F\u20E3|[0-9|#]\u20E3|[\u203C-\u3299]\uFE0F\u200D|[\u203C-\u3299]\uFE0F|[\u2122-\u2B55]|\u303D|[\A9|\AE]\u3030|\uA9|\uAE|\u3030/ig;
    // clearString = clearString.replace(regStr,'');
    return clearString.replace(/(^\s*)|(\s*$)/g, "");
}

function toast12xue(msg) {
    api.toast({
        msg: msg,
        duration: 2000,
        location: 'middle'
    });
}

function glbq(input, allowed) {
    allowed = (((allowed || "") + "").toLowerCase().match(/<[a-z][a-z0-9]*>/g) || []).join(''); // making sure the allowed arg is a string containing only tags in lowercase (<a><b><c>)
    var tags = /<\/?([a-z][a-z0-9]*)\b[^>]*>/gi,
        commentsAndPhpTags = /<!--[\s\S]*?-->|<\?(?:php)?[\s\S]*?\?>/gi;
    return input.replace(commentsAndPhpTags, '').replace(tags, function ($0, $1) {
        return allowed.indexOf('<' + $1.toLowerCase() + '>') > -1 ? $0 : '';
    });
}

/*
* 判断密码是否为简单密码
* */
function checkPassword(psd) {
    var rightPsd = false;
    if ((new RegExp("(\\S)*(\\S)\\2{" + (psd.length - 1) + "}(\\S)*", "g").test(psd)) || psd == '123456' || psd == '654321') {
        rightPsd = true;
    }
    return rightPsd;
}

function base64encode(input) {
    // private property
    var _keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

    var output = "";
    var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
    var i = 0;

    var _utf8_encode = function (string) {
        string = string.replace(/\r\n/g, "\n");
        var utftext = "";
        for (var n = 0; n < string.length; n++) {
            var c = string.charCodeAt(n);
            if (c < 128) {
                utftext += String.fromCharCode(c);
            } else if ((c > 127) && (c < 2048)) {
                utftext += String.fromCharCode((c >> 6) | 192);
                utftext += String.fromCharCode((c & 63) | 128);
            } else {
                utftext += String.fromCharCode((c >> 12) | 224);
                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
                utftext += String.fromCharCode((c & 63) | 128);
            }

        }
        return utftext;
    };

    input = _utf8_encode(input);
    while (i < input.length) {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);
        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;
        if (isNaN(chr2)) {
            enc3 = enc4 = 64;
        } else if (isNaN(chr3)) {
            enc4 = 64;
        }
        output = output +
            _keyStr.charAt(enc1) + _keyStr.charAt(enc2) +
            _keyStr.charAt(enc3) + _keyStr.charAt(enc4);
    }

    return output;
}
