.class public abstract Lcom/uzmap/pkg/uzkit/request/RequestCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/e/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventSourceClose()V
    .locals 0

    return-void
.end method

.method public onEventSourceCreate()V
    .locals 0

    return-void
.end method

.method public onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V
    .locals 0

    return-void
.end method

.method public onEventSourceError(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onEventSourceOpen()V
    .locals 0

    return-void
.end method

.method public abstract onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
.end method

.method public onProgress(JD)V
    .locals 0

    return-void
.end method

.method public final onProgressChanged(JD)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onProgress(JD)V

    return-void
.end method

.method public final onReceiveEventClose()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onEventSourceClose()V

    return-void
.end method

.method public final onReceiveEventCreate()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onEventSourceCreate()V

    return-void
.end method

.method public final onReceiveEventData(Lcom/deepe/c/j/e/c;)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/request/ChunkData;->obtain(Lcom/deepe/c/j/e/c;)Lcom/uzmap/pkg/uzkit/request/ChunkData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V

    return-void
.end method

.method public final onReceiveEventError(IILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onEventSourceError(IILjava/lang/String;)V

    return-void
.end method

.method public final onReceiveEventOpen()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onEventSourceOpen()V

    return-void
.end method

.method public final onRequestFinish(Lcom/deepe/c/j/e/k;)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->obtain(Lcom/deepe/c/j/e/k;)Lcom/uzmap/pkg/uzkit/request/HttpResult;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;->onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V

    return-void
.end method
