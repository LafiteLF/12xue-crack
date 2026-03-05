.class Lcom/deepe/a/d/f$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/a/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/a/d/f;

.field private b:Landroid/media/AudioRecord;

.field private c:I


# direct methods
.method constructor <init>(Lcom/deepe/a/d/f;)V
    .locals 6

    iput-object p1, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Deepe-PCMRecord-"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x3e80

    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p1

    iput p1, p0, Lcom/deepe/a/d/f$a;->c:I

    new-instance p1, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/deepe/a/d/f$a;->c:I

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    const/16 v3, 0x10

    const/4 v4, 0x2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    const-wide/16 v1, 0x24

    add-long v6, v4, v1

    iget-object v1, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v10

    const v1, 0x3e800

    mul-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x8

    int-to-long v11, v1

    iget-object v1, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    invoke-virtual {v1}, Lcom/deepe/a/d/f;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pcm"

    const-string v8, "wav"

    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    const-wide/16 v8, 0x3e80

    move-object v3, v1

    invoke-static/range {v2 .. v12}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;Ljava/io/FileOutputStream;JJJIJ)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    invoke-static {p1, v13}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;Ljava/io/File;)V

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    invoke-virtual {v5}, Lcom/deepe/a/d/f;->a()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    iget v2, p0, Lcom/deepe/a/d/f$a;->c:I

    new-array v5, v2, [B

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    invoke-static {v6}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;)I

    move-result v6

    if-eq v6, v1, :cond_1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    iget-object v2, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    invoke-direct {p0, v3}, Lcom/deepe/a/d/f$a;->a(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/deepe/a/d/f$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    const-string v0, ""

    goto :goto_2

    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/deepe/a/d/f$a;->b:Landroid/media/AudioRecord;

    invoke-virtual {v6, v5, v0, v2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v4

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v2}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    :goto_2
    iget-object v2, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;I)V

    iget-object v2, p0, Lcom/deepe/a/d/f$a;->a:Lcom/deepe/a/d/f;

    invoke-static {v2, v1, v0}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/f;ZLjava/lang/String;)V

    return-void

    :goto_3
    invoke-static {v2}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    throw v0
.end method
