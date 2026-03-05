.class public Lcom/apicloud/widget/IJKView;
.super Landroid/widget/FrameLayout;
.source "IJKView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/widget/IJKView$OnPlayerStateListener;,
        Lcom/apicloud/widget/IJKView$PlayerState;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHANGE_CACHING:I = 0x1

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BDCloudVideoView"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2

.field public static final VIDEO_SCALING_MODE_SCALE_TO_MATCH_PARENT:I = 0x3


# instance fields
.field private cachingHintViewRl:Landroid/widget/RelativeLayout;

.field private cachingProgressBar:Landroid/widget/ProgressBar;

.field private cachingProgressHint:Landroid/widget/TextView;

.field private isTryToPlaying:Z

.field private mAppContext:Landroid/content/Context;

.field private mBufferSizeInBytes:I

.field private mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCacheTimeInMilliSeconds:I

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mCurrentAspectRatio:I

.field private mCurrentBufferPercentage:I

.field private mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

.field private mDrmToken:Ljava/lang/String;

.field private mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mFrameChasing:I

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mInitPlayPositionInMilliSec:J

.field private mLeftVolume:F

.field private mLogEnabled:Z

.field private mLooping:Z

.field private mMaxCacheSizeInBytes:I

.field private mMaxProbeSizeInBytes:I

.field private mMaxProbeTimeInMs:I

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

.field private mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPlayerStateListener:Lcom/apicloud/widget/IJKView$OnPlayerStateListener;

.field private mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mRenderView:Lcom/apicloud/widget/IRenderView;

.field private mRightVolume:F

.field mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSpeed:F

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field private mUri:Landroid/net/Uri;

.field private mUseTextureViewFirst:Z

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWakeMode:I

.field private mainThreadHandler:Landroid/os/Handler;

.field private mbShowCacheInfo:Z

.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private renderRootView:Landroid/widget/FrameLayout;

