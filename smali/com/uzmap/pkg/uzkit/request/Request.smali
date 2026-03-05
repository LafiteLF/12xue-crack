.class public Lcom/uzmap/pkg/uzkit/request/Request;
.super Lcom/deepe/c/j/e/f;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static c:Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/Request$1;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzkit/request/Request$1;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/Request;->c:Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/j/e/f;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->addCallback(Lcom/deepe/c/j/e/j;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/deepe/c/j/e/f;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->addHeader(Ljava/util/Map;)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->hasConnectioned()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->isConnectioned()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request accurate timeout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getTimeoutMs()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "acw"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/Request;->makeTimeoutError()Lcom/deepe/c/j/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->deliverError(Lcom/deepe/c/j/r;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->cancel()V

    const-string v0, "abort"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->finish(Ljava/lang/String;)V

    sget-object v0, Lcom/uzmap/pkg/uzkit/request/Request;->c:Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setCallback(Lcom/deepe/c/j/e/j;)V

    return-void
.end method

.method public setCertificate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/deepe/c/j/e/f;->setCertificate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setCharset(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNeedEncode(Z)Lcom/deepe/c/j/l;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setNeedEncode(Z)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public setNeedEncode(Z)Lcom/uzmap/pkg/uzkit/request/Request;
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setNeedEncode(Z)Lcom/deepe/c/j/l;

    return-object p0
.end method

.method public setNeedReport(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setNeedReport(Z)V

    return-void
.end method

.method public setSafeMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setSafeMode(I)V

    return-void
.end method

.method public bridge synthetic setShouldCache(Z)Lcom/deepe/c/j/l;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setShouldCache(Z)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public setShouldCache(Z)Lcom/uzmap/pkg/uzkit/request/Request;
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setShouldCache(Z)Lcom/deepe/c/j/l;

    return-object p0
.end method

.method public bridge synthetic setTag(Ljava/lang/Object;)Lcom/deepe/c/j/l;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p1

    return-object p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setTag(Ljava/lang/Object;)Lcom/deepe/c/j/l;

    return-object p0
.end method

.method public setTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/f;->setTimeout(I)V

    return-void
.end method
