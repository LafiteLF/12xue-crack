.class public Lcom/apicloud/audioRecorder/PcmAudioRecorder;
.super Ljava/lang/Object;
.source "PcmAudioRecorder.java"


# static fields
.field public static final SAMPLE_RATE:I = 0x3e80


# instance fields
.field private intVolume:I

.field private mBuffer:[S

.field private mConveter:Lcom/zc/RecordDemo/Mp3Conveter;

.field private mIsPause:Z

.field private mIsRecording:Z

.field private mRecorder:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    .line 104
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    return-void
.end method

.method static synthetic access$0(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$1(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    return p0
.end method

.method static synthetic access$2(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Landroid/media/AudioRecord;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mBuffer:[S

    return-object p0
.end method

.method static synthetic access$4(Lcom/apicloud/audioRecorder/PcmAudioRecorder;I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->intVolume:I

    return-void
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5

    .line 142
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 143
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%Y%m%d%H%M%S"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private startBufferedWrite(Ljava/io/File;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;-><init>(Lcom/apicloud/audioRecorder/PcmAudioRecorder;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getVolume()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->intVolume:I

    return v0
.end method

.method public pauseRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    return-void
.end method

.method public prepare(II)V
    .locals 7

    const/4 v0, 0x2

    .line 31
    invoke-static {p1, p2, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    .line 33
    new-array p1, v6, [S

    iput-object p1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mBuffer:[S

    .line 34
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/16 v3, 0x3e80

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 34
    iput-object p1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-void
.end method

.method public release()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 132
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    .line 134
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mConveter:Lcom/zc/RecordDemo/Mp3Conveter;

    if-eqz v0, :cond_1

    .line 137
    invoke-virtual {v0}, Lcom/zc/RecordDemo/Mp3Conveter;->destroyEncoder()V

    :cond_1
    return-void
.end method

.method public restartRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    return-void
.end method

.method public startRecording(Ljava/io/File;)V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    .line 47
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 49
    invoke-direct {p0, p1}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->startBufferedWrite(Ljava/io/File;)V

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    if-nez v1, :cond_1

    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsPause:Z

    .line 124
    iput-boolean v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->mIsRecording:Z

    return-void
.end method
