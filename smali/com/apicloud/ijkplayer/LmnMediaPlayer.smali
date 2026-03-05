.class public Lcom/apicloud/ijkplayer/LmnMediaPlayer;
.super Landroid/widget/FrameLayout;
.source "LmnMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;
    }
.end annotation


# static fields
.field public static final STATE_COMPLETE:I = 0x3

.field public static final STATE_PAUSE:I = 0x2

.field public static final STATE_PLAYING:I = 0x1


# instance fields
.field private listener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

.field mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field mTimeTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field mVideoSizeChangeListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field surfaceView:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPath:Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 216
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 225
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 234
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 244
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 254
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 263
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mTimeTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 272
    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;

    invoke-direct {v0, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mVideoSizeChangeListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 32
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-string p2, ""

    .line 24
    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPath:Ljava/lang/String;

    .line 206
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 216
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 225
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 234
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 244
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 254
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 263
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mTimeTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 272
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mVideoSizeChangeListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 37
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 23
    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const-string p2, ""

    .line 24
    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPath:Ljava/lang/String;

    .line 206
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 216
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 225
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$3;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 234
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 244
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$5;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 254
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$6;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 263
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$7;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mTimeTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 272
    new-instance p2, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;

    invoke-direct {p2, p0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    iput-object p2, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mVideoSizeChangeListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 42
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->listener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    return-object p0
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->setFocusable(Z)V

    .line 50
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->surfaceView:Landroid/view/SurfaceView;

    .line 51
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;)V

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 52
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/16 v1, 0x11

    invoke-direct {p1, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 54
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createPlayer()V
    .locals 7

    .line 166
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    const/4 v1, 0x3

    .line 167
    invoke-static {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    const-wide/16 v1, 0x1

    const/4 v3, 0x4

    const-string v4, "mediacodec"

    .line 168
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v4, "overlay-format"

    const-wide/32 v5, 0x32335652

    .line 170
    invoke-virtual {v0, v3, v4, v5, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v4, "framedrop"

    .line 172
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v1, 0x0

    const-string v4, "start-on-prepared"

    .line 173
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v3, 0x1

    const-string v4, "http-detect-range-support"

    .line 175
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v1, 0x2

    const-string v2, "skip_loop_filter"

    const-wide/16 v3, 0x30

    .line 177
    invoke-virtual {v0, v1, v2, v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 179
    iput-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 182
    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 183
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 184
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 185
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 186
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 187
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 188
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mTimeTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 189
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mVideoSizeChangeListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    iget-object v1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v0, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 199
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->pause()V

    .line 100
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->listener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 101
    invoke-interface {v0, v1}, Lcom/apicloud/ijkplayer/OnPlayStateListener;->onPlayStare(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    .line 116
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->reset()V

    :cond_0
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 152
    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->seekTo(J)V

    :cond_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setOnPlayStateListener(Lcom/apicloud/ijkplayer/OnPlayStateListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->listener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mPath:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->start()V

    .line 91
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->listener:Lcom/apicloud/ijkplayer/OnPlayStateListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 92
    invoke-interface {v0, v1}, Lcom/apicloud/ijkplayer/OnPlayStateListener;->onPlayStare(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->stop()V

    :cond_0
    return-void
.end method
