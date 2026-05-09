.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/a;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

# interfaces
.implements Lcom/uzmap/pkg/uzkit/request/HttpObserver;


# instance fields
.field private a:J

.field private b:Lcom/deepe/c/i/i;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a:J

    return-void
.end method

.method private a(JJLcom/uzmap/pkg/uzkit/fineHttp/Response;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/uzmap/pkg/uzkit/fineHttp/Response;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sub-long v0, p3, p1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const-string v3, "url"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "method"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "status"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    const-string v4, "error"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, p5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errorCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "errorCode"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->getRequestHeader()Ljava/util/Map;

    move-result-object v3

    const-string v4, "requestHeader"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    const-string v3, "responseHeader"

    invoke-interface {v2, v3, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "startTime"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "endTime"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "costTime"

    invoke-interface {v2, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private final a(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V
    .locals 11

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->d()Lcom/deepe/d/e;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a:J

    sub-long v4, v2, v4

    new-instance v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;

    invoke-direct {v6}, Lcom/deepe/sdk/PerformanceContext$HttpTiming;-><init>()V

    iput-object v1, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->name:Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "method"

    invoke-virtual {p0, v8, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_2
    const-string v8, "GET"

    :goto_0
    iput-object v8, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->method:Ljava/lang/String;

    iget v8, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    iput v8, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->responseStatus:I

    iget-object v8, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errRaw:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errRaw:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v8, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    :goto_1
    iput-object v8, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->errorData:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->getRequestHeader()Ljava/util/Map;

    move-result-object v8

    if-eqz v8, :cond_4

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_4
    iput-object v7, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->requestHeader:Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    iput-object v7, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->responseHeader:Lorg/json/JSONObject;

    iget-object v7, p1, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    iput-object v7, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->responseData:Ljava/lang/String;

    const-string v7, "data"

    invoke-virtual {p0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_5

    iput-object v7, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->requestData:Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->getPendingDuration()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a:J

    iput-wide v9, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->startTime:J

    iput-wide v2, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->endTime:J

    iput-wide v4, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->duration:J

    iput-wide v7, v6, Lcom/deepe/sdk/PerformanceContext$HttpTiming;->pending:J

    invoke-virtual {v0, v1, v6}, Lcom/deepe/d/e;->a(Ljava/lang/String;Lcom/deepe/sdk/PerformanceContext$HttpTiming;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private a()Z
    .locals 2

    const-string v0, "dataType"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v1, "json"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    const-string v0, "returnAll"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()Z
    .locals 2

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "head"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private final d()Lcom/deepe/d/e;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->l()Lcom/deepe/d/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private final e()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->m()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "unknown.html"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public onEventSourceClose()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->d:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    const-string v2, "event"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onEventSourceCreate()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->c:Z

    return-void
.end method

.method public onEventSourceData(Lcom/uzmap/pkg/uzkit/request/ChunkData;)V
    .locals 3

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->data:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "app3c"

    const-string v0, "SSE Chunked name and data was null."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->name:Ljava/lang/String;

    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->id:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget v0, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->retry:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    iget p1, p1, Lcom/uzmap/pkg/uzkit/request/ChunkData;->retry:I

    const-string v1, "retry"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onEventSourceError(IILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->d:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    const-string v2, "event"

    const-string v3, "error"

    invoke-virtual {v1, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "statusCode"

    invoke-virtual {v1, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "code"

    invoke-virtual {v1, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string p1, "msg"

    invoke-virtual {v1, p1, p3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "data"

    invoke-virtual {p1, p3, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onEventSourceOpen()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    const-string v1, "event"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b:Lcom/deepe/c/i/i;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onProgress(ILorg/json/JSONObject;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onResult(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V

    iget-boolean v0, v6, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->c:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v6, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->success()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->onEventSourceClose()V

    goto :goto_0

    :cond_1
    iget v0, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    iget v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errorCode:I

    iget-object v2, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->onEventSourceError(IILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->success()Z

    move-result v0

    const-string v9, "code"

    const-string v10, "msg"

    const-string v11, "headers"

    const-string v12, "statusCode"

    const-string v13, "body"

    const/4 v14, 0x1

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->f()Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x5

    iget-wide v1, v6, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a:J

    move-object/from16 v0, p0

    move v8, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a(JJLcom/uzmap/pkg/uzkit/fineHttp/Response;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "ajax"

    invoke-static {v15, v1, v8, v0}, Lcom/deepe/d/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    iget-object v0, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v2, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    invoke-virtual {v1, v10, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v1, v12, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget v0, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errorCode:I

    invoke-virtual {v1, v9, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-object v0, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v1, v11, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/deepe/c/i/i;

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/deepe/c/i/i;-><init>(Lorg/json/JSONObject;)V

    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v13, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v12, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->a()Z

    move-result v0

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v2, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/j;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/j;->c(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :cond_6
    if-nez v1, :cond_7

    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    move v2, v14

    :goto_1
    if-nez v2, :cond_8

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v10, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-virtual {v0, v13, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v12, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v9, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6, v1, v0, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v0, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_9
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {v0, v13, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, v11, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v7, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v12, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v6, v0, v14}, Lcom/uzmap/pkg/uzcore/uzmodule/b/a;->success(Lorg/json/JSONObject;Z)V

    :goto_2
    return-void
.end method
