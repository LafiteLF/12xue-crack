.class public Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$DownloadCallback;,
        Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;,
        Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;,
        Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$SubmitCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->finishRequest(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method static final doRequest(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    invoke-static {p1, p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    iget v1, p1, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownloadRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->makeDownloadCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->makeNormalCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->makeSubmitCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownloadRequest()Z

    move-result p1

    if-eqz p1, :cond_3

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->download(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument and listener can not be empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static finishRequest(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc8

    :cond_1
    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_2

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->transError(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object v1

    iget v2, v1, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->type:I

    iget-object v3, v1, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->des:Ljava/lang/String;

    iget-object v1, v1, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->rawDes:Ljava/lang/String;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    goto :goto_0

    :cond_2
    move-object v3, v2

    move v2, v0

    :goto_0
    new-instance v5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    invoke-direct {v5, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;-><init>(I)V

    iput-object v1, v5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    iput v0, v5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v5, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->setError(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    invoke-virtual {v5, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->setRawError(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    new-instance v0, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, v5, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v5, p0}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->setRequest(Lcom/uzmap/pkg/uzkit/request/Request;)Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    invoke-interface {p2, v5}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;->onResult(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V

    return-void
.end method

.method private static makeDownloadCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$DownloadCallback;

    move-object v1, p0

    check-cast v1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$DownloadCallback;-><init>(Lcom/uzmap/pkg/uzkit/request/HttpDownload;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method

.method private static makeNormalCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$NormalCallback;-><init>(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method

.method private static makeSubmitCallback(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$SubmitCallback;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$SubmitCallback;-><init>(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method

.method static final serialize(Lcom/uzmap/pkg/uzkit/request/HttpParams;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzkit/request/HttpParams;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v2, "values"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/e/h;

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    const-string v2, "body"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v2, "files"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/e/h;

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->fileStream:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->fileStream:Ljava/lang/String;

    const-string v1, "fileStream"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method public static transError(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;
    .locals 3

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getErrorType()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u6355\u83b7\u7684\u9519\u8bef:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x4

    const-string v0, "CA\u8bc1\u4e66\u4e0d\u53d7\u4fe1\u4efb\u6216\u4e0d\u5b89\u5168\u7684\u6570\u636e"

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u5ba2\u6237\u7aef\u4e3b\u52a8\u53d6\u6d88"

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->needErrorInfo()Z

    move-result p0

    if-nez p0, :cond_7

    const-string v0, "\u6743\u9650\u9519\u8bef"

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u670d\u52a1\u5668\u9519\u8bef"

    goto :goto_0

    :pswitch_5
    const/4 v2, 0x3

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "\u8fde\u63a5\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u8bf7\u6c42\u914d\u7f6e\u662f\u5426\u6b63\u786e"

    goto :goto_0

    :pswitch_7
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const-string v0, "\u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e"

    goto :goto_0

    :pswitch_8
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const-string v0, "\u672a\u77e5\u9519\u8bef"

    :cond_7
    :goto_0
    new-instance p0, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getErrorDes()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v0, p1}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
