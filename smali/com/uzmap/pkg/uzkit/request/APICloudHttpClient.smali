.class public final Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;,
        Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;,
        Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;,
        Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;
    }
.end annotation


# static fields
.field private static g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;


# instance fields
.field private a:Lcom/deepe/c/j/n;

.field private b:Lcom/deepe/c/j/d/d;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/deepe/c/c/p;

.field private final f:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->f:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->requestQueueInitialize()Lcom/deepe/c/j/n;

    invoke-static {p1}, Lcom/deepe/c/k/f;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/deepe/c/c/p;->a(Landroid/content/Context;)Lcom/deepe/c/c/p;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->e:Lcom/deepe/c/c/p;

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->removeAccurate(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;-><init>(Ljava/lang/String;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private checkLoaderQueue()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->b:Lcom/deepe/c/j/d/d;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    new-instance v2, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;-><init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;)V

    invoke-static {v0, v1, v2}, Lcom/deepe/c/j/d/k;->b(Landroid/content/Context;Ljava/lang/String;Lcom/deepe/c/j/d/g$a;)Lcom/deepe/c/j/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->b:Lcom/deepe/c/j/d/d;

    :cond_0
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;
    .locals 2

    const-class v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->createInstance(Landroid/content/Context;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->g:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    return-object v0
.end method

.method private postAccurate(Lcom/uzmap/pkg/uzkit/request/Request;J)V
    .locals 2

    const-wide/16 v0, 0x1388

    add-long/2addr p2, v0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAccurate(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestQueueInitialize()Lcom/deepe/c/j/n;
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    new-instance v2, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;-><init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$InUrlRewriter;)V

    invoke-static {v0, v1, v2}, Lcom/deepe/c/j/d/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/deepe/c/j/d/g$a;)Lcom/deepe/c/j/n;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$3;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$3;-><init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)V

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/n;->a(Lcom/deepe/c/j/n$b;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    return-object v0
.end method


# virtual methods
.method public final cancel(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->cancelRequests(Ljava/lang/Object;)V

    return-void
.end method

.method public cancelDownload(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->b:Lcom/deepe/c/j/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/d/d;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public cancelRequests(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/n;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public disPlayImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->displayImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Landroid/widget/ImageView;)V

    return-void
.end method

.method public displayImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->checkLoaderQueue()V

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object v0

    iget v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->maxWidth:I

    iput v1, v0, Lcom/deepe/c/c/s;->b:I

    iget v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->maxWidth:I

    iput v1, v0, Lcom/deepe/c/c/s;->c:I

    iget-object v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->scaleType:Landroid/widget/ImageView$ScaleType;

    iput-object v1, v0, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    iget v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->errorImageResId:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->e:Lcom/deepe/c/c/p;

    new-instance v2, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$2;-><init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Landroid/widget/ImageView;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;)V

    invoke-virtual {v1, v0, v2}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V

    return-void
.end method

.method public doDownload(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)Lcom/uzmap/pkg/uzkit/request/HttpResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->checkLoaderQueue()V

    invoke-static {}, Lcom/deepe/c/j/d/j;->a()Lcom/deepe/c/j/d/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setErrorListener(Lcom/deepe/c/j/o$a;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setResponseListener(Lcom/deepe/c/j/o$b;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->b:Lcom/deepe/c/j/d/d;

    invoke-virtual {v1, p1}, Lcom/deepe/c/j/d/d;->a(Lcom/deepe/c/j/l;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/deepe/c/j/d/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/j/k;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;

    iget v2, v0, Lcom/deepe/c/j/k;->a:I

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzkit/request/HttpResult;-><init>(I)V

    iget-object v2, v0, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-object v2, v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->DefaultError:Lcom/uzmap/pkg/uzkit/request/HttpResult;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Network can not run in ui thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doRequest(Lcom/uzmap/pkg/uzkit/request/Request;)Lcom/uzmap/pkg/uzkit/request/HttpResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/deepe/c/j/d/j;->a()Lcom/deepe/c/j/d/j;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setErrorListener(Lcom/deepe/c/j/o$a;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setResponseListener(Lcom/deepe/c/j/o$b;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    invoke-virtual {v1, p1}, Lcom/deepe/c/j/n;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    :try_start_0
    invoke-virtual {v0}, Lcom/deepe/c/j/d/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/j/k;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;

    iget v2, v0, Lcom/deepe/c/j/k;->a:I

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzkit/request/HttpResult;-><init>(I)V

    iget-object v2, v0, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-object v2, v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/Request;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->DefaultError:Lcom/uzmap/pkg/uzkit/request/HttpResult;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Network can not run in ui thread"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public download(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->checkLoaderQueue()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->b:Lcom/deepe/c/j/d/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/d/d;->a(Lcom/deepe/c/j/l;)V

    return-void
.end method

.method public execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->doRequest(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method public getCacheRootDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/j/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getImage(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->checkLoaderQueue()V

    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object v0

    iget v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->maxWidth:I

    iput v1, v0, Lcom/deepe/c/c/s;->b:I

    iget v1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->maxWidth:I

    iput v1, v0, Lcom/deepe/c/c/s;->c:I

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageOption;->scaleType:Landroid/widget/ImageView$ScaleType;

    iput-object p1, v0, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->e:Lcom/deepe/c/c/p;

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->e:Lcom/deepe/c/c/p;

    new-instance v2, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;

    invoke-direct {v2, p0, p2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$1;-><init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$BitmapListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V

    return-object p1
.end method

.method public final hasDiskImageCache(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;
    .locals 4

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->checkLoaderQueue()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->e:Lcom/deepe/c/c/p;

    invoke-static {p1}, Lcom/deepe/c/c/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/k;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/k;)Lcom/deepe/c/c/g;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    iget-object v2, p1, Lcom/deepe/c/c/g;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepe/c/c/g;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    iget-object v2, p1, Lcom/deepe/c/c/g;->c:Ljava/lang/String;

    iput-object v2, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->localthumbnail:Ljava/lang/String;

    iput-object v0, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-wide v2, p1, Lcom/deepe/c/c/g;->d:J

    iput-wide v2, v1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->lastModified:J

    return-object v1

    :cond_0
    return-object v0
.end method

.method public request(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-static {p1, p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    iget p1, p1, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->download(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "argument and listener can not be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public request(Lcom/uzmap/pkg/uzkit/request/Request;)V
    .locals 1

    const-string v0, "engine"

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)V

    return-void
.end method

.method public request(Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "engine"

    :cond_0
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzkit/request/Request;->setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;

    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/Request;->getTimeoutMs()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->postAccurate(Lcom/uzmap/pkg/uzkit/request/Request;J)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->a:Lcom/deepe/c/j/n;

    invoke-virtual {p2, p1}, Lcom/deepe/c/j/n;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    return-void
.end method
