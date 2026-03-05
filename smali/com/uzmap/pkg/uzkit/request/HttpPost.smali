.class public Lcom/uzmap/pkg/uzkit/request/HttpPost;
.super Lcom/uzmap/pkg/uzkit/request/Request;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/request/HttpPost$OutputStreamWrap;
    }
.end annotation


# instance fields
.field private b:Lcom/deepe/c/j/e/a/a;

.field private d:Lcom/uzmap/pkg/uzkit/request/Params;

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method protected constructor <init>(ILjava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/Request;-><init>(ILjava/lang/String;)V

    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->d:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {p3}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->addHeader(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Params can not be empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/HttpPost;-><init>(ILjava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzkit/request/HttpPost;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->reportFinishLength(J)V

    return-void
.end method

.method private checkEntity()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->d:Lcom/uzmap/pkg/uzkit/request/Params;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->getHttpEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    :cond_0
    return-void
.end method

.method private reportFinishLength(J)V
    .locals 4

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->f:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->g:J

    sub-long v0, p1, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->getMinGapTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->f:J

    iget-wide v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iput-wide p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->g:J

    iget-wide p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->e:J

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->f:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->deliverProgress(JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkBodySafe()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->d:Lcom/uzmap/pkg/uzkit/request/Params;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/Params;->contentSafe()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getBody()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

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

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

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

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->d:Lcom/uzmap/pkg/uzkit/request/Params;

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

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setParams(Lcom/uzmap/pkg/uzkit/request/Params;)V
    .locals 1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->d:Lcom/uzmap/pkg/uzkit/request/Params;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzkit/request/Params;->getAdditionalHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->addHeader(Ljava/util/Map;)V

    :cond_0
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

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpPost;->checkEntity()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->e:J

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpPost$OutputStreamWrap;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpPost$OutputStreamWrap;-><init>(Lcom/uzmap/pkg/uzkit/request/HttpPost;Ljava/io/OutputStream;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpPost;->b:Lcom/deepe/c/j/e/a/a;

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/e/a/a;->a(Ljava/io/OutputStream;)V

    :cond_0
    return-void
.end method
