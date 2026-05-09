.class public Lcom/apicloud/audiostreamer/MediaService;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;


# static fields
.field static MediaList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/apicloud/audiostreamer/MediaService;",
            ">;"
        }
    .end annotation
.end field

.field static mDuration:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurSource:Ljava/lang/String;

.field private mInPrepareing:Z

.field private mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mPrecent:I

.field private mSource:Ljava/lang/String;

.field private moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private report:Landroid/os/Handler;

.field private tempInput:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/apicloud/audiostreamer/MediaService;->MediaList:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mCurSource:Ljava/lang/String;

    .line 357
    new-instance v0, Lcom/apicloud/audiostreamer/MediaService$1;

    invoke-direct {v0, p0}, Lcom/apicloud/audiostreamer/MediaService$1;-><init>(Lcom/apicloud/audiostreamer/MediaService;)V

    iput-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->report:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/audiostreamer/MediaService;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/MediaService;->isPlaying()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/apicloud/audiostreamer/MediaService;)Landroid/media/MediaPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/audiostreamer/MediaService;)Lcom/apicloud/audiostreamer/PlayListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    return-object p0
.end method

.method private errorCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1, p2}, Lcom/apicloud/audiostreamer/PlayListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static instance(Ljava/lang/String;)Lcom/apicloud/audiostreamer/MediaService;
    .locals 2

    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    sget-object v0, Lcom/apicloud/audiostreamer/MediaService;->MediaList:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/audiostreamer/MediaService;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/apicloud/audiostreamer/MediaService;

    invoke-direct {v0}, Lcom/apicloud/audiostreamer/MediaService;-><init>()V

    .line 51
    sget-object v1, Lcom/apicloud/audiostreamer/MediaService;->MediaList:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private isPlaying()Z
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 343
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v1
.end method

