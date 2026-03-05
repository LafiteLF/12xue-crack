.class public Lcom/uzmap/pkg/uzkit/request/HttpDownload;
.super Lcom/uzmap/pkg/uzkit/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;
    }
.end annotation


# instance fields
.field b:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:Ljava/io/OutputStream;

.field private m:Z

.field private n:Lcom/uzmap/pkg/uzkit/request/Params;

.field private o:Lcom/deepe/c/j/e/a/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;-><init>(ILjava/lang/String;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->n:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {p2}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->addHeader(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzkit/request/HttpDownload;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->reportFinishLength(J)V

    return-void
.end method

.method private checkEntity()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->n:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->getHttpEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    :cond_0
    return-void
.end method

.method private finished(JLjava/io/File;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    iput-wide p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    iput-object p4, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private makeBufferLength(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/16 p1, 0xc00

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/16 p1, 0x1400

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x7d000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    const/16 p1, 0x2000

    goto :goto_0

    :cond_2
    const/16 p1, 0x800

    :goto_0
    return p1
.end method

.method private makeTmpFileName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/j/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepare(Lcom/deepe/c/j/e/a/a;Lcom/deepe/c/j/e/g;)Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/deepe/c/j/e/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/deepe/c/j/e/g;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/deepe/c/j/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepe/c/j/g;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, ".tmp"

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setSavePath(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->shouldCache()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setHasCached()V

    return-object p2

    :cond_1
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    iget-boolean p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->j:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private reportFinishLength(J)V
    .locals 0

    return-void
.end method

.method private setHasCached()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->k:Z

    return-void
.end method

.method private streamWrite(Lcom/deepe/c/j/e/a/a;J)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->hasCached()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v3

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v3, v5

    if-gtz v5, :cond_9

    cmp-long v5, v3, v1

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :goto_0
    add-long/2addr v1, p2

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "gzip"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    const/16 v4, 0x1000

    invoke-direct {v3, v0, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v3

    :cond_2
    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->m:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->l:Ljava/io/OutputStream;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    iget-boolean v5, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->j:Z

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_1
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->makeBufferLength(J)I

    move-result v5

    new-array v5, v5, [B

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->isCanceled()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    :goto_3
    iget-boolean p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->m:Z

    if-nez p2, :cond_6

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->ensuresSync(Ljava/io/OutputStream;)Z

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->finished(JLjava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-wide v1

    :cond_7
    int-to-long v7, v6

    add-long/2addr p2, v7

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->i:J

    sub-long v8, v6, v8

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getMinGapTime()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_8

    cmp-long v8, p2, v1

    if-nez v8, :cond_4

    :cond_8
    iput-wide v6, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->i:J

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->deliverProgress(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw p2

    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string p2, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "HTTP entity is empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkBodySafe()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->n:Lcom/uzmap/pkg/uzkit/request/Params;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->contentSafe()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected deliverResponse(Lcom/deepe/c/j/k;)V
    .locals 3

    const-string v0, "deliverResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/j/e/k;

    iget v1, p1, Lcom/deepe/c/j/k;->a:I

    invoke-direct {v0, v1}, Lcom/deepe/c/j/e/k;-><init>(I)V

    iget-object v1, p1, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->e:Ljava/lang/String;

    iget-wide v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    iput-wide v1, v0, Lcom/deepe/c/j/e/k;->d:J

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->performFinish(Lcom/deepe/c/j/e/k;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->performNetworkResponse(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->g()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    return-wide v0
.end method

.method public getPriority()Lcom/deepe/c/j/l$a;
    .locals 1

    sget-object v0, Lcom/deepe/c/j/l$a;->a:Lcom/deepe/c/j/l$a;

    return-object v0
.end method

.method public getSavePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public handleResponse(Lcom/deepe/c/j/e/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/g;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->c()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->b()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->prepare(Lcom/deepe/c/j/e/a/a;Lcom/deepe/c/j/e/g;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->hasCached()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->b()V

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->finished(JLjava/io/File;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    invoke-direct {p0, v0, v2, v3}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->streamWrite(Lcom/deepe/c/j/e/a/a;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "local file IO error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public hasCached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->k:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreated()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->shouldCache()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setHasCached()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setSavePath(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".tmp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->makeTmpFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->j:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/j/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/deepe/c/j/a/b;

    invoke-direct {p1}, Lcom/deepe/c/j/a/b;-><init>()V

    invoke-static {p1}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1
.end method

.method public setAllowResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->j:Z

    return-void
.end method

.method public setDefaultSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->e:Ljava/lang/String;

    return-void
.end method

.method public final setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->l:Ljava/io/OutputStream;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->m:Z

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->d:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->b:J

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload$OutputStreamWrap;-><init>(Lcom/uzmap/pkg/uzkit/request/HttpDownload;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->o:Lcom/deepe/c/j/e/a/a;

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/e/a/a;->a(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
