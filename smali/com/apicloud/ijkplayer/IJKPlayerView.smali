.class public Lcom/apicloud/ijkplayer/IJKPlayerView;
.super Landroid/widget/RelativeLayout;
.source "IJKPlayerView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Lcom/apicloud/widget/IJKView$OnPlayerStateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;,
        Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;
    }
.end annotation


# static fields
.field protected static final LANDSCAPE:I = 0x2

.field protected static final PORTRAIT:I = 0x1

.field private static final POSITION_REFRESH_TIME:I = 0x1f4

.field protected static final REVERSE_LANDSCAPE:I = 0x3


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field autoPlay:Z

.field private backImg:Landroid/widget/ImageView;

.field private barTimer:Ljava/util/Timer;

.field private currentPositionInMilliSeconds:J

.field private enableFull:Z

.field enableLooping:Z

.field private indicatorheight:D

.field private isAutorotate:Z

.field private isComplete:Z

.field private volatile isFullScreen:Z

.field private isMaxSetted:Z

.field private isOpenGesture:Z

.field private isReplay:Z

.field private isSmallOpenGesture:Z

.field private iv_progress:Landroid/widget/ImageView;

.field private iv_video_control:Landroid/widget/ImageView;

.field private ll_control:Landroid/widget/LinearLayout;

.field mBottomHide:Z

.field private mBottomView:Landroid/widget/RelativeLayout;

.field mBrightness:F

.field private mCloudVideoView:Lcom/apicloud/widget/IJKView;

.field private mContext:Landroid/content/Context;

.field private mCoverImagePath:Ljava/lang/String;

.field protected mCurrentOrientation:I

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDetector:Landroid/view/GestureDetector;

.field private mFullHScreenImg:Ljava/lang/String;

.field private mFullImageView:Landroid/widget/ImageView;

.field private mFullScreenListener:Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;

.field private mFullVImg:Ljava/lang/String;

.field private mH:I

.field mHeadHide:Z

.field private mHeadView:Landroid/widget/RelativeLayout;

.field protected mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPath:Ljava/lang/String;

.field mPauseImgPath:Ljava/lang/String;

.field private mPlayImg:Landroid/widget/ImageView;

.field mPlayImgPath:Ljava/lang/String;

.field private mPreSlidePosition:I

.field private mRepeatIv:Landroid/widget/ImageView;

.field private mRoot:Landroid/widget/RelativeLayout;

.field private mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mVolume:I

.field private mW:I

.field private mX:I

.field private mY:I

.field private mainThreadHandler:Landroid/os/Handler;

.field mbIsDragging:Z

.field private module:Lcom/apicloud/ijkplayer/IJKPlayer;

.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private positionTimer:Ljava/util/Timer;

.field private progressBar:Landroid/widget/ProgressBar;

.field private relaout_light:Landroid/widget/RelativeLayout;

.field private relayout_volume:Landroid/widget/RelativeLayout;

.field private repeatImg:Ljava/lang/String;

.field private repeatheight:I

.field private repeatwidth:I

.field private rl_progress:Landroid/widget/RelativeLayout;

.field private seekGesture:Z

.field private seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

.field private seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

.field private showBackPortrait:Z

.field private totalTextView:Landroid/widget/TextView;