.method private setCallback()V
    .locals 3

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "state"

    const-string v2, "resume"

    .line 101
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object v1, p0, Lcom/apicloud/audiostreamer/MediaService;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setPlayerPath(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const-string v0, "http"

    .line 116
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "source error"

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    invoke-direct {p0, v2, v2}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "?"

    .line 125
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    .line 127
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-wide/16 v3, 0x0

    const-string v0, "android_asset"

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x7

    const-string v6, "file://"

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/16 v0, 0xf

    .line 136
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 138
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 141
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 142
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    invoke-direct {p0, v2, v2}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 149
    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 153
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->tempInput:Ljava/io/FileInputStream;

    .line 154
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p2

    .line 155
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->tempInput:Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    int-to-long v5, p1

    :goto_0
    move-object v8, p2

    move-wide v9, v3

    move-wide v11, v5

    .line 163
    :try_start_3
    iget-object v7, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    const/4 p1, 0x1

    return p1

    :catch_2
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    invoke-direct {p0, v2, v2}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_3
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    invoke-direct {p0, v2, v2}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f13\u51b2\u8fdb\u5ea6---\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    if-eqz p1, :cond_0

    .line 285
    invoke-interface {p1, p2}, Lcom/apicloud/audiostreamer/PlayListener;->onBufferingRatio(I)V

    :cond_0
    return-void
.end method

.method public onCall(Landroid/content/Context;)V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 432
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    .line 433
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 435
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_2

    .line 436
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 437
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPrecent:I

    .line 438
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 440
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 443
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 445
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 446
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 448
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 449
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 450
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 451
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPrecent:I

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onClean()V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    .line 352
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->report:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 292
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    .line 293
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    if-eqz p1, :cond_0

    .line 294
    sget v0, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    invoke-interface {p1, v0}, Lcom/apicloud/audiostreamer/PlayListener;->onCompletion(I)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .line 300
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 301
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eq p2, v0, :cond_1

    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    :cond_1
    const-string p1, "MEDIA_ERROR_UNKNOWN"

    .line 310
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/16 v1, -0x3f2

    if-eq p2, v1, :cond_5

    const/16 v1, -0x3ef

    if-eq p2, v1, :cond_4

    const/16 v1, -0x3ec

    if-eq p2, v1, :cond_3

    const/16 v1, -0x6e

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "MEDIA_ERROR_TIMED_OUT "

    goto :goto_1

    :cond_3
    const-string p1, "MEDIA_ERROR_IO "

    goto :goto_1

    :cond_4
    const-string p1, "MEDIA_ERROR_MALFORMED "

    goto :goto_1

    :cond_5
    const-string p1, "MEDIA_ERROR_UNSUPPORTED "

    .line 325
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_6
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    return v0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, 0x2bd

    if-eq p2, p1, :cond_1

    const/16 p1, 0x2be

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "\u7f13\u51b2\u7ed3\u675f"

    goto :goto_0

    :cond_1
    const-string p1, "\u7f13\u51b2\u4e2d"

    .line 412
    :goto_0
    iget-object p2, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    sget p3, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    invoke-interface {p2, p1, p3}, Lcom/apicloud/audiostreamer/PlayListener;->onBufferingInfo(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public onNormal(Landroid/content/Context;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 470
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 473
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 257
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    sput v0, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    .line 260
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 261
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 263
    sget p1, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    div-int/lit16 p1, p1, 0x3e8

    .line 265
    iget-object v1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    invoke-interface {v1, p1}, Lcom/apicloud/audiostreamer/PlayListener;->onPrepared(I)V

    .line 266
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->report:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :cond_0
    iput-boolean v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mInPrepareing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    const-string p1, "start in an invalid state"

    .line 272
    invoke-direct {p0, p1, p1}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/MediaService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public play(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 62
    iput-object p2, p0, Lcom/apicloud/audiostreamer/MediaService;->mSource:Ljava/lang/String;

    .line 63
    iget-boolean v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mInPrepareing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 67
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/MediaService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mCurSource:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 70
    invoke-direct {p0}, Lcom/apicloud/audiostreamer/MediaService;->setCallback()V

    .line 71
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->report:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v2

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/audiostreamer/MediaService;->stop()V

    .line 76
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    .line 77
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 78
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 79
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 80
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/apicloud/audiostreamer/MediaService;->setPlayerPath(Landroid/content/Context;Ljava/lang/String;)Z

    .line 85
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 86
    iput-boolean v2, p0, Lcom/apicloud/audiostreamer/MediaService;->mInPrepareing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    iput-object p2, p0, Lcom/apicloud/audiostreamer/MediaService;->mCurSource:Ljava/lang/String;

    return v2

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "prepare in an invalid state"

    .line 89
    invoke-direct {p0, p1, p1}, Lcom/apicloud/audiostreamer/MediaService;->errorCallback(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public setLoop(Z)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setPlayListener(Lcom/apicloud/audiostreamer/PlayListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayListener:Lcom/apicloud/audiostreamer/PlayListener;

    return-void
.end method

.method public setSeek(I)V
    .locals 4

    .line 194
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 199
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v0, v1

    :goto_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    mul-int/lit16 p1, p1, 0x3e8

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :goto_1
    if-le v1, v0, :cond_3

    int-to-double v0, v0

    const-wide v2, 0x407f400000000000L    # 500.0

    sub-double/2addr v0, v2

    double-to-int v1, v0

    .line 214
    :cond_3
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 232
    iput-object v1, p0, Lcom/apicloud/audiostreamer/MediaService;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/MediaService;->tempInput:Ljava/io/FileInputStream;

    if-eqz v0, :cond_1

    .line 239
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 240
    iput-object v1, p0, Lcom/apicloud/audiostreamer/MediaService;->tempInput:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 245
    sput v0, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    const-string v1, ""

    .line 246
    iput-object v1, p0, Lcom/apicloud/audiostreamer/MediaService;->mCurSource:Ljava/lang/String;

    .line 247
    iput-boolean v0, p0, Lcom/apicloud/audiostreamer/MediaService;->mInPrepareing:Z

    return-void
.end method
