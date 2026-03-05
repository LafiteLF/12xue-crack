.class Lcom/uzmap/pkg/uzkit/fineHttp/d$c;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/fineHttp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field a:Lorg/json/JSONObject;

.field final b:Lcom/uzmap/pkg/uzkit/request/Request;

.field final c:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

.field d:Z

.field final synthetic e:Lcom/uzmap/pkg/uzkit/fineHttp/d;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->e:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->c:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    instance-of p1, p3, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->d:Z

    if-eqz p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 5

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->e:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->des:Ljava/lang/String;

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v3, "progress"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v3, "status"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v3, "state"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v3, "body"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v3, "msg"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v2, "statusCode"

    iget p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->c:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast p1, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    invoke-interface {p1, v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;->onProgress(ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/request/Request;->needReport()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->e:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->c:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    invoke-static {v0, v1, p1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V

    return-void
.end method

.method public onProgress(JD)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/Request;->needReport()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->d:Z

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string v0, "progress"

    invoke-virtual {p2, v0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string p3, "status"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string p3, "state"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    const-string p3, "body"

    const-string p4, ""

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->c:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast p2, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iget-object p3, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;->a:Lorg/json/JSONObject;

    invoke-interface {p2, p1, p3}, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;->onProgress(ILorg/json/JSONObject;)V

    :cond_1
    :goto_1
    return-void
.end method
