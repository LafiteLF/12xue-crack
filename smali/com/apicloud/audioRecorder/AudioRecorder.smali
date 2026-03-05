.class public Lcom/apicloud/audioRecorder/AudioRecorder;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "AudioRecorder.java"


# instance fields
.field isConverting:Z

.field private isSet:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->isSet:Z

    .line 231
    iput-boolean p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->isConverting:Z

    return-void
.end method

.method static synthetic access$0(Lcom/apicloud/audioRecorder/AudioRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$1(Lcom/apicloud/audioRecorder/AudioRecorder;)Lcom/apicloud/audioRecorder/PcmAudioRecorder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    return-object p0
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 149
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 151
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IJ)V
    .locals 2

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    .line 305
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "length"

    .line 306
    invoke-virtual {v0, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 308
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 310
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 2

    .line 157
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 159
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 161
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 163
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public convertToMp3(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 241
    new-instance v0, Ljava/io/File;

    move-object/from16 v6, p5

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    new-instance v1, Ljava/io/File;

    move-object/from16 v7, p6

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v9, p0

    .line 244
    iget-boolean v2, v9, Lcom/apicloud/audioRecorder/AudioRecorder;->isConverting:Z

    if-eqz v2, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v10, Lcom/apicloud/audioRecorder/AudioRecorder$2;

    move-object v1, v10

    move-object v2, p0

    move v3, p3

    move v4, p2

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/apicloud/audioRecorder/AudioRecorder$2;-><init>(Lcom/apicloud/audioRecorder/AudioRecorder;IIILjava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 4

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "status"

    .line 106
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "errCode"

    .line 107
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 109
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 111
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    .line 118
    iget-boolean v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->isSet:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->isSet:Z

    const-string v0, "name"

    .line 123
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "volume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->timer:Ljava/util/Timer;

    .line 129
    new-instance v2, Lcom/apicloud/audioRecorder/AudioRecorder$1;

    invoke-direct {v2, p0, p1}, Lcom/apicloud/audioRecorder/AudioRecorder$1;-><init>(Lcom/apicloud/audioRecorder/AudioRecorder;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x12c

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public jsmethod_covertToMp3(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "sampleRates"

    const/16 v1, 0x3e80

    .line 214
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v0, 0x1

    const-string v1, "channel"

    .line 215
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "originalFilePath"

    .line 217
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "mp3FilePath"

    .line 219
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "quality"

    .line 220
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 221
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    .line 226
    invoke-virtual/range {v2 .. v8}, Lcom/apicloud/audioRecorder/AudioRecorder;->convertToMp3(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method

.method public jsmethod_getAttr(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "path"

    .line 275
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 282
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 284
    new-instance v0, Lcom/apicloud/audioRecorder/AudioRecorder$3;

    invoke-direct {v0, p0, p1, v1}, Lcom/apicloud/audioRecorder/AudioRecorder$3;-><init>(Lcom/apicloud/audioRecorder/AudioRecorder;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/io/File;)V

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 293
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public jsmethod_getVolume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x47000000    # 32768.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->volumeCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->getVolume()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->volumeCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    :cond_1
    return-void
.end method

.method public jsmethod_startRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const/4 v0, 0x2

    const-string v1, "channel"

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "sampleRates"

    const/16 v3, 0x3e80

    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "savePath"

    .line 35
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    return-void

    :cond_0
    const-string v4, "format"

    .line 42
    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    :try_start_0
    const-string v6, "pcm"

    .line 46
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    new-instance v0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-direct {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->prepare(II)V

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-virtual {v1, v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->startRecording(Ljava/io/File;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 59
    :cond_2
    new-instance v6, Landroid/media/MediaRecorder;

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v6, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v7, 0x1

    .line 60
    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const-string v6, "3gp"

    .line 62
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 63
    iget-object v4, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v7}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 64
    iget-object v4, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0

    :cond_3
    const-string v6, "aac"

    .line 65
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-le v6, v8, :cond_4

    .line 66
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 67
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0

    :cond_4
    const-string v6, "amr"

    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 69
    iget-object v4, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 70
    iget-object v4, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 77
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 78
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 88
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {p0, p1, v5}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 94
    invoke-virtual {p0, p1, v5}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {p0, p1, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_1
    return-void

    .line 72
    :cond_5
    :try_start_2
    invoke-virtual {p0, p1, v7}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 81
    invoke-virtual {p0, p1, v5}, Lcom/apicloud/audioRecorder/AudioRecorder;->errCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public jsmethod_stopRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 191
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 193
    invoke-virtual {p0, p1, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->recorder:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->stopRecording()V

    .line 196
    invoke-virtual {p0, p1, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :goto_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setIsConverting(Z)V
    .locals 0

    monitor-enter p0

    .line 234
    :try_start_0
    iput-boolean p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder;->isConverting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public volumeCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 2

    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "volume"

    .line 181
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 183
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 185
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
