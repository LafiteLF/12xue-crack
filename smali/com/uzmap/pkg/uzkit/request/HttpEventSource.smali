.class public Lcom/uzmap/pkg/uzkit/request/HttpEventSource;
.super Lcom/uzmap/pkg/uzkit/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;
    }
.end annotation


# instance fields
.field private b:Lcom/uzmap/pkg/uzkit/request/Params;

.field private d:Lcom/deepe/c/j/e/a/a;


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

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->b:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {p2}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->addHeader(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private checkEntity()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->b:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->getHttpEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    :cond_0
    return-void
.end method

.method private handleEventStream(Lcom/deepe/c/j/e/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->b()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->a()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "gzip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v1, v0

    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->readEvent(Ljava/io/Reader;)Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->takeEnd()Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_4

    :goto_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_4
    :try_start_1
    invoke-virtual {v2}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->valid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventData(Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->c()I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performIOException(ILjava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "HTTP entity is empty"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performEventData(Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/j/e/c;

    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->getData()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->c:Ljava/lang/String;

    iget p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->b:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/deepe/c/j/e/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventChunked(Lcom/deepe/c/j/e/c;)V

    return-void
.end method

.method private performIOException(ILjava/io/IOException;)V
    .locals 2

    instance-of v0, p2, Ljava/io/EOFException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventClose()V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/net/SocketException;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string p2, "closed"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventClose()V

    goto :goto_0

    :cond_1
    const-string p2, "abort"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "reset"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventError(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventError(IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventClose()V

    return-void
.end method

.method private readEvent(Ljava/io/Reader;)Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    const/16 v4, 0xa

    if-eq v3, v4, :cond_2

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    goto/16 :goto_5

    :cond_2
    :goto_1
    if-eqz v2, :cond_a

    move v5, v1

    :goto_2
    if-eqz v5, :cond_3

    sget-object p1, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->e:Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;

    return-object p1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length p1, v2

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    new-instance v4, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;

    invoke-direct {v4}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;-><init>()V

    :goto_3
    array-length p1, v2

    if-lt v1, p1, :cond_5

    return-object v4

    :cond_5
    aget-object p1, v2, v1

    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->appendData(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v0, "event:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->a:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string v0, "retry:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->c(Ljava/lang/String;)I

    move-result p1

    iput p1, v4, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->b:I

    goto :goto_4

    :cond_8
    const-string v0, "id:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/uzmap/pkg/uzkit/request/HttpEventSource$SourceEvent;->c:Ljava/lang/String;

    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    move v2, v5

    :goto_5
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method


# virtual methods
.method public checkBodySafe()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->b:Lcom/uzmap/pkg/uzkit/request/Params;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->contentSafe()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected deliverResponse(Lcom/deepe/c/j/k;)V
    .locals 2

    const-string v0, "deliverResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/j/e/k;

    iget v1, p1, Lcom/deepe/c/j/k;->a:I

    invoke-direct {v0, v1}, Lcom/deepe/c/j/e/k;-><init>(I)V

    iget-object v1, p1, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performFinish(Lcom/deepe/c/j/e/k;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performNetworkResponse(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->g()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getPostData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->b:Lcom/uzmap/pkg/uzkit/request/Params;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->serialize()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getPostData()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPriority()Lcom/deepe/c/j/l$a;
    .locals 1

    sget-object v0, Lcom/deepe/c/j/l$a;->c:Lcom/deepe/c/j/l$a;

    return-object v0
.end method

.method public handleResponse(Lcom/deepe/c/j/e/g;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/g;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "text/event-stream"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->handleEventStream(Lcom/deepe/c/j/e/g;)V

    return v2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type error. expected content-type to be \'text/event-stream\', actual: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventError(IILjava/lang/String;)V

    return v2
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreated()V
    .locals 2

    const-string v0, "Accept"

    const-string v1, "text/event-stream"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->removeHeader(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->setReadTimeout(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventCreate()V

    return-void
.end method

.method public onOpened()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->performEventOpen()V

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

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->isCanceled()Z

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

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;->d:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/e/a/a;->a(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