.field private video_control:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/ijkplayer/IJKPlayer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIIIZ)V
    .locals 5

    .line 132
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    .line 77
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullHScreenImg:Ljava/lang/String;

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->currentPositionInMilliSeconds:J

    .line 95
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mbIsDragging:Z

    .line 114
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->showBackPortrait:Z

    .line 121
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekGesture:Z

    const-wide/16 v2, 0x0

    .line 122
    iput-wide v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->indicatorheight:D

    .line 124
    iput v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    const/4 v2, 0x1

    .line 129
    iput-boolean v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isAutorotate:Z

    .line 168
    new-instance v3, Lcom/apicloud/ijkplayer/IJKPlayerView$1;

    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/apicloud/ijkplayer/IJKPlayerView$1;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    const/16 v3, 0x28

    .line 254
    iput v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatwidth:I

    const/16 v3, 0x3c

    .line 255
    iput v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatheight:I

    .line 1030
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isComplete:Z

    .line 1068
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    .line 1397
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mainThreadHandler:Landroid/os/Handler;

    .line 1399
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    const/4 v3, -0x1

    .line 1727
    iput v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    .line 1748
    iput v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    const/high16 v3, -0x40800000    # -1.0f

    .line 1799
    iput v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    .line 1876
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isReplay:Z

    .line 134
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 136
    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    .line 137
    iput p4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mW:I

    .line 138
    iput p5, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    .line 139
    iput p7, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mY:I

    .line 140
    iput p6, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mX:I

    .line 141
    iput-boolean p8, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->enableFull:Z

    .line 142
    iput-boolean p8, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    const-string p2, "autoPlay"

    .line 143
    invoke-virtual {p3, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->autoPlay:Z

    const-string p2, "enableLooping"

    .line 144
    invoke-virtual {p3, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->enableLooping:Z

    const-string p2, "coverImg"

    .line 145
    invoke-virtual {p3, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    const-string p2, "isSmallOpenGesture"

    .line 146
    invoke-virtual {p3, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isSmallOpenGesture:Z

    const-string p2, "isOpenGesture"

    .line 147
    invoke-virtual {p3, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isOpenGesture:Z

    const-string p2, "isAutorotate"

    .line 148
    invoke-virtual {p3, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isAutorotate:Z

    .line 150
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->audioManager:Landroid/media/AudioManager;

    .line 152
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;

    invoke-direct {p3, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mDetector:Landroid/view/GestureDetector;

    .line 153
    new-instance p1, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;

    invoke-direct {p1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$MyGestureListener;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-virtual {p2, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 155
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/danmaku/ijk/media/player/IjkLibLoader;)V

    const-string p1, "libijkplayer.so"

    .line 156
    invoke-static {p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->parseRepeat()V

    .line 159
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->loadLayout()V

    .line 160
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apicloud/ijkplayer/IJKPlayerView;FI)I
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setVolume(FI)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->startPositionTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->stopPositionTimer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->updateDuration(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->onPositionUpdate()V

    return-void
.end method

.method static synthetic access$1900(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/ijkplayer/IJKPlayerView;FF)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setLight(FF)Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/ijkplayer/IJKPlayer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/apicloud/ijkplayer/IJKPlayerView;)Ljava/util/Timer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->headerBottomVisible()V

    return-void
.end method

.method static synthetic access$2800(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->ll_control:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_gestrue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/media/AudioManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isOpenGesture:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekGesture:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->volumeControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$3400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isSmallOpenGesture:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->brightnessControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$3600(Lcom/apicloud/ijkplayer/IJKPlayerView;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isLiving(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/PopSeekBarView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/PopSeekBarView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/apicloud/ijkplayer/IJKPlayerView;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->currentPositionInMilliSeconds:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->updatePostion(I)V

    return-void
.end method

.method private addStateDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    .line 976
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 977
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 979
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 980
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 982
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 984
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [I

    const v3, 0x101009c

    aput v3, v2, v4

    .line 985
    invoke-virtual {p1, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x10100a1

    aput v2, v1, v4

    .line 986
    invoke-virtual {p1, v1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p2, v4, [I

    .line 987
    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method private brightnessControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1802
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 1803
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1806
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    .line 1807
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1809
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->ll_control:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1810
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_video_control:Landroid/widget/ImageView;

    const-string p3, "mo_ijkplayer_brightness"

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1812
    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    const/4 p3, 0x0

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    .line 1813
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_0

    const/high16 p2, 0x3f000000    # 0.5f

    .line 1815
    iput p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    .line 1816
    :cond_0
    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    const p3, 0x3c23d70a    # 0.01f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_1

    .line 1817
    iput p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    .line 1819
    :cond_1
    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setLight(FF)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 1820
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->video_control:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p1, p4

    float-to-int p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private callback_click(Ljava/lang/String;)V
    .locals 2

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 966
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventType"

    .line 967
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 968
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

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

    .line 1864
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 1865
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "gestureTap"

    .line 1866
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1867
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1871
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private callback_state(Ljava/lang/String;)V
    .locals 2

    .line 1311
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 1312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "eventType"

    .line 1313
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1314
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private changeState()V
    .locals 3

    .line 1070
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getCurrentPlayerState()Lcom/apicloud/widget/IJKView$PlayerState;

    move-result-object v0

    const/4 v1, 0x0

    .line 1071
    iput-boolean v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    .line 1072
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/apicloud/ijkplayer/IJKPlayerView$7;

    invoke-direct {v2, p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView$7;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Lcom/apicloud/widget/IJKView$PlayerState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private endGesture()V
    .locals 2

    const/4 v0, -0x1

    .line 1457
    iput v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 1458
    iput v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBrightness:F

    .line 1459
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->ll_control:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->rl_progress:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private formatMilliSecond(I)Ljava/lang/String;
    .locals 6

    .line 913
    div-int/lit16 p1, p1, 0x3e8

    .line 914
    div-int/lit16 v0, p1, 0xe10

    .line 915
    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    .line 916
    rem-int/lit8 p1, p1, 0x3c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 919
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

    .line 921
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

.method private fullButtonSetMargin(Z)V
    .locals 1

    const/4 v0, 0x5

    .line 462
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    if-eqz p1, :cond_0

    .line 464
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 465
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result p1

    add-int/2addr v0, p1

    .line 468
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 469
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 470
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getScreenBrightness()I
    .locals 3

    .line 1856
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x7d

    const-string v2, "screen_brightness"

    .line 1858
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private headerBottomVisible()V
    .locals 2

    .line 1669
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1675
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1676
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1678
    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    if-nez v0, :cond_2

    .line 1679
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1681
    :cond_2
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekGesture:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->shoudShowSeeker()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1683
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1685
    :cond_3
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    if-nez v0, :cond_6

    .line 1687
    :cond_4
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->hideOuterAfterFiveSeconds()V

    goto :goto_1

    .line 1670
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1671
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1672
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1673
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private hideOuterAfterFiveSeconds()V
    .locals 4

    .line 1404
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1405
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1406
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    .line 1408
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    .line 1409
    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$9;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private hideSystemNavigationBar()V
    .locals 2

    .line 1347
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xf06

    .line 1355
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1356
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private isLiving(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "rtmp://"

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rtsp://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".m3u8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private liveHide()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isLiving(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private loadLayout()V
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mo_ijkplayer_player"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    .line 272
    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->addView(Landroid/view/View;)V

    .line 274
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "root"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    .line 275
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mW:I

    iget v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 276
    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 277
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 278
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "mo_video"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/IJKView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    .line 287
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "iv_repeatImg"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    .line 288
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatwidth:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iget v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatheight:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    .line 289
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 290
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatImg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    const-string v1, "mo_ijkplayer_btn_play_normal"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0, p0}, Lcom/apicloud/widget/IJKView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "ll_control"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->ll_control:Landroid/widget/LinearLayout;

    .line 301
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "app_video_volume"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->video_control:Landroid/widget/TextView;

    .line 302
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "app_video_control_icon"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_video_control:Landroid/widget/ImageView;

    .line 304
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "rl_progress"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->rl_progress:Landroid/widget/RelativeLayout;

    .line 305
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "iv_progress"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_progress:Landroid/widget/ImageView;

    .line 306
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "pb"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    .line 308
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "relayout_seek_light"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    .line 309
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "seek_light"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/PopSeekBarView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    .line 310
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "relayout_seek_volume"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    .line 311
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v1, "seek_volume"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/PopSeekBarView;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    .line 312
    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayerView$2;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$2;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/PopSeekBarView;->setListener(Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;)V

    .line 321
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayerView$3;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$3;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/PopSeekBarView;->setListener(Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;)V

    .line 329
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setSeekBar()V

    .line 331
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setHeadView()V

    .line 332
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFootView()V

    .line 333
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setSeekVLP()V

    .line 334
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->playVideo(Lcom/apicloud/widget/IJKView;)V

    return-void
.end method

.method private onPositionUpdate()V
    .locals 6

    .line 1155
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-nez v0, :cond_0

    return-void

    .line 1158
    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getCurrentTime()J

    move-result-wide v0

    .line 1161
    iget-wide v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->currentPositionInMilliSeconds:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 1162
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getIsDragging()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1163
    iput-wide v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->currentPositionInMilliSeconds:J

    .line 1166
    :cond_1
    iget-object v4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 1171
    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getIsDragging()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1172
    iget-object v4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v4}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v4

    if-lez v4, :cond_3

    .line 1174
    invoke-virtual {p0, v4}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setMax(I)V

    cmp-long v4, v2, v0

    if-eqz v4, :cond_3

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    long-to-int v0, v0

    .line 1177
    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setProgress(I)V

    :cond_3
    return-void
.end method

.method private parseRepeat()V
    .locals 3

    .line 258
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "styles"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "repeat"

    .line 260
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3c

    const-string v2, "repeatwidth"

    .line 262
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatwidth:I

    const-string v2, "repeatheight"

    .line 263
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatheight:I

    const-string v1, "repeatImg"

    const-string v2, ""

    .line 264
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->repeatImg:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private playVideo(Lcom/apicloud/widget/IJKView;)V
    .locals 3

    .line 555
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 556
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 557
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 558
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 559
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 560
    invoke-virtual {p1, p0}, Lcom/apicloud/widget/IJKView;->setOnPlayerStateListener(Lcom/apicloud/widget/IJKView$OnPlayerStateListener;)V

    .line 562
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "scaleAspectFit"

    const-string v2, "movieScaling"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "scaleToFill"

    .line 563
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    .line 564
    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->setVideoScalingMode(I)V

    goto :goto_0

    .line 565
    :cond_0
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 566
    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->setVideoScalingMode(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 568
    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->setVideoScalingMode(I)V

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPath:Ljava/lang/String;

    .line 573
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/widget/IJKView;->setVideoPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->liveHide()V

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->setLogEnabled(Z)V

    .line 578
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->enableLooping:Z

    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->setLooping(Z)V

    return-void
.end method

.method private progressControl(IF)V
    .locals 5

    .line 1729
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->rl_progress:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1731
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getDuration()I

    move-result v0

    .line 1732
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, v0

    int-to-long v0, v1

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u603b\u957f\u5ea6\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TAG"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8fdb\u5ea6\uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 1736
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_progress:Landroid/widget/ImageView;

    const-string v0, "mo_ijkplayer_fast_backward"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1738
    :cond_0
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_progress:Landroid/widget/ImageView;

    const-string v0, "mo_ijkplayer_fast_forward"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1740
    :goto_0
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1741
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->updatePostion(I)V

    .line 1742
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1743
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p2, p1}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    :cond_1
    return-void
.end method

.method private progressControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2

    .line 1693
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    neg-float p3, p3

    .line 1695
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    .line 1696
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getDuration()I

    move-result p2

    if-lez p2, :cond_3

    .line 1698
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPreSlidePosition:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  deltaX:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  total:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "TAG"

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget p4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    int-to-float p4, p4

    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    int-to-float v1, p2

    mul-float/2addr p3, v1

    add-float/2addr p4, p3

    float-to-int p3, p4

    iput p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    const/4 p4, 0x0

    if-gez p3, :cond_0

    .line 1702
    iput p4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    .line 1704
    :cond_0
    iget p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    if-le p3, p2, :cond_1

    .line 1705
    iput p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    .line 1707
    :cond_1
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->rl_progress:Landroid/widget/RelativeLayout;

    invoke-virtual {p3, p4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1709
    iget p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_3

    .line 1710
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getMax()I

    move-result p3

    iget p4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    mul-int/2addr p3, p4

    div-int/2addr p3, p2

    int-to-long p2, p3

    .line 1711
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u603b\u957f\u5ea6\uff1a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u5ea6\uff1a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 1714
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_progress:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_fast_backward"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1716
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_progress:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_fast_forward"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1718
    :goto_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->progressBar:Landroid/widget/ProgressBar;

    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1719
    iget p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->updatePostion(I)V

    .line 1720
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1721
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPreSlidePosition:I

    invoke-virtual {p1, p2}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    :cond_3
    return-void
.end method

.method private resetSeekBar()V
    .locals 2

    .line 444
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekGesture:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->shoudShowSeeker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private saveScreenBrightness(I)V
    .locals 2

    .line 1836
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setScrennManualMode()V

    .line 1837
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    .line 1838
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setCoverImg(Ljava/lang/String;Z)V
    .locals 2

    const/high16 v0, -0x1000000

    if-eqz p2, :cond_0

    .line 993
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 995
    :cond_0
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 996
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 997
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 999
    :cond_1
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1000
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private setFootView()V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "isLive"

    .line 738
    :try_start_0
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "styles"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 740
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v3, "foot"

    .line 742
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, "#fff"

    const/16 v5, 0xe

    const-string v6, "rgba(161,161,161,0.5)"

    const/16 v7, 0x2c

    const/4 v8, 0x0

    if-eqz v2, :cond_1

    :try_start_1
    const-string v3, "bg"

    .line 754
    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "height"

    .line 755
    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "hide"

    .line 756
    invoke-virtual {v2, v9, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    const-string v9, "playSize"

    .line 758
    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v9, "playImg"

    .line 759
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    const-string v9, "pauseImg"

    .line 760
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    const-string v9, "timeSize"

    .line 762
    invoke-virtual {v2, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v9, "timeColor"

    .line 763
    invoke-virtual {v2, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "sliderImg"

    .line 765
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "verticalImg"

    .line 767
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullVImg:Ljava/lang/String;

    const-string v10, "horizontalImg"

    .line 768
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullHScreenImg:Ljava/lang/String;

    move v2, v7

    move v7, v3

    move-object v3, v9

    goto :goto_0

    :cond_1
    move v2, v7

    .line 771
    :goto_0
    iget-object v9, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v10, "rl_bottom"

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    .line 772
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    const/4 v10, -0x1

    invoke-direct {v9, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 773
    invoke-static {v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    iput v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 v7, 0xc

    .line 774
    invoke-virtual {v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 775
    iget-object v7, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 776
    iget-object v7, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-static {v6}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 777
    iget-boolean v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_2

    .line 778
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 781
    :cond_2
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v9, "iv_play"

    invoke-static {v9}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    .line 782
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v9

    .line 783
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    invoke-direct {v6, v9, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v9, 0x5

    .line 784
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v11

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v11, 0xf

    .line 785
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 786
    iget-object v12, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    iget-boolean v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->autoPlay:Z

    const/4 v12, 0x1

    if-eqz v6, :cond_4

    .line 788
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v6}, Lcom/apicloud/widget/IJKView;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 789
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v12}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    goto :goto_1

    .line 791
    :cond_3
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    goto :goto_1

    .line 794
    :cond_4
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 797
    :goto_1
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v13, "tv_current_progress"

    invoke-static {v13}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    .line 800
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v6, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "isShowTimeLable"

    const/16 v14, 0x8

    if-eqz v6, :cond_5

    .line 801
    :try_start_2
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 803
    :cond_5
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v6, v13, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 804
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 807
    :cond_6
    :goto_2
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v6, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 808
    iget-object v10, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v6, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 809
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 810
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v10

    iput v10, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 811
    iget-object v10, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    int-to-float v5, v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 815
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v10, "iv_full_screen"

    invoke-static {v10}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    .line 816
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v10, "isFullBtn"

    invoke-virtual {v6, v10, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 817
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 819
    :cond_7
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    :goto_3
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    .line 822
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    invoke-direct {v6, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xb

    .line 823
    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 824
    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 825
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 826
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 827
    iget-boolean v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->enableFull:Z

    if-nez v2, :cond_8

    move v2, v12

    goto :goto_4

    :cond_8
    move v2, v8

    :goto_4
    invoke-direct {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreenImage(Z)V

    .line 829
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v6, "tv_total_time"

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    .line 832
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 833
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 835
    :cond_9
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v13, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 836
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    :cond_a
    :goto_5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v15, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 840
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 841
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result v6

    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 842
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    iput v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 843
    iget-object v6, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 844
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 845
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 847
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v4, "sb_progress"

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    .line 848
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 849
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v14}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_6

    .line 851
    :cond_b
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "isShowProcessView"

    invoke-virtual {v1, v2, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 852
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 856
    :cond_c
    :goto_6
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 857
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 858
    invoke-virtual {v1, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 859
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 860
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 861
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 862
    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 863
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "widget://"

    .line 865
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 866
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 867
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 869
    :cond_d
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 872
    :cond_e
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "mo_ijkplayer_seekbar_ratio"

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 875
    :goto_7
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/apicloud/ijkplayer/IJKPlayerView$6;

    invoke-direct {v2, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView$6;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method private setFullScreen(Z)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 479
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x200

    if-eqz p1, :cond_0

    .line 487
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 488
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 489
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 491
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, -0x401

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 492
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 493
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setFullScreenImage(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 947
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullVImg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 948
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullVImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 949
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 951
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    const-string v0, "mo_ijkplayer_btn_to_fullscreen"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 954
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullHScreenImg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 955
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullHScreenImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 956
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 958
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullImageView:Landroid/widget/ImageView;

    const-string v0, "btn_to_mini"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private setHeadView()V
    .locals 21

    move-object/from16 v0, p0

    const-string v1, "head"

    .line 599
    :try_start_0
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "styles"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    .line 608
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 610
    :cond_0
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

    if-eqz v2, :cond_4

    :try_start_1
    const-string v11, "bg"

    .line 612
    invoke-virtual {v2, v11, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "height"

    .line 613
    invoke-virtual {v2, v11, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "hide"

    .line 615
    invoke-virtual {v2, v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    const-string v12, "backSize"

    .line 617
    invoke-virtual {v2, v12, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 618
    iget-object v13, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v14, "backImg"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "titleSize"

    .line 620
    invoke-virtual {v2, v14, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const-string v14, "titleColor"

    .line 621
    invoke-virtual {v2, v14, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v14, "customButtons"

    .line 623
    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 624
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-lez v14, :cond_3

    .line 625
    iget-object v14, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v15, "rl_right"

    .line 626
    invoke-static {v15}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    .line 627
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move v15, v10

    move/from16 v16, v15

    .line 629
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v15, v5, :cond_3

    .line 630
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v10, "w"

    .line 631
    invoke-virtual {v5, v10, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string v3, "h"

    .line 632
    invoke-virtual {v5, v3, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v9, "rightMagin"

    .line 633
    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string v8, "img"

    .line 634
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v18, v2

    const-string v2, "imgSelected"

    .line 635
    invoke-virtual {v5, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 636
    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 637
    invoke-virtual {v5, v15}, Landroid/widget/ImageView;->setId(I)V

    .line 638
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    move/from16 v20, v6

    invoke-static {v10}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    .line 639
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    invoke-direct {v4, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 641
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    add-int v16, v16, v9

    .line 643
    invoke-static/range {v16 .. v16}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int v16, v16, v10

    const/16 v3, 0xf

    .line 646
    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 647
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 648
    invoke-virtual {v14, v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 651
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 652
    invoke-direct {v0, v8, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->addStateDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    :cond_2
    new-instance v2, Lcom/apicloud/ijkplayer/IJKPlayerView$5;

    invoke-direct {v2, v0, v5}, Lcom/apicloud/ijkplayer/IJKPlayerView$5;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move/from16 v6, v20

    const/4 v8, 0x5

    const/16 v9, 0x2c

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v19, v4

    move/from16 v20, v6

    move v9, v11

    move/from16 v17, v12

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_1

    :cond_4
    const/16 v9, 0x2c

    const/4 v13, 0x0

    const/16 v17, 0x2c

    .line 686
    :goto_1
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v3, "rl_head"

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    .line 687
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v9}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    const/4 v5, -0x1

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 688
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 689
    iget-object v3, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 691
    iget-boolean v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    if-eqz v2, :cond_5

    .line 692
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 695
    :cond_5
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v3, "iv_back"

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    .line 696
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "isBackBtn"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 697
    iput-boolean v3, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->showBackPortrait:Z

    .line 698
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 700
    :cond_6
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {v17 .. v17}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    .line 701
    invoke-static/range {v17 .. v17}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x5

    .line 702
    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v8

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const/16 v7, 0xf

    .line 703
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 704
    iget-object v7, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 706
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    invoke-static {v13}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 708
    :cond_7
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 710
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mView:Landroid/view/View;

    const-string v7, "tv_title"

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    .line 711
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v2, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 712
    iget-object v5, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    .line 713
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 714
    iget-object v3, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 718
    iget-object v2, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "texts"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 720
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "title"

    .line 722
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    .line 725
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 726
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 728
    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    int-to-float v2, v6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-void
.end method

.method private setLight(FF)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    add-float/2addr p2, p1

    .line 1826
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1827
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 1828
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1829
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const p2, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 1830
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1831
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0
.end method

.method private setPlayImage(Ljava/lang/String;Z)V
    .locals 1

    .line 929
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 930
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 931
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 934
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_btn_play_normal"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 936
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImg:Landroid/widget/ImageView;

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

.method private setPlayState()V
    .locals 2

    .line 1213
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 1216
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->pause()V

    const-string v0, "clickPause"

    .line 1217
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 1220
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->start()V

    const-string v0, "clickPlay"

    .line 1221
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setSeekBar()V
    .locals 1

    .line 401
    new-instance v0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$4;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setSeekHeight(I)V
    .locals 6

    .line 454
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v0}, Lcom/apicloud/widget/PopSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 455
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v1}, Lcom/apicloud/widget/PopSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-double v2, p1

    .line 456
    iget-wide v4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->indicatorheight:D

    mul-double/2addr v4, v2

    double-to-int p1, v4

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 457
    iget-wide v4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->indicatorheight:D

    mul-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    return-void
.end method

.method private setSeekVLP()V
    .locals 10

    .line 339
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "styles"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "indicator"

    .line 343
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v2, "isIndicator"

    .line 347
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 351
    :cond_2
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->shoudShowSeeker()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 352
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relaout_light:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 353
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->relayout_volume:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    const/4 v1, 0x1

    .line 355
    iput-boolean v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekGesture:Z

    const/4 v1, 0x5

    const-string v2, "indicatorwidth"

    .line 357
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-wide v2, 0x3fe6666666666666L    # 0.7

    const-string v4, "indicatorheight"

    .line 359
    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->indicatorheight:D

    const/16 v2, 0x32

    const-string v3, "indicatortop"

    .line 361
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0x64

    const-string v4, "indicatormargin"

    .line 363
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "indicatorImg"

    .line 365
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    const-string v6, "sliderwidth"

    .line 367
    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "sliderColor"

    const-string v7, "#FFFFFF"

    .line 369
    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 371
    iget v6, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->indicatorheight:D

    mul-double/2addr v6, v8

    double-to-int v6, v6

    .line 373
    iget-object v7, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v7}, Lcom/apicloud/widget/PopSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 374
    iget-object v8, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v8}, Lcom/apicloud/widget/PopSeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 375
    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 376
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 377
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    iput v6, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 378
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 379
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 380
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 381
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v2, v7}, Lcom/apicloud/widget/PopSeekBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-virtual {v2, v8}, Lcom/apicloud/widget/PopSeekBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/apicloud/widget/PopSeekBarView;->setmSeekBarWidth(F)V

    .line 385
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/apicloud/widget/PopSeekBarView;->setmSeekBarWidth(F)V

    .line 386
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apicloud/widget/PopSeekBarView;->setmCircleButtonBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apicloud/widget/PopSeekBarView;->setmCircleButtonBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/apicloud/widget/PopSeekBarView;->setCircleR(I)V

    .line 389
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/apicloud/widget/PopSeekBarView;->setCircleR(I)V

    .line 390
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_volume:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/apicloud/widget/PopSeekBarView;->setSeekerColor(I)V

    .line 391
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekbar_light:Lcom/apicloud/widget/PopSeekBarView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/apicloud/widget/PopSeekBarView;->setSeekerColor(I)V

    return-void
.end method

.method private setVolume(FI)I
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v2, v0

    mul-float/2addr p1, v2

    float-to-int p1, p1

    add-int/2addr p1, p2

    const/4 p2, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    move p1, p2

    .line 1794
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    int-to-double p1, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v1

    int-to-double v0, v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private shoudShowSeeker()Z
    .locals 1

    .line 397
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isSmallOpenGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isOpenGesture:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startPositionTimer()V
    .locals 7

    .line 1132
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->positionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1133
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1134
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->positionTimer:Ljava/util/Timer;

    .line 1137
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->positionTimer:Ljava/util/Timer;

    .line 1138
    new-instance v2, Lcom/apicloud/ijkplayer/IJKPlayerView$8;

    invoke-direct {v2, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$8;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private stopPositionTimer()V
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->positionTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1125
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->positionTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateDuration(I)V
    .locals 1

    .line 1203
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1204
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->formatMilliSecond(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updatePostion(I)V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 908
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->formatMilliSecond(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private volumeControl(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 0

    .line 1750
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1751
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    sub-float/2addr p1, p3

    .line 1752
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 1753
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1755
    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    const/4 p3, 0x0

    const/4 p4, -0x1

    if-ne p2, p4, :cond_0

    .line 1756
    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->audioManager:Landroid/media/AudioManager;

    const/4 p4, 0x3

    invoke-virtual {p2, p4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p2

    iput p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    if-gez p2, :cond_0

    .line 1758
    iput p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    .line 1761
    :cond_0
    iget p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mVolume:I

    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setVolume(FI)I

    move-result p1

    .line 1772
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "%"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    const-string p2, "off"

    .line 1777
    :cond_1
    iget-object p4, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->ll_control:Landroid/widget/LinearLayout;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1778
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->video_control:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 1780
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_video_control:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_volume_off"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1782
    :cond_2
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->iv_video_control:Landroid/widget/ImageView;

    const-string p2, "mo_ijkplayer_volume"

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelFullScreen()V
    .locals 3

    .line 1997
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1998
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/FullScreenUtils;->toggleHideyBar(Landroid/app/Activity;)V

    .line 1999
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2002
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    if-nez v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2005
    :cond_1
    iput-boolean v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    .line 2006
    invoke-direct {p0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreenImage(Z)V

    .line 2007
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullScreenListener:Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;

    if-eqz v0, :cond_2

    .line 2008
    invoke-interface {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;->onFullScreen(Z)V

    .line 2011
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 2012
    iget-boolean v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->showBackPortrait:Z

    if-eqz v1, :cond_3

    .line 2013
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    .line 2015
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    const-string v0, "clickCancelFull"

    .line 2019
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    const-string v0, "stateCancelFull"

    .line 2020
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public forward(I)V
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getCurrentPosition()I

    move-result v0

    mul-int/lit16 p1, p1, 0x3e8

    add-int/2addr v0, p1

    .line 2026
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    const-string p1, "statePlaying"

    .line 2027
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public fullScreen()V
    .locals 3

    .line 1973
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1974
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/FullScreenUtils;->toggleHideyBar(Landroid/app/Activity;)V

    .line 1975
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    if-nez v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1978
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    if-nez v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    .line 1981
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    .line 1982
    invoke-direct {p0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreenImage(Z)V

    .line 1983
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->hideOuterAfterFiveSeconds()V

    .line 1984
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullScreenListener:Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;

    if-eqz v2, :cond_2

    .line 1985
    invoke-interface {v2, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;->onFullScreen(Z)V

    .line 1987
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->backImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1988
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1990
    :cond_3
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreen(Z)V

    const-string v0, "clickFullScreen"

    .line 1992
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    const-string v0, "stateFullScreen"

    .line 1993
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 2087
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    .line 2088
    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 2050
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 2046
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v0

    return v0
.end method

.method public getIsDragging()Z
    .locals 1

    .line 1209
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mbIsDragging:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    .line 2054
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "iv_play"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 1229
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-nez p1, :cond_0

    return-void

    .line 1232
    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isComplete:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1233
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isComplete:Z

    .line 1234
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    .line 1236
    :cond_1
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayState()V

    goto :goto_1

    .line 1240
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "root"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 1241
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    if-eqz p1, :cond_3

    .line 1242
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 1243
    iput-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->barTimer:Ljava/util/Timer;

    .line 1246
    :cond_3
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->headerBottomVisible()V

    goto :goto_1

    .line 1247
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "iv_full_screen"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1248
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    if-eqz p1, :cond_5

    .line 1249
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->cancelFullScreen()V

    goto :goto_1

    .line 1263
    :cond_5
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullScreen()V

    goto :goto_1

    .line 1279
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "iv_repeatImg"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 1280
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_1

    .line 1281
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "iv_back"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1282
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen:Z

    if-eqz p1, :cond_8

    .line 1283
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->cancelFullScreen()V

    goto :goto_0

    .line 1285
    :cond_8
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->module:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1, v2}, Lcom/apicloud/ijkplayer/IJKPlayer;->jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    const-string p1, "clickBack"

    .line 1287
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_click(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    const/4 p1, 0x1

    .line 1033
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isComplete:Z

    .line 1036
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 1051
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setCoverImg(Ljava/lang/String;Z)V

    .line 1053
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onOrientationLandscape(Landroid/app/Activity;)V
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isAutorotate:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 222
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    return-void

    .line 226
    :cond_1
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    .line 227
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullScreen()V

    :cond_2
    const/4 v0, 0x0

    .line 230
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onOrientationPortrait(Landroid/app/Activity;)V
    .locals 3

    .line 200
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isAutorotate:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 204
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullScreenListener:Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;->onFullScreen(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->cancelFullScreen()V

    .line 209
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    .line 210
    invoke-virtual {p1, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onOrientationReverseLandscape(Landroid/app/Activity;)V
    .locals 3

    .line 237
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isAutorotate:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    return-void

    .line 246
    :cond_1
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentOrientation:I

    .line 247
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullScreen()V

    :cond_2
    const/16 v0, 0x8

    .line 251
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPlayerStateChanged(Lcom/apicloud/widget/IJKView$PlayerState;)V
    .locals 0

    .line 1008
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->changeState()V

    return-void
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1014
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isReplay:Z

    if-eqz p1, :cond_0

    .line 1015
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1}, Lcom/apicloud/widget/IJKView;->start()V

    return-void

    .line 1018
    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->autoPlay:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1019
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1}, Lcom/apicloud/widget/IJKView;->start()V

    .line 1020
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1022
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 1024
    :goto_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->autoPlay:Z

    invoke-direct {p0, p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setCoverImg(Ljava/lang/String;Z)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1444
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->endGesture()V

    .line 1449
    :goto_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 1453
    :cond_1
    invoke-super {p0, p2}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 2

    .line 1924
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1925
    invoke-virtual {v0, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1926
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 1927
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 1909
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1910
    invoke-virtual {v0, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1911
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1912
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1913
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPlayImage(Ljava/lang/String;Z)V

    .line 1914
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->start()V

    .line 1915
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method public refreshHeadBottom()V
    .locals 3

    .line 2073
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 2076
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2079
    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    if-eqz v0, :cond_1

    .line 2080
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 2082
    :cond_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 2

    .line 1960
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->stopPlayback()V

    const-string v0, "stateStop"

    .line 1962
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 1965
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    .line 1967
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->stopPositionTimer()V

    .line 1969
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const/4 v0, 0x1

    .line 1942
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isReplay:Z

    .line 1943
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1944
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1945
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1946
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->stopPlayback()V

    .line 1949
    iput-boolean v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    .line 1950
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->release()V

    .line 1951
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->stopPositionTimer()V

    .line 1952
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPath:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/widget/IJKView;->setVideoPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    .line 1953
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1}, Lcom/apicloud/widget/IJKView;->createPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-void
.end method

.method public rewind(I)V
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getCurrentPosition()I

    move-result v0

    mul-int/lit16 p1, p1, 0x3e8

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    .line 2034
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    goto :goto_0

    .line 2036
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    :goto_0
    const-string p1, "statePlaying"

    .line 2038
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->callback_state(Ljava/lang/String;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 2042
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    return-void
.end method

.method public setFitsSystemWindows()V
    .locals 5

    .line 503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 504
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 505
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    const/16 v4, 0xb

    if-le v2, v4, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v3, :cond_0

    .line 506
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 507
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    if-lt v0, v3, :cond_1

    .line 509
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFullScreen(Landroid/app/Activity;Z)V
    .locals 3

    .line 1365
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    .line 1366
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1368
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 1370
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1371
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 1373
    :cond_0
    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1374
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_0
    if-eqz p2, :cond_1

    const/16 p2, 0x1006

    goto :goto_1

    .line 1381
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    and-int/lit16 p2, p2, -0x1007

    .line 1385
    :goto_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 1190
    iget-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    if-eqz v0, :cond_0

    return-void

    .line 1193
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 1194
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1196
    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->updateDuration(I)V

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 1198
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    :cond_2
    return-void
.end method

.method public setOnFullScreenListener(Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mFullScreenListener:Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;

    return-void
.end method

.method public setPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1883
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isReplay:Z

    .line 1884
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isComplete:Z

    .line 1885
    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPath:Ljava/lang/String;

    .line 1886
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->stopPlayback()V

    .line 1887
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCurrentTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->totalTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1889
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->liveHide()V

    .line 1890
    iput-boolean v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->isMaxSetted:Z

    .line 1891
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->release()V

    .line 1892
    iput-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCoverImagePath:Ljava/lang/String;

    .line 1893
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRepeatIv:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1894
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p3, v0}, Lcom/apicloud/widget/IJKView;->setVisibility(I)V

    .line 1895
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->stopPositionTimer()V

    .line 1896
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 1897
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1899
    :cond_0
    iget-object p3, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/widget/IJKView;->setVideoPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    .line 1900
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1}, Lcom/apicloud/widget/IJKView;->createPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setScrennManualMode()V
    .locals 4

    const-string v0, "screen_brightness_mode"

    .line 1842
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1844
    :try_start_0
    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1847
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1851
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    .line 2060
    invoke-virtual {v0, p1}, Lcom/apicloud/widget/IJKView;->setSpeed(F)V

    :cond_0
    return-void
.end method

.method public setmBottomHide(Z)V
    .locals 0

    .line 2069
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mBottomHide:Z

    return-void
.end method

.method public setmHeadHide(Z)V
    .locals 0

    .line 2065
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mHeadHide:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1935
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mCloudVideoView:Lcom/apicloud/widget/IJKView;

    if-eqz v0, :cond_0

    .line 1936
    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->stopPlayback()V

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public toFullScreen()V
    .locals 2

    .line 423
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getHeight(Landroid/content/Context;)I

    .line 424
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->hasNavBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 428
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 432
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 433
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 434
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 436
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullButtonSetMargin(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/ijkplayer/Utils;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setSeekHeight(I)V

    .line 438
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreen(Z)V

    .line 439
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->resetSeekBar()V

    return-void
.end method

.method public toWindowScreen()V
    .locals 2

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mW:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 536
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 537
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 538
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 539
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullButtonSetMargin(Z)V

    .line 541
    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    invoke-direct {p0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setSeekHeight(I)V

    .line 542
    invoke-direct {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreen(Z)V

    .line 543
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->resetSeekBar()V

    return-void
.end method

.method public toWindowScreen(II)V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mH = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 525
    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mW:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 526
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 527
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 528
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 529
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRoot:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mRootParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 530
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setFullScreen(Z)V

    return-void
.end method
