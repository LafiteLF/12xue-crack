.class public Lcom/apicloud/audiostreamer/UzAudioStreamer;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzAudioStreamer.java"


# instance fields
.field private CurrentTime:I

.field private final TAG:Ljava/lang/String;

.field private Tempduration:I

.field private addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private flag:Z

.field private getBufferingRatio:I

.field private mPrence:I

.field private progressModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private state:Ljava/lang/String;

.field temp:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 23
    const-class p1, Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->CurrentTime:I

    .line 26
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getBufferingRatio:I

    const-string v0, ""

    .line 27
    iput-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->state:Ljava/lang/String;

    .line 29
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->temp:I

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->Tempduration:I

    return p0
.end method

.method static synthetic access$002(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->Tempduration:I

    return p1
.end method

.method static synthetic access$100(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->flag:Z

    return p0
.end method

.method static synthetic access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getBufferingRatio:I

    return p0
.end method

.method static synthetic access$202(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getBufferingRatio:I

    return p1
.end method

.method static synthetic access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method static synthetic access$402(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->CurrentTime:I

    return p1
.end method

.method static synthetic access$500(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->progressModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->state:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/apicloud/audiostreamer/UzAudioStreamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->mPrence:I

    return p0
.end method

.method private computeTag()Ljava/lang/String;
    .locals 1

    .line 379
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private getVolumnCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V
    .locals 6

    .line 433
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 435
    :try_start_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v2, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double p2, p3

    div-double/2addr v2, p2

    .line 436
    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const-string p3, "volume"

    .line 437
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 438
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 440
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 2

    .line 413
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    .line 415
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 417
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 419
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 371
    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 372
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object v0

    .line 373
    invoke-virtual {v0, p1}, Lcom/apicloud/audiostreamer/MediaService;->addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_addProgressListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->progressModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public jsmethod_getBufferingRatio(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    .line 352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "ratio"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getBufferingRatio:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 356
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 358
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_getCurrentTime(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 335
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "current"

    .line 337
    iget v2, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->CurrentTime:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 339
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 341
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_getDuration(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "path"

    .line 387
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 393
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 395
    new-instance v0, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;-><init>(Lcom/apicloud/audiostreamer/UzAudioStreamer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 406
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 402
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public jsmethod_getVolume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 423
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 424
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 426
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxVolume === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, p1, v2, v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getVolumnCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void
.end method

.method public jsmethod_onCall(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const/4 p1, 0x0

    .line 452
    iput-boolean p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->flag:Z

    .line 453
    iget p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->getBufferingRatio:I

    iput p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->mPrence:I

    .line 454
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object p1

    .line 455
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/audiostreamer/MediaService;->onCall(Landroid/content/Context;)V

    return-void
.end method

.method public jsmethod_onNormal(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 464
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object p1

    .line 465
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/audiostreamer/MediaService;->onNormal(Landroid/content/Context;)V

    return-void
.end method

.method public jsmethod_openPlayer(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "path"

    .line 44
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->flag:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;

    invoke-direct {v2, p0, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;-><init>(Lcom/apicloud/audiostreamer/UzAudioStreamer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v1, v2}, Lcom/apicloud/audiostreamer/MediaService;->setPlayListener(Lcom/apicloud/audiostreamer/PlayListener;)V

    .line 219
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/apicloud/audiostreamer/MediaService;->play(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public jsmethod_pause(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 294
    :try_start_0
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Lcom/apicloud/audiostreamer/MediaService;->pause()V

    .line 296
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_0

    .line 297
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "state"

    const-string v1, "pause"

    .line 298
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public jsmethod_removeProgressListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->progressModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->progressModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 242
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x1

    .line 243
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public jsmethod_seekToTime(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "time"

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 281
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object v0

    .line 282
    invoke-virtual {v0, p1}, Lcom/apicloud/audiostreamer/MediaService;->setSeek(I)V

    return-void
.end method

.method public jsmethod_setLoop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const-string v0, "loop"

    .line 313
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 314
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object v0

    .line 315
    invoke-virtual {v0, p1}, Lcom/apicloud/audiostreamer/MediaService;->setLoop(Z)V

    return-void
.end method

.method public jsmethod_setVolume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "volume"

    .line 259
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    .line 260
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 261
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr p1, v2

    float-to-int p1, p1

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public jsmethod_stop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 325
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 268
    iput-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer;->addEventlistenerMoudleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->computeTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/audiostreamer/MediaService;->instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/audiostreamer/MediaService;->onClean()V

    return-void
.end method
