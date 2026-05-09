.class public Lcom/clam314/lame/DataEncodeThread;
.super Ljava/lang/Thread;
.source "DataEncodeThread.java"

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;,
        Lcom/clam314/lame/DataEncodeThread$StopHandler;
    }
.end annotation


# static fields
.field public static final PROCESS_STOP:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Lcom/clam314/lame/DataEncodeThread$StopHandler;

.field private handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private mChangeBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mp3Buffer:[B

.field private os:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/clam314/lame/DataEncodeThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clam314/lame/DataEncodeThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileOutputStream;I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->mChangeBuffers:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 70
    iput-object p1, p0, Lcom/clam314/lame/DataEncodeThread;->os:Ljava/io/FileOutputStream;

    mul-int/lit8 p2, p2, 0x2

    int-to-double p1, p2

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    mul-double/2addr p1, v0

    const-wide v0, 0x40bc200000000000L    # 7200.0

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 71
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/clam314/lame/DataEncodeThread;->mp3Buffer:[B

    return-void
.end method

.method static synthetic access$000(Lcom/clam314/lame/DataEncodeThread;)I
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/clam314/lame/DataEncodeThread;->processData()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/clam314/lame/DataEncodeThread;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/clam314/lame/DataEncodeThread;->flushAndRelease()V

    return-void
.end method

.method private flushAndRelease()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->mp3Buffer:[B

    invoke-static {v0}, Lio/dcloud/feature/audio/mp3/SimpleLame;->flush([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/clam314/lame/DataEncodeThread;->os:Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/clam314/lame/DataEncodeThread;->mp3Buffer:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_0
    :goto_0
    invoke-static {}, Lio/dcloud/feature/audio/mp3/SimpleLame;->close()V

    return-void
.end method

.method private processData()I
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->mChangeBuffers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->mChangeBuffers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;

    .line 109
    invoke-virtual {v0}, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->getData()[S

    move-result-object v2

    .line 110
    invoke-virtual {v0}, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;->getReadSize()I

    move-result v0

    .line 111
    sget-object v3, Lcom/clam314/lame/DataEncodeThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    .line 113
    iget-object v3, p0, Lcom/clam314/lame/DataEncodeThread;->mp3Buffer:[B

    invoke-static {v2, v2, v0, v3}, Lio/dcloud/feature/audio/mp3/SimpleLame;->encode([S[SI[B)I

    move-result v2

    if-gez v2, :cond_0

    .line 115
    sget-object v0, Lcom/clam314/lame/DataEncodeThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Lame encoded size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 119
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/clam314/lame/DataEncodeThread;->os:Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/clam314/lame/DataEncodeThread;->mp3Buffer:[B

    invoke-virtual {v3, v4, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 122
    sget-object v1, Lcom/clam314/lame/DataEncodeThread;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write to file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public addChangeBuffer([SI)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->mChangeBuffers:Ljava/util/List;

    new-instance v1, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;

    invoke-direct {v1, p0, p1, p2}, Lcom/clam314/lame/DataEncodeThread$ChangeBuffer;-><init>(Lcom/clam314/lame/DataEncodeThread;[SI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 88
    sget-object v0, Lcom/clam314/lame/DataEncodeThread;->TAG:Ljava/lang/String;

    const-string v1, "Error when waiting handle to init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->handler:Lcom/clam314/lame/DataEncodeThread$StopHandler;

    return-object v0
.end method

.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/clam314/lame/DataEncodeThread;->processData()I

    return-void
.end method

.method public run()V
    .locals 1

    .line 76
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 77
    new-instance v0, Lcom/clam314/lame/DataEncodeThread$StopHandler;

    invoke-direct {v0, p0}, Lcom/clam314/lame/DataEncodeThread$StopHandler;-><init>(Lcom/clam314/lame/DataEncodeThread;)V

    iput-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->handler:Lcom/clam314/lame/DataEncodeThread$StopHandler;

    .line 78
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 79
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
