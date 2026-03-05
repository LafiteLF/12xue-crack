.class public Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;
.super Ljava/lang/Object;
.source "RecMicToMp3.java"


# static fields
.field public static final MSG_ERROR_AUDIO_ENCODE:I = 0x6

.field public static final MSG_ERROR_AUDIO_RECORD:I = 0x5

.field public static final MSG_ERROR_CLOSE_FILE:I = 0x8

.field public static final MSG_ERROR_CREATE_FILE:I = 0x3

.field public static final MSG_ERROR_GET_MIN_BUFFERSIZE:I = 0x2

.field public static final MSG_ERROR_REC_START:I = 0x4

.field public static final MSG_ERROR_WRITE_FILE:I = 0x7

.field public static final MSG_REC_ING:I = 0xa

.field public static final MSG_REC_STARTED:I = 0x0

.field public static final MSG_REC_STOPPED:I = 0x1


# instance fields
.field private SPACE:I

.field audioRecord:Landroid/media/AudioRecord;

.field private mFilePath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsRecording:Z

.field private mSampleRate:I

.field private mUpdateMicStatusTimer:Ljava/lang/Runnable;

.field private final mmHandler:Landroid/os/Handler;

.field volume:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mp3lame"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 72
    iput v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->SPACE:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mmHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$1;

    invoke-direct {v0, p0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$1;-><init>(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)V

    iput-object v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    if-lez p2, :cond_0

    .line 186
    iput-object p1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mFilePath:Ljava/lang/String;

    .line 187
    iput p2, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mSampleRate:I

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Invalid sample rate specified."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->updateMicStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mSampleRate:I

    return p0
.end method

.method static synthetic access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    return p1
.end method

.method private updateMicStatus()V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5206\u8d1d\u503c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->volume:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentValues"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 84
    iget-object v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mmHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mUpdateMicStatusTimer:Ljava/lang/Runnable;

    iget v2, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->SPACE:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getDb()D
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->volume:D

    return-wide v0
.end method

.method public isRecording()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    return v0
.end method

.method public setHandle(Landroid/os/Handler;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSPACE(I)V
    .locals 1

    if-lez p1, :cond_0

    const/16 v0, 0x64

    .line 76
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->SPACE:I

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    new-instance v0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;

    invoke-direct {v0, p0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;-><init>(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)V

    .line 357
    invoke-virtual {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->mIsRecording:Z

    return-void
.end method
