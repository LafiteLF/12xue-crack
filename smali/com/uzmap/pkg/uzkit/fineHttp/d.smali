.class Lcom/uzmap/pkg/uzkit/fineHttp/d;
.super Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/fineHttp/d$a;,
        Lcom/uzmap/pkg/uzkit/fineHttp/d$b;,
        Lcom/uzmap/pkg/uzkit/fineHttp/d$c;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/UZHttpClient;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->createInstance(Landroid/content/Context;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;
    .locals 0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->transError(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d$b;-><init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_1

    const/16 v0, 0xc8

    :cond_1
    iget-object v1, p2, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v2

    const-string v3, ""

    if-nez v2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;

    move-result-object v1

    iget v2, v1, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->type:I

    iget-object v1, v1, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils$ErrorInfo;->des:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    new-instance v4, Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    invoke-direct {v4, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;-><init>(I)V

    iput-object v1, v4, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    iput v0, v4, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->setError(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    new-instance v0, Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, v4, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v4, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->setRequest(Lcom/uzmap/pkg/uzkit/request/Request;)Lcom/uzmap/pkg/uzkit/fineHttp/Response;

    invoke-interface {p3, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;->onResult(Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V

    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d$c;-><init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method

.method private c(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;

    move-object v1, p1

    check-cast v1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v0, p0, v1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d$a;-><init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/request/HttpDownload;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->cancelRequests(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelDownload(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->cancelDownload(Ljava/lang/Object;)V

    return-void
.end method

.method public execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    iget v1, p1, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownloadRequest()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->c(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d;->b(Lcom/uzmap/pkg/uzkit/request/Request;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)Lcom/uzmap/pkg/uzkit/request/RequestCallback;

    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownloadRequest()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->download(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "argument and listener can not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public executeBitmap(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->builder(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;

    move-result-object p1

    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p3, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p1, v0, p3}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->setMaxSize(II)V

    new-instance p3, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;

    invoke-direct {p3, p0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/d$1;-><init>(Lcom/uzmap/pkg/uzkit/fineHttp/d;Lcom/uzmap/pkg/uzkit/fineHttp/BitmapListener;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/d;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-virtual {p2, p1, p3}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->getImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public sysExecuteBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
