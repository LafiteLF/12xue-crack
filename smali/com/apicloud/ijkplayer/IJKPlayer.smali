.class public Lcom/apicloud/ijkplayer/IJKPlayer;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "IJKPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;
    }
.end annotation


# instance fields
.field private mBrightness:I

.field private mH:I

.field public mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

.field private mW:I

.field private mX:I

.field private mY:I

.field public moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field public moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field public moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private playingPause:Z

.field private resover:Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    .line 47
    new-instance p1, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;

    invoke-direct {p1, p0}, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;-><init>(Lcom/apicloud/ijkplayer/IJKPlayer;)V

    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->resover:Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;

    const/4 p1, 0x0

    .line 573
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->playingPause:Z

    .line 50
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->registResover()V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/ijkplayer/IJKPlayer;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mW:I

    return p0
.end method

.method static synthetic access$100(Lcom/apicloud/ijkplayer/IJKPlayer;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mX:I

    return p0
.end method

.method static synthetic access$200(Lcom/apicloud/ijkplayer/IJKPlayer;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mH:I

    return p0
.end method

.method static synthetic access$300(Lcom/apicloud/ijkplayer/IJKPlayer;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mY:I

    return p0
.end method

.method static synthetic access$400(Lcom/apicloud/ijkplayer/IJKPlayer;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->playingPause:Z

    return p0
.end method

.method static synthetic access$402(Lcom/apicloud/ijkplayer/IJKPlayer;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->playingPause:Z

    return p1
.end method

.method private closeVideo()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->stop()V

    .line 230
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->release()V

    .line 231
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p0, v0}, Lcom/apicloud/ijkplayer/IJKPlayer;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    :cond_0
    return-void
.end method

.method private getBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 378
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 380
    :try_start_0
    iget v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/BrightnessUtil;->getScreenBrightness(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 384
    iput v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    :cond_0
    const-string v1, "brightness"

    .line 386
    iget v2, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getVolumnCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 6

    .line 421
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 423
    :try_start_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    div-double/2addr v2, v4

    .line 424
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const-string v1, "volume"

    .line 425
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 426
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registResover()V
    .locals 3

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.apicloud.ijkplayer.pause"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.apicloud.ijkplayer.resume"

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->resover:Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "brightness"

    const/16 v1, 0x50

    .line 358
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 365
    :cond_1
    iput p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    .line 366
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mBrightness:I

    invoke-static {p1, v0}, Lcom/apicloud/ijkplayer/BrightnessUtil;->setBrightness(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "name"

    .line 264
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture"

    .line 265
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_0

    :cond_0
    const-string v1, "click"

    .line 267
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_0

    :cond_1
    const-string v1, "state"

    .line 269
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public jsmethod_cancelFullScreen(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 313
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->cancelFullScreen()V

    :cond_0
    return-void
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->closeVideo()V

    return-void
.end method

.method public jsmethod_forward(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    const-string v0, "seconds"

    .line 324
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 325
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->forward(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_fullScreen(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 294
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->fullScreen()V

    :cond_0
    return-void
.end method

.method public jsmethod_getBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 374
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->getBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_getCurrentPosition(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 457
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getCurrentPosition()I

    move-result v1

    const-string v2, "currentPosition"

    .line 458
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 459
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public jsmethod_getDuration(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 440
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getDuration()I

    move-result v1

    const-string v2, "duration"

    .line 441
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public jsmethod_getVolume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    const-string v1, "audio"

    .line 415
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 416
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 417
    invoke-direct {p0, p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayer;->getVolumnCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    return-void
.end method

.method public jsmethod_hide(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 251
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 252
    invoke-virtual {p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_isFullScreen(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 474
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isFullScreen()Z

    move-result v1

    const-string v2, "status"

    .line 475
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v3, p1

    const-string v0, "path"

    .line 73
    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "rect"

    .line 75
    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v10, 0x0

    .line 76
    iput v10, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mX:I

    .line 77
    iput v10, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mY:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/Utils;->getScreenWidth(Landroid/app/Activity;)I

    move-result v1

    iput v1, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mW:I

    mul-int/lit8 v1, v1, 0x3

    .line 79
    div-int/lit8 v1, v1, 0x4

    iput v1, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mH:I

    const-string v1, "fixedOn"

    .line 80
    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x1

    const-string v2, "fixed"

    .line 81
    invoke-virtual {v3, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v0, :cond_1

    const-string v2, "x"

    .line 83
    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mX:I

    const-string v2, "y"

    .line 84
    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mY:I

    const-string v2, "w"

    .line 85
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mW:I

    :cond_0
    const-string v2, "h"

    .line 88
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mH:I

    .line 92
    :cond_1
    iget-object v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "enableFull"

    .line 95
    invoke-virtual {v3, v0, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/FullScreenUtils;->setFullScreen(Landroid/app/Activity;Z)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getWidth(Landroid/content/Context;)I

    move-result v13

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/ijkplayer/Utils;->getHeight(Landroid/content/Context;)I

    move-result v14

    .line 103
    new-instance v15, Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v4, v14

    move v5, v13

    invoke-direct/range {v0 .. v8}, Lcom/apicloud/ijkplayer/IJKPlayerView;-><init>(Landroid/content/Context;Lcom/apicloud/ijkplayer/IJKPlayer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIIIZ)V

    iput-object v15, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 107
    :cond_3
    new-instance v10, Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    iget v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mW:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v4

    iget v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mH:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iget v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mX:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v6

    iget v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mY:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v7

    const/4 v8, 0x0

    move-object v0, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v8}, Lcom/apicloud/ijkplayer/IJKPlayerView;-><init>(Landroid/content/Context;Lcom/apicloud/ijkplayer/IJKPlayer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIIIZ)V

    iput-object v10, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    .line 108
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mW:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iget v2, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mX:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mH:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iget v3, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mY:I

    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    :goto_0
    iget-object v1, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v9, v1, v0, v11, v12}, Lcom/apicloud/ijkplayer/IJKPlayer;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    .line 117
    iget-object v0, v9, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayer$1;

    invoke-direct {v1, v9}, Lcom/apicloud/ijkplayer/IJKPlayer$1;-><init>(Lcom/apicloud/ijkplayer/IJKPlayer;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setOnFullScreenListener(Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;)V

    :cond_4
    return-void
.end method

.method public jsmethod_open1(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 69
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/apicloud/ijkplayer/TestActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public jsmethod_pause(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->pause()V

    :cond_0
    return-void
.end method

.method public jsmethod_play(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->play()V

    :cond_0
    return-void
.end method

.method public jsmethod_removeEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "name"

    .line 279
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "gesture"

    .line 280
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    iput-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_gesture:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_0

    :cond_0
    const-string v0, "click"

    .line 282
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iput-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_click:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    goto :goto_0

    :cond_1
    const-string v0, "state"

    .line 284
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 285
    iput-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->moduleContext_state:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    :cond_2
    :goto_0
    return-void
.end method

.method public jsmethod_replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->replay(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :cond_0
    return-void
.end method

.method public jsmethod_rewind(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    const-string v0, "seconds"

    .line 334
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 335
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->rewind(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_screenCapture(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    .line 540
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 541
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "no playing"

    const-string v3, "msg"

    const/4 v4, 0x0

    const-string v5, "status"

    if-eqz v1, :cond_1

    .line 542
    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    invoke-static {v1}, Lcom/apicloud/Utils/MouleUtil;->saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 546
    :try_start_0
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "bitmapPath"

    .line 547
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 550
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 554
    :cond_0
    :try_start_1
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 555
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 557
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 563
    :cond_1
    :try_start_2
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 564
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .line 566
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 569
    :goto_0
    invoke-virtual {p1, v0, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_seekTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v0, :cond_0

    const-string v0, "seconds"

    .line 344
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 345
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0, p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_setBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 354
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->setBrightness(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_setHeadFoot(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "head"

    .line 513
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "foot"

    .line 514
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 516
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 517
    iget-object v4, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v5, "status"

    if-eqz v4, :cond_0

    .line 518
    invoke-virtual {v4, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setmHeadHide(Z)V

    .line 519
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setmBottomHide(Z)V

    .line 520
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->refreshHeadBottom()V

    const/4 v1, 0x1

    .line 522
    :try_start_0
    invoke-virtual {v3, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 523
    invoke-virtual {p1, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 529
    :cond_0
    :try_start_1
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v2, "no playing"

    .line 530
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-virtual {p1, v3, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 533
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_setPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "path"

    .line 179
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "coverImg"

    .line 180
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    .line 181
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz v3, :cond_0

    .line 184
    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public jsmethod_setSpeed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "speed"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 490
    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 492
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 493
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v3, "status"

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 494
    invoke-virtual {v2, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setSpeed(F)V

    const/4 v0, 0x1

    .line 496
    :try_start_0
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 497
    invoke-virtual {p1, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 499
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v2, "no playing"

    .line 504
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 505
    invoke-virtual {p1, v1, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 507
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_setVolume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "volume"

    .line 400
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    .line 401
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    .line 402
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 403
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice max = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "asher"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 405
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public jsmethod_show(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 241
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p1, v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onClean()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer;->resover:Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    invoke-direct {p0}, Lcom/apicloud/ijkplayer/IJKPlayer;->closeVideo()V

    .line 57
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    return-void
.end method
