.class public Lcom/apicloud/ijkplayer/RootView;
.super Landroid/widget/RelativeLayout;
.source "RootView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/ijkplayer/RootView$MyGestureListener;,
        Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;
    }
.end annotation


# static fields
.field private static final POSITION_REFRESH_TIME:I = 0x1f4


# instance fields
.field autoPlay:Z

.field private barTimer:Ljava/util/Timer;

.field private currentPositionInMilliSeconds:J

.field enableLooping:Z

.field private volatile isFullScreen:Z

.field private isMaxSetted:Z

.field private isReplay:Z

.field mBottomHide:Z

.field private mBottomView:Landroid/widget/RelativeLayout;

.field private mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

.field private mContext:Landroid/content/Context;

.field private mConverImg:Landroid/widget/ImageView;

.field private mCoverImagePath:Ljava/lang/String;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDetector:Landroid/view/GestureDetector;

.field private mFullImageView:Landroid/widget/ImageView;

.field private mFullImg:Ljava/lang/String;

.field mFullScreenImg:Ljava/lang/String;

.field private mFullScreenListener:Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;

.field private mH:I

.field mHeadHide:Z

.field private mHeadView:Landroid/widget/RelativeLayout;

.field private mListener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

.field private mPath:Ljava/lang/String;

.field mPauseImgPath:Ljava/lang/String;

.field private mPlayImg:Landroid/widget/ImageView;

.field mPlayImgPath:Ljava/lang/String;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mW:I

.field private mX:I

.field private mY:I

.field private mainThreadHandler:Landroid/os/Handler;

.field mbIsDragging:Z

.field private module:Lcom/apicloud/ijkplayer/IJKPlayer;

.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private positionTimer:Ljava/util/Timer;

