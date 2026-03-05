.class Lcom/uzmap/pkg/uzkit/fineHttp/d$a;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/fineHttp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

.field final b:Lorg/json/JSONObject;

.field final c:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

.field d:Z

.field final synthetic e:Lcom/uzmap/pkg/uzkit/fineHttp/d;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/HttpDownload;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->e:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->a:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    iput-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->c:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    instance-of p1, p3, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->d:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzkit/request/HttpResult;Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->e:Lcom/uzmap/pkg/uzkit/fineHttp/d;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->c:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->des:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v3, "state"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "progress"

    const-string v4, "percent"

    const-string v5, "fileSize"

    if-nez v2, :cond_2

    :try_start_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {p2, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    invoke-virtual {p2, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v2, "msg"

    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v0, "statusCode"

    iget p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    iget-wide v6, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->fileSize:J

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const/16 v2, 0x64

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v2, "savePath"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v0, "contentType"

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->contentType:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->a:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast p1, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    invoke-interface {p1, v1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;->onProgress(ILorg/json/JSONObject;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->c:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->a(Lcom/uzmap/pkg/uzkit/request/HttpResult;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JD)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->c:Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->needReport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->d:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string v2, "fileSize"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string p2, "percent"

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string p2, "progress"

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    const-string p2, "state"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->a:Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;

    check-cast p1, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;->b:Lorg/json/JSONObject;

    invoke-interface {p1, v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/ProgressListener;->onProgress(ILorg/json/JSONObject;)V

    :cond_1
    :goto_1
    return-void
.end method
