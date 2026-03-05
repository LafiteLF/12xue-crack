.class public final enum Lcom/clam314/lame/LameMp3Manager;
.super Ljava/lang/Enum;
.source "LameMp3Manager.java"

# interfaces
.implements Lcom/clam314/lame/Mp3Recorder$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/clam314/lame/LameMp3Manager;",
        ">;",
        "Lcom/clam314/lame/Mp3Recorder$OnFinishListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/clam314/lame/LameMp3Manager;

.field private static final TAG:Ljava/lang/String;

.field public static final enum instance:Lcom/clam314/lame/LameMp3Manager;


# instance fields
.field private cancel:Z

.field private mediaRecorderListener:Lcom/clam314/lame/MediaRecorderListener;

.field private mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

.field private pause:Z

.field private recording:Z

.field private stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/clam314/lame/LameMp3Manager;

    const/4 v1, 0x0

    const-string v2, "instance"

    invoke-direct {v0, v2, v1}, Lcom/clam314/lame/LameMp3Manager;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clam314/lame/LameMp3Manager;->instance:Lcom/clam314/lame/LameMp3Manager;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/clam314/lame/LameMp3Manager;

    aput-object v0, v2, v1

    .line 14
    sput-object v2, Lcom/clam314/lame/LameMp3Manager;->$VALUES:[Lcom/clam314/lame/LameMp3Manager;

    .line 17
    const-class v0, Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clam314/lame/LameMp3Manager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/clam314/lame/LameMp3Manager;->recording:Z

    .line 19
    iput-boolean p1, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    .line 21
    iput-boolean p1, p0, Lcom/clam314/lame/LameMp3Manager;->cancel:Z

    .line 22
    iput-boolean p1, p0, Lcom/clam314/lame/LameMp3Manager;->stop:Z

    .line 26
    new-instance p1, Lcom/clam314/lame/Mp3Recorder;

    invoke-direct {p1}, Lcom/clam314/lame/Mp3Recorder;-><init>()V

    iput-object p1, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    .line 27
    invoke-virtual {p1, p0}, Lcom/clam314/lame/Mp3Recorder;->setFinishListener(Lcom/clam314/lame/Mp3Recorder$OnFinishListener;)V

    return-void
.end method

.method private createMp3SaveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    sget-object p1, Lcom/clam314/lame/LameMp3Manager;->TAG:Ljava/lang/String;

    const-string v1, "create mp3 file for the recorder"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clam314/lame/LameMp3Manager;
    .locals 1

    .line 14
    const-class v0, Lcom/clam314/lame/LameMp3Manager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clam314/lame/LameMp3Manager;

    return-object p0
.end method

.method public static values()[Lcom/clam314/lame/LameMp3Manager;
    .locals 1

    .line 14
    sget-object v0, Lcom/clam314/lame/LameMp3Manager;->$VALUES:[Lcom/clam314/lame/LameMp3Manager;

    invoke-virtual {v0}, [Lcom/clam314/lame/LameMp3Manager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/clam314/lame/LameMp3Manager;

    return-object v0
.end method


# virtual methods
.method public cancelRecorder()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0}, Lcom/clam314/lame/Mp3Recorder;->stopRecording()V

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->cancel:Z

    return-void
.end method

.method public isPauseing()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->recording:Z

    return v0
.end method

.method public onDecibels(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mediaRecorderListener:Lcom/clam314/lame/MediaRecorderListener;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Lcom/clam314/lame/MediaRecorderListener;->onRecorderDecibels(I)V

    :cond_0
    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->cancel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 95
    :cond_0
    iput-boolean v1, p0, Lcom/clam314/lame/LameMp3Manager;->cancel:Z

    goto :goto_0

    .line 96
    :cond_1
    iget-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->stop:Z

    if-eqz v0, :cond_2

    .line 97
    iput-boolean v1, p0, Lcom/clam314/lame/LameMp3Manager;->stop:Z

    .line 98
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mediaRecorderListener:Lcom/clam314/lame/MediaRecorderListener;

    if-eqz v0, :cond_2

    const/16 v2, 0xd1

    .line 99
    invoke-interface {v0, v2, p1}, Lcom/clam314/lame/MediaRecorderListener;->onRecorderFinish(ILjava/lang/String;)V

    .line 103
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/clam314/lame/LameMp3Manager;->recording:Z

    .line 104
    iput-boolean v1, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    return-void
.end method

.method public pauseRecord()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0}, Lcom/clam314/lame/Mp3Recorder;->pauseRecording()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    return-void
.end method

.method public resumeRecord()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0}, Lcom/clam314/lame/Mp3Recorder;->resumeRecording()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    return-void
.end method

.method public setConfig(II)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0, p1, p2}, Lcom/clam314/lame/Mp3Recorder;->setConfig(II)V

    return-void
.end method

.method public setMediaRecorderListener(Lcom/clam314/lame/MediaRecorderListener;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/clam314/lame/LameMp3Manager;->mediaRecorderListener:Lcom/clam314/lame/MediaRecorderListener;

    return-void
.end method

.method public startRecorder(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->pause:Z

    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->stop:Z

    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->cancel:Z

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-direct {p0, p1}, Lcom/clam314/lame/LameMp3Manager;->createMp3SaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/clam314/lame/Mp3Recorder;->startRecording(Ljava/io/File;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/clam314/lame/LameMp3Manager;->recording:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->recording:Z

    .line 54
    iget-object p1, p0, Lcom/clam314/lame/LameMp3Manager;->mediaRecorderListener:Lcom/clam314/lame/MediaRecorderListener;

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/clam314/lame/MediaRecorderListener;->onRecorderError()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopRecorder()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/clam314/lame/LameMp3Manager;->mp3Recorder:Lcom/clam314/lame/Mp3Recorder;

    invoke-virtual {v0}, Lcom/clam314/lame/Mp3Recorder;->stopRecording()V

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/clam314/lame/LameMp3Manager;->stop:Z

    return-void
.end method
