.class public Lcom/clam314/lame/Mp3Recorder;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clam314/lame/Mp3Recorder$OnFinishListener;
    }
.end annotation


# static fields
.field private static final BIT_RATE:I = 0x20

.field private static final DEFAULT_SAMPLING_RATE:I = 0xac44

.field private static final FRAME_COUNT:I = 0xa0

.field private static final MAX_VOLUME:I = 0x7d0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private audioFormat:Lcom/clam314/lame/PCMFormat;

.field private audioRecord:Landroid/media/AudioRecord;

.field private bufferSize:I

.field private channelConfig:I

.field private encodeThread:Lcom/clam314/lame/DataEncodeThread;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private finishListener:Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

.field private isPauseing:Z

.field private isRecording:Z

.field private mPCMBuffer:[S

.field private mVolume:I

.field private mp3File:Ljava/io/File;

.field private os:Ljava/io/FileOutputStream;

.field private samplingRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    const-string v0, "lamemp3"

    .line 30
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 88
    sget-object v0, Lcom/clam314/lame/PCMFormat;->PCM_16BIT:Lcom/clam314/lame/PCMFormat;

    const v1, 0xac44

    const/16 v2, 0x10

    invoke-direct {p0, v1, v2, v0}, Lcom/clam314/lame/Mp3Recorder;-><init>(IILcom/clam314/lame/PCMFormat;)V

    return-void
.end method

.method public constructor <init>(IILcom/clam314/lame/PCMFormat;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    .line 55
    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->os:Ljava/io/FileOutputStream;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isRecording:Z

    .line 66
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    const/4 v0, 0x1

    .line 68
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->executor:Ljava/util/concurrent/ExecutorService;

    .line 78
    iput p1, p0, Lcom/clam314/lame/Mp3Recorder;->samplingRate:I

    .line 79
    iput p2, p0, Lcom/clam314/lame/Mp3Recorder;->channelConfig:I

    .line 80
    iput-object p3, p0, Lcom/clam314/lame/Mp3Recorder;->audioFormat:Lcom/clam314/lame/PCMFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/clam314/lame/Mp3Recorder;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/clam314/lame/Mp3Recorder;->isRecording:Z

    return p0
.end method

.method static synthetic access$002(Lcom/clam314/lame/Mp3Recorder;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/clam314/lame/Mp3Recorder;->isRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/clam314/lame/Mp3Recorder;)[S
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->mPCMBuffer:[S

    return-object p0
.end method

.method static synthetic access$1000(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/File;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->mp3File:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->os:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method static synthetic access$200(Lcom/clam314/lame/Mp3Recorder;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    return p0
.end method

.method static synthetic access$300(Lcom/clam314/lame/Mp3Recorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$302(Lcom/clam314/lame/Mp3Recorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$400(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/DataEncodeThread;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->encodeThread:Lcom/clam314/lame/DataEncodeThread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/clam314/lame/Mp3Recorder;[SI)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/clam314/lame/Mp3Recorder;->calculateRealVolume([SI)V

    return-void
.end method

.method static synthetic access$600(Lcom/clam314/lame/Mp3Recorder;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/Mp3Recorder$OnFinishListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/clam314/lame/Mp3Recorder;->finishListener:Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/clam314/lame/Mp3Recorder;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/clam314/lame/Mp3Recorder;->mVolume:I

    return p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateRealVolume([SI)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 185
    aget-short v3, p1, v2

    aget-short v4, p1, v2

    mul-int/2addr v3, v4

    int-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez p2, :cond_1

    int-to-double p1, p2

    div-double/2addr v0, p1

    .line 189
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/clam314/lame/Mp3Recorder;->mVolume:I

    :cond_1
    return-void
.end method

.method private initAudioRecorder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioFormat:Lcom/clam314/lame/PCMFormat;

    invoke-virtual {v0}, Lcom/clam314/lame/PCMFormat;->getBytesPerFrame()I

    move-result v0

    .line 212
    iget v1, p0, Lcom/clam314/lame/Mp3Recorder;->samplingRate:I

    iget v2, p0, Lcom/clam314/lame/Mp3Recorder;->channelConfig:I

    iget-object v3, p0, Lcom/clam314/lame/Mp3Recorder;->audioFormat:Lcom/clam314/lame/PCMFormat;

    invoke-virtual {v3}, Lcom/clam314/lame/PCMFormat;->getAudioFormat()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    div-int/2addr v1, v0

    .line 213
    rem-int/lit16 v2, v1, 0xa0

    const/16 v3, 0xa0

    if-eqz v2, :cond_0

    rsub-int v2, v2, 0xa0

    add-int/2addr v1, v2

    .line 215
    sget-object v2, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Frame size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    mul-int/2addr v1, v0

    .line 217
    iput v1, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    .line 219
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v5, 0x1

    iget v6, p0, Lcom/clam314/lame/Mp3Recorder;->samplingRate:I

    iget v7, p0, Lcom/clam314/lame/Mp3Recorder;->channelConfig:I

    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder;->audioFormat:Lcom/clam314/lame/PCMFormat;

    invoke-virtual {v1}, Lcom/clam314/lame/PCMFormat;->getAudioFormat()I

    move-result v8

    iget v9, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    .line 221
    iget v0, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->mPCMBuffer:[S

    .line 224
    iget v0, p0, Lcom/clam314/lame/Mp3Recorder;->samplingRate:I

    iget v1, p0, Lcom/clam314/lame/Mp3Recorder;->channelConfig:I

    const/16 v2, 0x20

    invoke-static {v0, v1, v0, v2}, Lio/dcloud/feature/audio/mp3/SimpleLame;->init(IIII)V

    .line 226
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder;->mp3File:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->os:Ljava/io/FileOutputStream;

    .line 229
    new-instance v0, Lcom/clam314/lame/DataEncodeThread;

    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder;->os:Ljava/io/FileOutputStream;

    iget v2, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    invoke-direct {v0, v1, v2}, Lcom/clam314/lame/DataEncodeThread;-><init>(Ljava/io/FileOutputStream;I)V

    iput-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->encodeThread:Lcom/clam314/lame/DataEncodeThread;

    .line 230
    invoke-virtual {v0}, Lcom/clam314/lame/DataEncodeThread;->start()V

    .line 232
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder;->encodeThread:Lcom/clam314/lame/DataEncodeThread;

    invoke-virtual {v1}, Lcom/clam314/lame/DataEncodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 233
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v3}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    return-void
.end method


# virtual methods
.method public getMaxVolume()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public getVolume()I
    .locals 2

    .line 194
    iget v0, p0, Lcom/clam314/lame/Mp3Recorder;->mVolume:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public pauseRecording()V
    .locals 2

    .line 162
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    const-string v1, "pause recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    return-void
.end method

.method public resumeRecording()V
    .locals 2

    .line 169
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    const-string v1, "resume recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    return-void
.end method

.method public setConfig(II)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/clam314/lame/Mp3Recorder;->samplingRate:I

    .line 93
    iput p2, p0, Lcom/clam314/lame/Mp3Recorder;->channelConfig:I

    return-void
.end method

.method public setFinishListener(Lcom/clam314/lame/Mp3Recorder$OnFinishListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/clam314/lame/Mp3Recorder;->finishListener:Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    return-void
.end method

.method public startRecording(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    const-string v1, "Start recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/clam314/lame/Mp3Recorder;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/clam314/lame/Mp3Recorder;->mp3File:Ljava/io/File;

    .line 103
    iget-object p1, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    if-nez p1, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/clam314/lame/Mp3Recorder;->initAudioRecorder()V

    :cond_1
    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    .line 107
    iget-object p1, p0, Lcom/clam314/lame/Mp3Recorder;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 109
    new-instance p1, Lcom/clam314/lame/Mp3Recorder$1;

    invoke-direct {p1, p0}, Lcom/clam314/lame/Mp3Recorder$1;-><init>(Lcom/clam314/lame/Mp3Recorder;)V

    .line 158
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 176
    sget-object v0, Lcom/clam314/lame/Mp3Recorder;->TAG:Ljava/lang/String;

    const-string v1, "stop recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 177
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isRecording:Z

    .line 178
    iput-boolean v0, p0, Lcom/clam314/lame/Mp3Recorder;->isPauseing:Z

    return-void
.end method
