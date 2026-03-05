.class Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalCallback"
.end annotation


# instance fields
.field final a:Lcom/uzmap/pkg/uzkit/request/Request;

.field final b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->a:Lcom/uzmap/pkg/uzkit/request/Request;

    return-void
.end method


# virtual methods
.method final activeObserver()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEventSourceClose()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->activeObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/HttpObserver;->onEventSourceClose()V

    :cond_0
    return-void
.end method

.method public onEventSourceCreate()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->activeObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/HttpObserver;->onEventSourceCreate()V

    :cond_0
    return-void
.end method

.method public onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->activeObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpObserver;->onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V

    :cond_0
    return-void
.end method

.method public onEventSourceError(IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->activeObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzkit/request/HttpObserver;->onEventSourceError(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventSourceOpen()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->activeObserver()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpObserver;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzkit/request/HttpObserver;->onEventSourceOpen()V

    :cond_0
    return-void
.end method

.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->a:Lcom/uzmap/pkg/uzkit/request/Request;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;->b:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    invoke-static {v0, p1, v1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->access$0(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method