.field private totalTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIIILcom/apicloud/ijkplayer/IJKPlayer;Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;)V
    .locals 3

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenImg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadHide:Z

    .line 59
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomHide:Z

    .line 464
    new-instance v1, Lcom/apicloud/ijkplayer/RootView$3;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/RootView$3;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    iput-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mListener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    .line 720
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    .line 759
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mainThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    .line 794
    iput-wide v1, p0, Lcom/apicloud/ijkplayer/RootView;->currentPositionInMilliSeconds:J

    .line 846
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isMaxSetted:Z

    .line 887
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->mbIsDragging:Z

    .line 952
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isReplay:Z

    .line 80
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 82
    iput p3, p0, Lcom/apicloud/ijkplayer/RootView;->mW:I

    .line 83
    iput p4, p0, Lcom/apicloud/ijkplayer/RootView;->mH:I

    .line 84
    iput p5, p0, Lcom/apicloud/ijkplayer/RootView;->mX:I

    .line 85
    iput p6, p0, Lcom/apicloud/ijkplayer/RootView;->mY:I

    .line 86
    iput-object p7, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    .line 87
    iput-object p8, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenListener:Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;

    const-string p3, "autoPlay"

    const/4 p4, 0x1

    .line 88
    invoke-virtual {p2, p3, p4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, Lcom/apicloud/ijkplayer/RootView;->autoPlay:Z

    const-string p3, "coverImg"

    .line 89
    invoke-virtual {p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/apicloud/ijkplayer/RootView;->mCoverImagePath:Ljava/lang/String;

    const-string p3, "enableLooping"

    .line 90
    invoke-virtual {p2, p3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/RootView;->enableLooping:Z

    .line 91
    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x80

    invoke-virtual {p2, p3}, Landroid/view/Window;->addFlags(I)V

    .line 92
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;

    invoke-direct {p3, p0}, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mDetector:Landroid/view/GestureDetector;

    .line 93
    new-instance p1, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;

    invoke-direct {p1, p0}, Lcom/apicloud/ijkplayer/RootView$MyGestureListener;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 94
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->loadLayout()V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->startPositionTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->stopPositionTimer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/apicloud/ijkplayer/RootView;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->mainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->onPositionUpdate()V

    return-void
.end method

.method static synthetic access$1600(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/IJKPlayer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/apicloud/ijkplayer/RootView;)Ljava/util/Timer;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/apicloud/ijkplayer/RootView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->hideOuterAfterFiveSeconds()V

    return-void
.end method

.method static synthetic access$1900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_gestrue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/apicloud/ijkplayer/RootView;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/apicloud/ijkplayer/RootView;->currentPositionInMilliSeconds:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/apicloud/ijkplayer/RootView;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->updatePostion(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/apicloud/ijkplayer/RootView;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->changeState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/apicloud/ijkplayer/RootView;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/RootView;->isReplay:Z

    return p0
.end method

.method static synthetic access$600(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/apicloud/ijkplayer/RootView;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/apicloud/ijkplayer/RootView;->mCoverImagePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/RootView;->setCoverImg(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method private addColorProgress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 423
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    aput p1, v1, p2

    .line 424
    invoke-static {p3}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result p1

    const/4 p3, 0x2

    aput p1, v1, p3

    new-array p1, v0, [[I

    new-array v0, p2, [I

    const v3, 0x10100d4

    aput v3, v0, v2

    aput-object v0, p1, v2

    new-array v0, p2, [I

    const v3, 0x1010138

    aput v3, v0, v2

    aput-object v0, p1, p2

    new-array p2, p2, [I

    const v0, 0x1010011

    aput v0, p2, v2

    aput-object p2, p1, p3

    .line 429
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p1, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p2
.end method

.method private addStateDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 439
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 440
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 442
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 443
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 445
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 447
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v3, 0x101009c

    aput v3, v2, v4

    .line 448
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    .line 449
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v4, [I

    .line 450
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private callback_click(Ljava/lang/String;)V
    .locals 2

    .line 697
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 698
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "click"

    .line 699
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 700
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private callback_gestrue(Ljava/lang/String;)V
    .locals 2

    .line 1181
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 1182
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gestureTap"

    .line 1183
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1184
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1188
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private callback_state(Ljava/lang/String;)V
    .locals 2

    .line 709
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    .line 711
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 712
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private changeState(I)V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/apicloud/ijkplayer/RootView$4;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/ijkplayer/RootView$4;-><init>(Lcom/apicloud/ijkplayer/RootView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private formatMilliSecond(I)Ljava/lang/String;
    .locals 6

    .line 874
    div-int/lit16 p1, p1, 0x3e8

    .line 875
    div-int/lit16 v0, p1, 0xe10

    .line 876
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 877
    rem-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 880
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v4

    const-string p1, "%02d:%02d:%02d"

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 882
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%02d:%02d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private hideOuterAfterFiveSeconds()V
    .locals 4

    .line 726
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 728
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    .line 730
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    .line 731
    new-instance v1, Lcom/apicloud/ijkplayer/RootView$5;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/RootView$5;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private loadLayout()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mo_ijkplayer_player"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    .line 100
    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v1, "root"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/RootView;->mW:I

    iget v2, p0, Lcom/apicloud/ijkplayer/RootView;->mH:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v1, "mo_video"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    .line 106
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v1, "iv_coverImg"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mListener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setOnPlayStateListener(Lcom/apicloud/ijkplayer/OnPlayStateListener;)V

    .line 110
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->setHeadView()V

    .line 111
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->setFootView()V

    .line 113
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->playVideo(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    .line 115
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "enableFull"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->fullScreen()V

    :cond_0
    return-void
.end method

.method private onPositionUpdate()V
    .locals 8

    .line 797
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 800
    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPositionUpdate getCurrentPosition= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-wide v2, p0, Lcom/apicloud/ijkplayer/RootView;->currentPositionInMilliSeconds:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->getIsDragging()Z

    move-result v6

    if-nez v6, :cond_1

    .line 804
    iput-wide v0, p0, Lcom/apicloud/ijkplayer/RootView;->currentPositionInMilliSeconds:J

    .line 807
    :cond_1
    iget-object v6, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_2

    return-void

    .line 812
    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->getIsDragging()Z

    move-result v6

    if-nez v6, :cond_3

    .line 813
    iget-object v6, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v6}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getDuration()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 815
    invoke-virtual {p0, v6, v7}, Lcom/apicloud/ijkplayer/RootView;->setMax(J)V

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3

    long-to-int v0, v0

    .line 818
    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->setProgress(I)V

    :cond_3
    return-void
.end method

.method private playVideo(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mPath:Ljava/lang/String;

    .line 458
    invoke-virtual {p1, v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 460
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->enableLooping:Z

    invoke-virtual {p1, v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setLoop(Z)V

    return-void
.end method

.method private setCoverImg(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 528
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 530
    :cond_0
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 532
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private setFootView()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "isLive"

    .line 258
    :try_start_0
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "styles"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "foot"

    .line 259
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "#fff"

    const/16 v5, 0xe

    const-string v6, "rgba(161,161,161,0.5)"

    const/16 v7, 0x2c

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v9, "bg"

    .line 271
    invoke-virtual {v2, v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "height"

    .line 272
    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "hide"

    .line 273
    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomHide:Z

    const-string v10, "playSize"

    .line 275
    invoke-virtual {v2, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v10, "playImg"

    .line 276
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    const-string v10, "pauseImg"

    .line 277
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/apicloud/ijkplayer/RootView;->mPauseImgPath:Ljava/lang/String;

    const-string v10, "timeSize"

    .line 279
    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v10, "timeColor"

    .line 280
    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v10, "sliderImg"

    .line 282
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "verticalImg"

    .line 284
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImg:Ljava/lang/String;

    const-string v11, "horizontalImg"

    .line 285
    invoke-virtual {v2, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenImg:Ljava/lang/String;

    move v2, v7

    move v7, v9

    goto :goto_0

    :cond_0
    move v2, v7

    const/4 v10, 0x0

    .line 288
    :goto_0
    iget-object v9, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v11, "rl_bottom"

    invoke-static {v11}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    .line 289
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    const/4 v12, -0x1

    invoke-direct {v9, v12, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 290
    invoke-static {v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v11, 0xc

    .line 291
    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 292
    iget-object v11, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v9, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 294
    iget-boolean v6, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomHide:Z

    if-eqz v6, :cond_1

    .line 295
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    :cond_1
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v9, "iv_play"

    invoke-static {v9}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    .line 299
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v9

    .line 300
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    invoke-direct {v6, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    .line 301
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0xf

    .line 302
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    iget-object v11, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-boolean v6, v0, Lcom/apicloud/ijkplayer/RootView;->autoPlay:Z

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    .line 305
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v6}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 306
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v11}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    goto :goto_1

    .line 308
    :cond_2
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    goto :goto_1

    .line 311
    :cond_3
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    .line 314
    :goto_1
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v13, "tv_current_progress"

    invoke-static {v13}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    .line 317
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v6, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "isShowTimeLable"

    const/16 v14, 0x8

    if-eqz v6, :cond_4

    .line 318
    :try_start_2
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 320
    :cond_4
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v6, v13, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 321
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_5
    :goto_2
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v6, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 325
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v6, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 326
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 327
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 328
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 332
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v6, "iv_full_screen"

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    .line 333
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v6, "isFullBtn"

    invoke-virtual {v3, v6, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 334
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 336
    :cond_6
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    .line 337
    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xb

    .line 338
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 339
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 340
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 341
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImg:Ljava/lang/String;

    invoke-direct {v0, v3, v11}, Lcom/apicloud/ijkplayer/RootView;->setFullScreenImage(Ljava/lang/String;Z)V

    .line 344
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v6, "tv_total_time"

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    .line 347
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 348
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 350
    :cond_7
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3, v13, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 351
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    :cond_8
    :goto_3
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 355
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 357
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 358
    iget-object v6, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 360
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v4, "sb_progress"

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    .line 363
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v3, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 364
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v14}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_4

    .line 366
    :cond_9
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "isShowProcessView"

    invoke-virtual {v1, v3, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 367
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 371
    :cond_a
    :goto_4
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 372
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 373
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 374
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 375
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v1, v11, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 376
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 377
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 378
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "widget://"

    .line 380
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 381
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 382
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 384
    :cond_b
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 387
    :cond_c
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mo_ijkplayer_seekbar_ratio"

    .line 388
    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 387
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 391
    :goto_5
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/apicloud/ijkplayer/RootView$2;

    invoke-direct {v2, v0}, Lcom/apicloud/ijkplayer/RootView$2;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method private setFullScreen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 613
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 614
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 615
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 616
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 617
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 618
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 620
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 621
    iget v0, p0, Lcom/apicloud/ijkplayer/RootView;->mW:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 622
    iget v0, p0, Lcom/apicloud/ijkplayer/RootView;->mH:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 623
    iget v0, p0, Lcom/apicloud/ijkplayer/RootView;->mX:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 624
    iget v0, p0, Lcom/apicloud/ijkplayer/RootView;->mY:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 625
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private setFullScreenImage(Ljava/lang/String;Z)V
    .locals 1

    .line 631
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 633
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 636
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_btn_to_fullscreen"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 638
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mFullImageView:Landroid/widget/ImageView;

    const-string p2, "btn_to_mini"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private setHeadView()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "head"

    .line 123
    :try_start_0
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "styles"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "#fff"

    const/16 v6, 0x14

    const-string v7, "rgba(161,161,161,0.5)"

    const/4 v8, 0x5

    const/16 v9, 0x2c

    const/4 v10, 0x0

    if-eqz v2, :cond_3

    :try_start_1
    const-string v11, "bg"

    .line 133
    invoke-virtual {v2, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "height"

    .line 134
    invoke-virtual {v2, v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "hide"

    .line 136
    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadHide:Z

    const-string v12, "backSize"

    .line 138
    invoke-virtual {v2, v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 139
    iget-object v13, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v14, "backImg"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "titleSize"

    .line 141
    invoke-virtual {v2, v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v14, "titleColor"

    .line 142
    invoke-virtual {v2, v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "customButtons"

    .line 144
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 145
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 146
    iget-object v14, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v15, "rl_right"

    .line 147
    invoke-static {v15}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 148
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move v15, v10

    move/from16 v16, v15

    .line 150
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v15, v5, :cond_2

    .line 151
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "w"

    .line 152
    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "h"

    .line 153
    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "rightMagin"

    .line 154
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v8, "img"

    .line 155
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v2

    const-string v2, "imgSelected"

    .line 156
    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setId(I)V

    .line 159
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v20, v6

    invoke-static {v10}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    .line 160
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    invoke-direct {v4, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 162
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v16, v16, v9

    .line 164
    invoke-static/range {v16 .. v16}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int v16, v16, v10

    const/16 v3, 0xf

    .line 167
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    invoke-virtual {v14, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-direct {v0, v8, v2}, Lcom/apicloud/ijkplayer/RootView;->addStateDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_1
    new-instance v2, Lcom/apicloud/ijkplayer/RootView$1;

    invoke-direct {v2, v0, v5}, Lcom/apicloud/ijkplayer/RootView$1;-><init>(Lcom/apicloud/ijkplayer/RootView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    const/4 v8, 0x5

    const/16 v9, 0x2c

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v19, v4

    move/from16 v20, v6

    move v9, v11

    move/from16 v17, v12

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_1

    :cond_3
    const/16 v9, 0x2c

    const/4 v13, 0x0

    const/16 v17, 0x2c

    .line 207
    :goto_1
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v3, "rl_head"

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    .line 208
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 209
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 210
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 212
    iget-boolean v2, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadHide:Z

    if-eqz v2, :cond_4

    .line 213
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 216
    :cond_4
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v3, "iv_back"

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 217
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v7, "isBackBtn"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 220
    :cond_5
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {v17 .. v17}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    .line 221
    invoke-static/range {v17 .. v17}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    invoke-direct {v3, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x5

    .line 222
    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0xf

    .line 223
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 224
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 226
    invoke-static {v13}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 228
    :cond_6
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mView:Landroid/view/View;

    const-string v7, "tv_title"

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    .line 231
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v3, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 232
    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x5

    .line 233
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 234
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    iget-object v2, v0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "texts"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 240
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "title"

    .line 242
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 245
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 246
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    iget-object v1, v0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method private setPlayImage(Ljava/lang/String;Z)V
    .locals 1

    .line 902
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 904
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 907
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_btn_play_normal"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 909
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mPlayImg:Landroid/widget/ImageView;

    const-string p2, "toggle_btn_pause"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private startPositionTimer()V
    .locals 7

    .line 765
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->positionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 767
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->positionTimer:Ljava/util/Timer;

    .line 770
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->positionTimer:Ljava/util/Timer;

    .line 771
    new-instance v2, Lcom/apicloud/ijkplayer/RootView$6;

    invoke-direct {v2, p0}, Lcom/apicloud/ijkplayer/RootView$6;-><init>(Lcom/apicloud/ijkplayer/RootView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopPositionTimer()V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->positionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 790
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->positionTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateDuration(I)V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 863
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->formatMilliSecond(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePostion(I)V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 869
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->formatMilliSecond(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelFullScreen()V
    .locals 3

    .line 1006
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1007
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/FullScreenUtils;->toggleHideyBar(Landroid/app/Activity;)V

    .line 1008
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1009
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1010
    iput-boolean v2, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    .line 1011
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mFullImg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/RootView;->setFullScreenImage(Ljava/lang/String;Z)V

    .line 1012
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenListener:Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;

    if-eqz v0, :cond_0

    .line 1013
    invoke-interface {v0, v2}, Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;->onFullScreen(Z)V

    :cond_0
    const-string v0, "clickCancelFull"

    .line 1016
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    const-string v0, "stateCancelFull"

    .line 1017
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public controlViewShow(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "head"

    const-string v1, "name"

    .line 971
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "show"

    const/4 v3, 0x1

    .line 972
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 973
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 975
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v0, "foot"

    .line 979
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 981
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 983
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public forward(I)V
    .locals 4

    .line 1021
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 1023
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public fullScreen()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 990
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/FullScreenUtils;->toggleHideyBar(Landroid/app/Activity;)V

    .line 991
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 993
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    .line 994
    iget-object v2, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenImg:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/apicloud/ijkplayer/RootView;->setFullScreenImage(Ljava/lang/String;Z)V

    .line 995
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->hideOuterAfterFiveSeconds()V

    .line 996
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenListener:Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;

    if-eqz v1, :cond_0

    .line 997
    invoke-interface {v1, v0}, Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;->onFullScreen(Z)V

    .line 999
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->setFullScreen(Z)V

    const-string v0, "clickFullScreen"

    .line 1001
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    const-string v0, "stateFullScreen"

    .line 1002
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsDragging()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->mbIsDragging:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 1049
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 561
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "iv_play"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-nez p1, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 566
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mConverImg:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    .line 570
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->pause()V

    const-string p1, "clickPause"

    .line 571
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 573
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    .line 574
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->start()V

    const-string p1, "clickPlay"

    .line 575
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 578
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "root"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_6

    .line 582
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    if-eqz p1, :cond_4

    .line 583
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 584
    iput-object v3, p0, Lcom/apicloud/ijkplayer/RootView;->barTimer:Ljava/util/Timer;

    .line 587
    :cond_4
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 588
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 589
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 591
    :cond_5
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 592
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 593
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->hideOuterAfterFiveSeconds()V

    goto :goto_1

    .line 595
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "iv_full_screen"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 596
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    if-eqz p1, :cond_7

    .line 597
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->cancelFullScreen()V

    goto :goto_1

    .line 599
    :cond_7
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->fullScreen()V

    goto :goto_1

    .line 601
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "iv_back"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 602
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/RootView;->isFullScreen:Z

    if-eqz p1, :cond_9

    .line 603
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/RootView;->cancelFullScreen()V

    goto :goto_0

    .line 605
    :cond_9
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1, v3}, Lcom/apicloud/ijkplayer/IJKPlayer;->jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    const-string p1, "clickBack"

    .line 607
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/RootView;->callback_click(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onTotalCacheUpdate(J)V
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/apicloud/ijkplayer/RootView$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/apicloud/ijkplayer/RootView$7;-><init>(Lcom/apicloud/ijkplayer/RootView;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1055
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    .line 663
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mPauseImgPath:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/RootView;->setPlayImage(Ljava/lang/String;Z)V

    .line 653
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 922
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->stop()V

    const-string v0, "stateStop"

    .line 924
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_state(Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 927
    iput-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    .line 929
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->stopPositionTimer()V

    .line 931
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public replay()V
    .locals 2

    const/4 v0, 0x1

    .line 954
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isReplay:Z

    .line 955
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->stop()V

    .line 956
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 958
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isMaxSetted:Z

    .line 959
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->release()V

    .line 960
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->stopPositionTimer()V

    .line 961
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->createPlayer()V

    return-void
.end method

.method public replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->stop()V

    const-string v0, "stateStop"

    .line 942
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->callback_state(Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    const-string v1, "path"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->start()V

    .line 945
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const-string v0, ""

    const-string v1, "title"

    .line 946
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 947
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public rewind(I)V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 1030
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->seekTo(J)V

    goto :goto_0

    .line 1032
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1, v2, v3}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->seekTo(J)V

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 1037
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->seekTo(J)V

    return-void
.end method

.method public setCache(I)V
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public setMax(J)V
    .locals 2

    .line 849
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isMaxSetted:Z

    if-eqz v0, :cond_0

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    long-to-int v1, p1

    .line 853
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_1
    long-to-int v0, p1

    .line 855
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/RootView;->updateDuration(I)V

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 857
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/RootView;->isMaxSetted:Z

    :cond_2
    return-void
.end method

.method public setOnFullScreenListener(Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mFullScreenListener:Lcom/apicloud/ijkplayer/RootView$OnFullScreenListener;

    return-void
.end method

.method public setPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 682
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isReplay:Z

    .line 683
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->stop()V

    .line 684
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->mCurrentTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/RootView;->isMaxSetted:Z

    .line 687
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->release()V

    .line 688
    iput-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mCoverImagePath:Ljava/lang/String;

    .line 689
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/RootView;->stopPositionTimer()V

    .line 690
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object p2, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p2, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setVideoPath(Ljava/lang/String;)V

    .line 692
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->createPlayer()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView;->mCloudVideoView:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