.field private subtitleDisplay:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 108
    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    const/4 v2, 0x0

    .line 137
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 138
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 153
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    .line 154
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    .line 155
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    .line 157
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 159
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 166
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mCacheTimeInMilliSeconds:I

    .line 167
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    .line 168
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    const-wide/16 v3, 0x0

    .line 169
    iput-wide v3, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 170
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 171
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 172
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeTimeInMs:I

    .line 174
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeSizeInBytes:I

    .line 175
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mMaxCacheSizeInBytes:I

    .line 176
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 177
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mBufferSizeInBytes:I

    .line 178
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mFrameChasing:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 184
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 189
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 192
    new-instance v0, Lcom/apicloud/widget/IJKView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/apicloud/widget/IJKView$1;-><init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    .line 715
    new-instance v0, Lcom/apicloud/widget/IJKView$2;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$2;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 735
    new-instance v0, Lcom/apicloud/widget/IJKView$3;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$3;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 775
    new-instance v0, Lcom/apicloud/widget/IJKView$4;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$4;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 788
    new-instance v0, Lcom/apicloud/widget/IJKView$5;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$5;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 842
    new-instance v0, Lcom/apicloud/widget/IJKView$6;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$6;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 862
    new-instance v0, Lcom/apicloud/widget/IJKView$7;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$7;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 873
    new-instance v0, Lcom/apicloud/widget/IJKView$8;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$8;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 885
    new-instance v0, Lcom/apicloud/widget/IJKView$9;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$9;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 957
    new-instance v0, Lcom/apicloud/widget/IJKView$10;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$10;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 212
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 108
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 138
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 153
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    .line 154
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    .line 155
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    .line 157
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 159
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 166
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mCacheTimeInMilliSeconds:I

    .line 167
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    .line 168
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    const-wide/16 v2, 0x0

    .line 169
    iput-wide v2, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 170
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 171
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 172
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    const/4 p2, -0x1

    .line 173
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeTimeInMs:I

    .line 174
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeSizeInBytes:I

    .line 175
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mMaxCacheSizeInBytes:I

    .line 176
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 177
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mBufferSizeInBytes:I

    .line 178
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mFrameChasing:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 179
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 184
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 189
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 192
    new-instance p2, Lcom/apicloud/widget/IJKView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/apicloud/widget/IJKView$1;-><init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    .line 715
    new-instance p2, Lcom/apicloud/widget/IJKView$2;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$2;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 735
    new-instance p2, Lcom/apicloud/widget/IJKView$3;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$3;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 775
    new-instance p2, Lcom/apicloud/widget/IJKView$4;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$4;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 788
    new-instance p2, Lcom/apicloud/widget/IJKView$5;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$5;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 842
    new-instance p2, Lcom/apicloud/widget/IJKView$6;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$6;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 862
    new-instance p2, Lcom/apicloud/widget/IJKView$7;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$7;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 873
    new-instance p2, Lcom/apicloud/widget/IJKView$8;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$8;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 885
    new-instance p2, Lcom/apicloud/widget/IJKView$9;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$9;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 957
    new-instance p2, Lcom/apicloud/widget/IJKView$10;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$10;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 235
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 246
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 108
    sget-object p3, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    iput-object p3, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 138
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 153
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    .line 154
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    .line 155
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    .line 157
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 159
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 166
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mCacheTimeInMilliSeconds:I

    .line 167
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    .line 168
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    const-wide/16 v1, 0x0

    .line 169
    iput-wide v1, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 170
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 171
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 172
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    const/4 p2, -0x1

    .line 173
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeTimeInMs:I

    .line 174
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeSizeInBytes:I

    .line 175
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mMaxCacheSizeInBytes:I

    .line 176
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 177
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mBufferSizeInBytes:I

    .line 178
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mFrameChasing:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 179
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 184
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 189
    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 192
    new-instance p2, Lcom/apicloud/widget/IJKView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/apicloud/widget/IJKView$1;-><init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    .line 715
    new-instance p2, Lcom/apicloud/widget/IJKView$2;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$2;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 735
    new-instance p2, Lcom/apicloud/widget/IJKView$3;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$3;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 775
    new-instance p2, Lcom/apicloud/widget/IJKView$4;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$4;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 788
    new-instance p2, Lcom/apicloud/widget/IJKView$5;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$5;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 842
    new-instance p2, Lcom/apicloud/widget/IJKView$6;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$6;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 862
    new-instance p2, Lcom/apicloud/widget/IJKView$7;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$7;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 873
    new-instance p2, Lcom/apicloud/widget/IJKView$8;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$8;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 885
    new-instance p2, Lcom/apicloud/widget/IJKView$9;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$9;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 957
    new-instance p2, Lcom/apicloud/widget/IJKView$10;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$10;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 247
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 260
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 108
    sget-object p3, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    iput-object p3, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    const/4 p4, 0x0

    .line 137
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 138
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 153
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    .line 154
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    .line 155
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    .line 157
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 159
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 166
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mCacheTimeInMilliSeconds:I

    .line 167
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    .line 168
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    const-wide/16 v0, 0x0

    .line 169
    iput-wide v0, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 170
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 171
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 172
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    const/4 p2, -0x1

    .line 173
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeTimeInMs:I

    .line 174
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeSizeInBytes:I

    .line 175
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mMaxCacheSizeInBytes:I

    .line 176
    iput-boolean p3, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 177
    iput p3, p0, Lcom/apicloud/widget/IJKView;->mBufferSizeInBytes:I

    .line 178
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mFrameChasing:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 179
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 184
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 185
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 189
    iput-object p4, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 192
    new-instance p2, Lcom/apicloud/widget/IJKView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/apicloud/widget/IJKView$1;-><init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    .line 715
    new-instance p2, Lcom/apicloud/widget/IJKView$2;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$2;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 735
    new-instance p2, Lcom/apicloud/widget/IJKView$3;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$3;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 775
    new-instance p2, Lcom/apicloud/widget/IJKView$4;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$4;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 788
    new-instance p2, Lcom/apicloud/widget/IJKView$5;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$5;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 842
    new-instance p2, Lcom/apicloud/widget/IJKView$6;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$6;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 862
    new-instance p2, Lcom/apicloud/widget/IJKView$7;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$7;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 873
    new-instance p2, Lcom/apicloud/widget/IJKView$8;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$8;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 885
    new-instance p2, Lcom/apicloud/widget/IJKView$9;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$9;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 957
    new-instance p2, Lcom/apicloud/widget/IJKView$10;

    invoke-direct {p2, p0}, Lcom/apicloud/widget/IJKView$10;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 261
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .line 222
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 108
    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    const/4 v2, 0x0

    .line 137
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 138
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 153
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    .line 154
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    .line 155
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    .line 157
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 159
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 166
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mCacheTimeInMilliSeconds:I

    .line 167
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    .line 168
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    const-wide/16 v3, 0x0

    .line 169
    iput-wide v3, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 170
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 171
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 172
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    const/4 v0, -0x1

    .line 173
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeTimeInMs:I

    .line 174
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mMaxProbeSizeInBytes:I

    .line 175
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mMaxCacheSizeInBytes:I

    .line 176
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 177
    iput v1, p0, Lcom/apicloud/widget/IJKView;->mBufferSizeInBytes:I

    .line 178
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mFrameChasing:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 184
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 185
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    .line 186
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 189
    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 192
    new-instance v0, Lcom/apicloud/widget/IJKView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/apicloud/widget/IJKView$1;-><init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    .line 715
    new-instance v0, Lcom/apicloud/widget/IJKView$2;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$2;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 735
    new-instance v0, Lcom/apicloud/widget/IJKView$3;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$3;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 775
    new-instance v0, Lcom/apicloud/widget/IJKView$4;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$4;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 788
    new-instance v0, Lcom/apicloud/widget/IJKView$5;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$5;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 842
    new-instance v0, Lcom/apicloud/widget/IJKView$6;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$6;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 862
    new-instance v0, Lcom/apicloud/widget/IJKView$7;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$7;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 873
    new-instance v0, Lcom/apicloud/widget/IJKView$8;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$8;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 885
    new-instance v0, Lcom/apicloud/widget/IJKView$9;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$9;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 957
    new-instance v0, Lcom/apicloud/widget/IJKView$10;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/IJKView$10;-><init>(Lcom/apicloud/widget/IJKView;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 223
    iput-boolean p2, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    .line 224
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->initVideoView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/widget/IJKView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->setCachingHintViewVisibility(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$1000(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mSurfaceWidth:I

    return p0
.end method

.method static synthetic access$1002(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1100(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Lcom/apicloud/widget/IJKView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/apicloud/widget/IJKView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoRotationDegree:I

    return p1
.end method

.method static synthetic access$1600(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/apicloud/widget/IJKView;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->subtitleDisplay:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$2102(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)Lcom/apicloud/widget/IRenderView$ISurfaceHolder;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/apicloud/widget/IJKView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/apicloud/widget/IJKView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/apicloud/widget/IJKView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->openVideo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/apicloud/widget/IJKView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->releaseWithoutStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mVideoSarNum:I

    return p0
.end method

.method static synthetic access$302(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoSarNum:I

    return p1
.end method

.method static synthetic access$400(Lcom/apicloud/widget/IJKView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/apicloud/widget/IJKView;->mVideoSarDen:I

    return p0
.end method

.method static synthetic access$402(Lcom/apicloud/widget/IJKView;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoSarDen:I

    return p1
.end method

.method static synthetic access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IJKView$PlayerState;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/apicloud/widget/IJKView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->sendCachingHintViewVisibilityMessage(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object p0
.end method

.method private addCachingHintView()V
    .locals 7

    .line 303
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    .line 304
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 306
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, v0}, Lcom/apicloud/widget/IJKView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 311
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 313
    new-instance v3, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    const v4, 0x1020014

    .line 314
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setId(I)V

    .line 315
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 316
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 317
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 318
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/apicloud/widget/IJKView;->cachingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x9

    .line 322
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x3

    .line 323
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 324
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    .line 325
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    const-string v2, "\u6b63\u5728\u7f13\u51b2..."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->cachingProgressHint:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addSubtitleView()V
    .locals 4

    .line 289
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->subtitleDisplay:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    .line 290
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->subtitleDisplay:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 292
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 296
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->subtitleDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/widget/IJKView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 950
    invoke-interface {p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    .line 954
    :cond_1
    invoke-interface {p2, p1}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    return-void
.end method

.method private initVideoView(Landroid/content/Context;)V
    .locals 1

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->mAppContext:Landroid/content/Context;

    .line 267
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    .line 268
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 269
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/widget/IJKView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->reSetRender()V

    .line 273
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->addSubtitleView()V

    .line 274
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->addCachingHintView()V

    const/4 p1, 0x0

    .line 276
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoWidth:I

    .line 277
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mVideoHeight:I

    const/4 p1, 0x1

    .line 279
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/IJKView;->setFocusable(Z)V

    .line 280
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/IJKView;->setFocusableInTouchMode(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->requestFocus()Z

    .line 282
    sget-object p1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private openVideo()V
    .locals 8

    const-string v0, "Unable to open content: "

    const-string v1, "BDCloudVideoView"

    .line 523
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x0

    .line 529
    invoke-direct {p0, v2}, Lcom/apicloud/widget/IJKView;->release(Z)V

    .line 531
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mAppContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    .line 532
    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->createPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 537
    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 538
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mSizeChangedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 539
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 540
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 541
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 542
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 543
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 544
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mOnTimedTextListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOnTimedTextListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnTimedTextListener;)V

    .line 545
    iput v2, p0, Lcom/apicloud/widget/IJKView;->mCurrentBufferPercentage:I

    .line 546
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 556
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mPath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mPath:Ljava/lang/String;

    const-string v4, "fs://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    .line 558
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v7, p0, Lcom/apicloud/widget/IJKView;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 563
    :goto_1
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    iget-object v4, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    invoke-direct {p0, v3, v4}, Lcom/apicloud/widget/IJKView;->bindSurfaceHolder(Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V

    .line 564
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setAudioStreamType(I)V

    .line 565
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3, v6}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 566
    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v3}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    .line 567
    invoke-direct {p0, v6}, Lcom/apicloud/widget/IJKView;->sendCachingHintViewVisibilityMessage(Z)V

    .line 571
    sget-object v3, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v3}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 580
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 581
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 583
    iput-boolean v2, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    .line 584
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-interface {v0, v1, v6, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    goto :goto_2

    :catch_1
    move-exception v3

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 577
    iput-boolean v2, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    .line 578
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-interface {v0, v1, v6, v2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    return-void

    .line 587
    :goto_3
    throw v0

    :cond_3
    :goto_4
    return-void
.end method

.method private release(Z)V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->reset()V

    .line 1030
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1031
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->release()V

    .line 1033
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    .line 1034
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1037
    iput-boolean p1, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    .line 1039
    :cond_0
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mAppContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 1040
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1034
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseWithoutStop()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    instance-of v1, v1, Lcom/apicloud/widget/SurfaceRenderView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1005
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method private sendCachingHintViewVisibilityMessage(Z)V
    .locals 2

    .line 351
    iget-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 353
    iput v1, v0, Landroid/os/Message;->what:I

    .line 354
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 355
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private setCachingHintViewVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 338
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->cachingHintViewRl:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    .line 117
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mOnPlayerStateListener:Lcom/apicloud/widget/IJKView$OnPlayerStateListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Lcom/apicloud/widget/IJKView$OnPlayerStateListener;->onPlayerStateChanged(Lcom/apicloud/widget/IJKView$PlayerState;)V

    :cond_0
    return-void
.end method

.method private setVideoURI(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    .line 503
    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mPath:Ljava/lang/String;

    .line 504
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->openVideo()V

    .line 505
    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->requestLayout()V

    .line 506
    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->invalidate()V

    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .line 1171
    iget-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 1176
    iget-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 1181
    iget-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mCanSeekForward:Z

    return v0
.end method

.method public createPlayer()Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
    .locals 9

    .line 591
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 593
    iget-boolean v1, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLogEnabled(Z)V

    const-wide/16 v1, 0x1

    const/4 v3, 0x4

    const-string v4, "mediacodec"

    .line 594
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-wide/16 v4, 0x0

    const-string v6, "mediacodec-auto-rotate"

    .line 596
    invoke-virtual {v0, v3, v6, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v6, "mediacodec-handle-resolution-change"

    .line 597
    invoke-virtual {v0, v3, v6, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v6, "opensles"

    .line 598
    invoke-virtual {v0, v3, v6, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v6, "overlay-format"

    const-wide/32 v7, 0x32335652

    .line 600
    invoke-virtual {v0, v3, v6, v7, v8}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v6, "framedrop"

    .line 602
    invoke-virtual {v0, v3, v6, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v6, "start-on-prepared"

    .line 603
    invoke-virtual {v0, v3, v6, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v3, 0x1

    const-string v6, "http-detect-range-support"

    .line 605
    invoke-virtual {v0, v3, v6, v4, v5}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const/4 v4, 0x2

    const-string v5, "skip_loop_filter"

    const-wide/16 v6, 0x30

    .line 607
    invoke-virtual {v0, v4, v5, v6, v7}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    const-string v4, "dns_cache_clear"

    .line 609
    invoke-virtual {v0, v3, v4, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    return-object v0
.end method

.method public enterBackground()V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/apicloud/widget/SurfaceRenderView;

    if-nez v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Lcom/apicloud/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public enterForeground()V
    .locals 4

    .line 1267
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/apicloud/widget/SurfaceRenderView;

    if-nez v1, :cond_1

    .line 1268
    invoke-interface {v0}, Lcom/apicloud/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1271
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1275
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1276
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const-string v0, "BDCloudVideoView"

    const-string v1, "enterForeground; but getParent() is not null"

    .line 1278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 1246
    invoke-interface {v0}, Lcom/apicloud/widget/IRenderView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 1157
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentBufferPercentage:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    return-object v0
.end method

.method public getCurrentPlayerState()Lcom/apicloud/widget/IJKView$PlayerState;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    return-object v0
.end method

.method public getCurrentPlayingUrl()Ljava/lang/String;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1088
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1114
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 1126
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()I
    .locals 2

    .line 1100
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1204
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mVideoHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1195
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mVideoWidth:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1151
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1077
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->pause()V

    .line 1080
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PAUSED:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    :cond_0
    const/4 v0, 0x0

    .line 1083
    iput-boolean v0, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    return-void
.end method

.method public reSetRender()V
    .locals 3

    .line 410
    iget-boolean v0, p0, Lcom/apicloud/widget/IJKView;->mUseTextureViewFirst:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 411
    new-instance v0, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/widget/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 412
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v0}, Lcom/apicloud/widget/TextureRenderView;->getSurfaceHolder()Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-interface {v1, v2}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 414
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/widget/TextureRenderView;->setVideoSize(II)V

    .line 415
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarNum()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarDen()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/widget/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 416
    iget v1, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/TextureRenderView;->setAspectRatio(I)V

    .line 418
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/widget/IJKView;->setRenderView(Lcom/apicloud/widget/IRenderView;)V

    goto :goto_0

    .line 420
    :cond_1
    new-instance v0, Lcom/apicloud/widget/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/widget/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/apicloud/widget/IJKView;->setRenderView(Lcom/apicloud/widget/IRenderView;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 1017
    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->release(Z)V

    .line 1019
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0}, Lcom/apicloud/widget/IRenderView;->release()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 1138
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    const/4 p1, 0x1

    .line 1140
    invoke-direct {p0, p1}, Lcom/apicloud/widget/IJKView;->sendCachingHintViewVisibilityMessage(Z)V

    :cond_0
    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mHeaders:Ljava/util/Map;

    return-void
.end method

.method public setInitPlayPosition(J)V
    .locals 1

    .line 675
    iput-wide p1, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    .line 676
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->seekTo(J)V

    const-wide/16 p1, -0x1

    .line 679
    iput-wide p1, p0, Lcom/apicloud/widget/IJKView;->mInitPlayPositionInMilliSec:J

    :cond_0
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 1

    .line 691
    iput-boolean p1, p0, Lcom/apicloud/widget/IJKView;->mLogEnabled:Z

    .line 692
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLogEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    .line 620
    iput-boolean p1, p0, Lcom/apicloud/widget/IJKView;->mLooping:Z

    .line 621
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnBufferingUpdateListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnCompletionListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnErrorListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 934
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnInfoListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPlayerStateListener(Lcom/apicloud/widget/IJKView$OnPlayerStateListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnPlayerStateListener:Lcom/apicloud/widget/IJKView$OnPlayerStateListener;

    return-void
.end method

.method public setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 902
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnPreparedListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mOnSeekCompleteListener:Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    return-void
.end method

.method public setRender(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "invalid render %d\n"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BDCloudVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_0
    new-instance p1, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/widget/TextureRenderView;-><init>(Landroid/content/Context;)V

    .line 434
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p1}, Lcom/apicloud/widget/TextureRenderView;->getSurfaceHolder()Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-interface {v0, v1}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 436
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/widget/TextureRenderView;->setVideoSize(II)V

    .line 437
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarNum()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->getVideoSarDen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/widget/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 438
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    invoke-virtual {p1, v0}, Lcom/apicloud/widget/TextureRenderView;->setAspectRatio(I)V

    .line 440
    :cond_1
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/IJKView;->setRenderView(Lcom/apicloud/widget/IRenderView;)V

    goto :goto_0

    .line 444
    :cond_2
    new-instance p1, Lcom/apicloud/widget/SurfaceRenderView;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/widget/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 445
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/IJKView;->setRenderView(Lcom/apicloud/widget/IRenderView;)V

    :goto_0
    return-void
.end method

.method protected setRenderView(Lcom/apicloud/widget/IRenderView;)V
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0, v1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    invoke-interface {v0}, Lcom/apicloud/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object v0

    .line 373
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    iget-object v3, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    invoke-interface {v2, v3}, Lcom/apicloud/widget/IRenderView;->removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    .line 374
    iget-object v2, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    invoke-interface {v2}, Lcom/apicloud/widget/IRenderView;->release()V

    .line 375
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    .line 376
    iput-object v1, p0, Lcom/apicloud/widget/IJKView;->mSurfaceHolder:Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 377
    iget-object v1, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 384
    :cond_2
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    .line 385
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Lcom/apicloud/widget/IRenderView;->setAspectRatio(I)V

    .line 386
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mVideoWidth:I

    if-lez v0, :cond_3

    iget v1, p0, Lcom/apicloud/widget/IJKView;->mVideoHeight:I

    if-lez v1, :cond_3

    .line 387
    invoke-interface {p1, v0, v1}, Lcom/apicloud/widget/IRenderView;->setVideoSize(II)V

    .line 389
    :cond_3
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mVideoSarNum:I

    if-lez v0, :cond_4

    iget v1, p0, Lcom/apicloud/widget/IJKView;->mVideoSarDen:I

    if-lez v1, :cond_4

    .line 390
    invoke-interface {p1, v0, v1}, Lcom/apicloud/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 393
    :cond_4
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    invoke-interface {p1}, Lcom/apicloud/widget/IRenderView;->getView()Landroid/view/View;

    move-result-object p1

    .line 394
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->renderRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mSHCallback:Lcom/apicloud/widget/IRenderView$IRenderCallback;

    invoke-interface {p1, v0}, Lcom/apicloud/widget/IRenderView;->addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    .line 402
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    iget v0, p0, Lcom/apicloud/widget/IJKView;->mVideoRotationDegree:I

    invoke-interface {p1, v0}, Lcom/apicloud/widget/IRenderView;->setVideoRotation(I)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 647
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mSpeed:F

    .line 648
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setSpeed(F)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "asher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setVideoPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 1

    .line 462
    iput-object p1, p0, Lcom/apicloud/widget/IJKView;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p1, 0x0

    .line 463
    invoke-virtual {p0, p2, p1}, Lcom/apicloud/widget/IJKView;->setVideoPathWithToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "videoHeight - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getVideoHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "asher"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "videoWidth - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/widget/IJKView;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoPathWithToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 476
    iput-object p2, p0, Lcom/apicloud/widget/IJKView;->mDrmToken:Ljava/lang/String;

    .line 477
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/apicloud/widget/IJKView;->setVideoURI(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "BDCloudVideoView"

    const-string v0, "setVideoScalingMode: param should be VID"

    .line 1233
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    :goto_0
    if-ne p1, v2, :cond_2

    const/4 p1, 0x0

    .line 1221
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_3

    .line 1224
    iput v2, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    goto :goto_1

    .line 1227
    :cond_3
    iput v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    .line 1229
    :goto_1
    iget-object p1, p0, Lcom/apicloud/widget/IJKView;->mRenderView:Lcom/apicloud/widget/IRenderView;

    if-eqz p1, :cond_4

    .line 1230
    iget v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentAspectRatio:I

    invoke-interface {p1, v0}, Lcom/apicloud/widget/IRenderView;->setAspectRatio(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 633
    iput p1, p0, Lcom/apicloud/widget/IJKView;->mLeftVolume:F

    .line 634
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mRightVolume:F

    .line 635
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1

    .line 661
    iput p2, p0, Lcom/apicloud/widget/IJKView;->mWakeMode:I

    .line 662
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public showCacheInfo(Z)V
    .locals 0

    .line 703
    iput-boolean p1, p0, Lcom/apicloud/widget/IJKView;->mbShowCacheInfo:Z

    return-void
.end method

.method public start()V
    .locals 3

    .line 1053
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v2, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v2, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v2, :cond_3

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mCurrentState:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v2, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v2, :cond_2

    .line 1059
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    .line 1062
    :cond_2
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->prepareAsync()V

    .line 1063
    invoke-direct {p0, v1}, Lcom/apicloud/widget/IJKView;->sendCachingHintViewVisibilityMessage(Z)V

    .line 1064
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    goto :goto_0

    .line 1065
    :cond_3
    invoke-direct {p0}, Lcom/apicloud/widget/IJKView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->start()V

    .line 1067
    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYING:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->setCurrentState(Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 1069
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/apicloud/widget/IJKView;->isTryToPlaying:Z

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/apicloud/widget/IJKView;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->stop()V

    const/4 v0, 0x1

    .line 517
    invoke-direct {p0, v0}, Lcom/apicloud/widget/IJKView;->release(Z)V

    :cond_0
    return-void
.end method
