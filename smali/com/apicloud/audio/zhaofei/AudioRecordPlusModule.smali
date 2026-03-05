.class public Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "AudioRecordPlusModule.java"

# interfaces
.implements Lcom/clam314/lame/MediaRecorderListener;


# instance fields
.field private audioSession:I

.field private eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

.field private mAudioManager:Landroid/media/AudioManager;

.field private maxDecibel:Ljava/lang/Double;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    .line 34
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->audioSession:I

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method private setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 328
    :try_start_0
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getDuration(Ljava/lang/String;)D
    .locals 3

    .line 312
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 314
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-double v1, p1

    .line 322
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-wide v1
.end method

.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 61
    sget-object p1, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {p1, p0}, Lcom/clam314/lame/LameMp3Manager;->setMediaRecorderListener(Lcom/clam314/lame/MediaRecorderListener;)V

    return-void
.end method

.method public jsmethod_closeVoiceLine(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    const-string v1, "status"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 272
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 273
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v4, "openVoiceLine is not open!"

    .line 274
    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p1, v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    .line 282
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_openVoiceLine(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    .line 217
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 219
    iput-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v0, "volume"

    .line 221
    invoke-virtual {p1, v0, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isTransparent"

    .line 222
    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 224
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 225
    sget v5, Lcom/apicloud/audio/zhaofei/R$layout;->mo_voiceline_view:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    .line 226
    sget v4, Lcom/apicloud/audio/zhaofei/R$id;->voiceLineactivity:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/apicloud/audio/zhaofei/VoiceLineView;

    iput-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 228
    invoke-virtual {v1, v3}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->setBackgroundColor(I)V

    .line 229
    iget-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

    new-instance v3, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule$1;

    invoke-direct {v3, p0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule$1;-><init>(Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;)V

    invoke-virtual {v1, v3}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

    iget-object v3, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->setInitVolume(FF)V

    const-string v0, "rect"

    .line 238
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, -0x2

    if-eqz v0, :cond_2

    const-string v3, "x"

    .line 246
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "y"

    .line 247
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "w"

    .line 248
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "h"

    .line 249
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    move v1, v4

    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_0

    :cond_2
    move v0, v1

    move v3, v2

    :goto_0
    const-string v4, "fixedOn"

    .line 251
    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "fixed"

    .line 253
    invoke-virtual {p1, v6, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 255
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 256
    iput v2, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 257
    iput v3, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0, v7, v4, v6}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    .line 260
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "status"

    invoke-direct {p0, v0, v2, v1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p1, v0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_pauseRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 153
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isRecording()Z

    move-result v0

    const-string v1, "status"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isPauseing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->pauseRecord()V

    .line 163
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 154
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v4, "Unrecorded"

    .line 157
    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p1, v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_resumeRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 173
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isRecording()Z

    move-result v0

    const-string v1, "status"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isPauseing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->resumeRecord()V

    .line 183
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 174
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 175
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 176
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v4, "Recording"

    .line 177
    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1, v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_setDecibels(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    const-string v1, "status"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 294
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 295
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v4, "openVoiceLine is not open!"

    .line 296
    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1, v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-string v0, "decibel"

    .line 300
    invoke-virtual {p1, v0, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->intValue()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 302
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    .line 304
    :cond_1
    iget-object v3, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->setVolume(I)V

    .line 306
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 307
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_startRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    .line 69
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isRecording()Z

    move-result v0

    const-string v1, "status"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 72
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v2, "Recording"

    .line 73
    invoke-direct {p0, v4, v1, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1, v0, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    const-string v4, "channel"

    .line 77
    invoke-virtual {p1, v4, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v4

    const v5, 0xac44

    const-string v6, "sampleRates"

    .line 78
    invoke-virtual {p1, v6, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    const-string v8, "maxDecibel"

    .line 79
    invoke-virtual {p1, v8, v6, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    iput-object v6, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    const-string v6, "audioSession"

    .line 80
    invoke-virtual {p1, v6, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->audioSession:I

    if-ne v2, v3, :cond_2

    .line 82
    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->context()Landroid/content/Context;

    move-result-object v2

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 90
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fs://"

    .line 92
    invoke-virtual {p0, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    sget-object v6, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v6, v5, v4}, Lcom/clam314/lame/LameMp3Manager;->setConfig(II)V

    .line 95
    sget-object v4, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".mp3"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/clam314/lame/LameMp3Manager;->startRecorder(Ljava/lang/String;)V

    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_stopRecord(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 193
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isRecording()Z

    move-result v0

    const-string v1, "status"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/4 v4, 0x0

    .line 196
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "msg"

    const-string v4, "Unrecorded"

    .line 197
    invoke-direct {p0, v3, v1, v4}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p1, v0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 201
    :cond_0
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->stopRecorder()V

    .line 202
    iget v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->audioSession:I

    if-ne v0, v2, :cond_1

    .line 203
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 207
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 208
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method protected onClean()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    .line 45
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Lcom/clam314/lame/LameMp3Manager;->cancelRecorder()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0, v0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 50
    iput-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->rootView:Landroid/view/View;

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 55
    iput-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->mAudioManager:Landroid/media/AudioManager;

    :cond_2
    return-void
.end method

.method public onRecorderDecibels(I)V
    .locals 3

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 130
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 131
    iget-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->maxDecibel:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x40400000    # 3.0f

    div-float/2addr p1, v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->lineView:Lcom/apicloud/audio/zhaofei/VoiceLineView;

    if-eqz v0, :cond_1

    float-to-int v1, p1

    .line 134
    invoke-virtual {v0, v1}, Lcom/apicloud/audio/zhaofei/VoiceLineView;->setVolume(I)V

    .line 136
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, p1

    .line 137
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_2

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "status"

    invoke-direct {p0, v0, v2, v1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "evenType"

    const-string v2, "Decibels"

    .line 142
    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "decibel"

    .line 143
    invoke-direct {p0, v0, v1, p1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iget-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_2
    return-void
.end method

.method public onRecorderError()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 106
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "status"

    invoke-direct {p0, v0, v2, v1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "evenType"

    const-string v2, "errorRecord"

    .line 107
    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public onRecorderFinish(ILjava/lang/String;)V
    .locals 2

    .line 114
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "path"

    .line 115
    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->getDuration(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const-string v0, "duration"

    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object p2, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p2, :cond_0

    .line 119
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x1

    .line 120
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "status"

    invoke-direct {p0, p2, v1, v0}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "evenType"

    const-string v1, "endRecord"

    .line 121
    invoke-direct {p0, p2, v0, v1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "data"

    .line 122
    invoke-direct {p0, p2, v0, p1}, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->setJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/apicloud/audio/zhaofei/AudioRecordPlusModule;->eventListener:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method
