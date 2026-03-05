.class public abstract Lcom/deepe/b/d/b;
.super Ljava/lang/Object;


# static fields
.field static final b:[Ljava/lang/String;


# instance fields
.field private a:Lcom/deepe/b/b/d;

.field private c:Lcom/deepe/b/a;

.field private d:I

.field private e:Lcom/deepe/b/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\u51c6\u5907\u4e2d"

    const-string v1, "\u4e0b\u8f7d\u66f4\u65b0"

    const-string v2, "\u5b89\u88c5\u66f4\u65b0"

    const-string v3, "\u66f4\u65b0\u5b8c\u6210"

    const-string v4, "\u66f4\u65b0\u53d1\u751f\u9519\u8bef"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/b/d/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    return-void
.end method

.method private a(D)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v5, "success"

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/deepe/b/d/b;->a(IIDLjava/lang/String;)V

    return-void
.end method

.method private a(ID)V
    .locals 6

    const/4 v1, 0x1

    const-string v5, "success"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepe/b/d/b;->a(IIDLjava/lang/String;)V

    return-void
.end method

.method private a(IIDLjava/lang/String;)V
    .locals 7

    iget v2, p0, Lcom/deepe/b/d/b;->d:I

    add-int/lit8 v3, p2, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/deepe/b/d/b;->a(IIIDLjava/lang/String;)V

    return-void
.end method

.method private a(ILcom/deepe/b/b/c;)V
    .locals 10

    iget v2, p2, Lcom/deepe/b/b/c;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne p1, v7, :cond_0

    move v9, v6

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-eqz v9, :cond_1

    const/16 v0, 0x64

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    int-to-double v3, v0

    invoke-virtual {p2}, Lcom/deepe/b/b/c;->a()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/deepe/b/d/b;->a(IIDLjava/lang/String;)V

    invoke-virtual {p0, v9, p2}, Lcom/deepe/b/d/b;->a(ZLcom/deepe/b/b/c;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "smartUpdate Finish.. success: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v8

    :goto_2
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/deepe/b/b/c;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "downloadPackage.. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/deepe/b/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v0

    iget-object v1, p1, Lcom/deepe/b/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    iget-object v1, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "temp/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setDefaultSavePath(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setWillReportProgress(Z)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/d/b$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/deepe/b/d/b$4;-><init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;Lcom/uzmap/pkg/uzkit/request/Request;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/d/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/b;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/b/d/b;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/b;ID)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/b/d/b;->b(ID)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/c;)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/deepe/b/d/b$2;

    invoke-direct {v1, p0}, Lcom/deepe/b/d/b$2;-><init>(Lcom/deepe/b/d/b;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deepe-doPatchInstall-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepe/b/d/b;->c()V

    :goto_0
    return-void
.end method

.method private b(ID)V
    .locals 6

    const/4 v1, 0x2

    const-string v5, "success"

    move-object v0, p0

    move v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/deepe/b/d/b;->a(IIDLjava/lang/String;)V

    return-void
.end method

.method private final b(Lcom/deepe/b/b/c;)V
    .locals 8

    invoke-direct {p0}, Lcom/deepe/b/d/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do not need report Increment ok!"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/deepe/b/d/b;->c(Lcom/deepe/b/b/c;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/b/d/b;->e:Lcom/deepe/b/e/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/deepe/b/e/b;->getIncNoReport()Lcom/deepe/b/e/b$b;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    iget-object v5, v3, Lcom/deepe/b/e/b$b;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v1, v3, Lcom/deepe/b/e/b$b;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_s"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v5}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setResultDataType(I)V

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    iget-object v1, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v6, "systemType"

    invoke-virtual {v5, v6, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "appVersion"

    invoke-virtual {v5, v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/deepe/b/b/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subVersion"

    invoke-virtual {v5, v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/deepe/b/b/c;->c:Z

    const-string v1, "1"

    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "2"

    :goto_2
    const-string v6, "fStatus"

    invoke-virtual {v5, v6, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "uStatus"

    invoke-virtual {v5, v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/b/d/b;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "versionCode"

    invoke-virtual {v5, v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reportTime"

    invoke-virtual {v5, v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_6

    iget-object v0, v3, Lcom/deepe/b/e/b$b;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, v3, Lcom/deepe/b/e/b$b;->b:Ljava/util/Map;

    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/util/Map;)V

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, v3, Lcom/deepe/b/e/b$b;->c:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, v3, Lcom/deepe/b/e/b$b;->c:Ljava/util/Map;

    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/util/Map;)V

    :cond_7
    iget-object v0, p0, Lcom/deepe/b/d/b;->e:Lcom/deepe/b/e/b;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lcom/deepe/b/e/b;->getEncrypt()Lcom/deepe/b/e/b$a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/deepe/b/e/b$a;->a:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v1, v4

    :goto_3
    if-eqz v0, :cond_9

    iget-object v4, v0, Lcom/deepe/b/e/b$a;->b:Ljava/lang/String;

    :cond_9
    invoke-virtual {v5, v1, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_b
    :goto_4
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/d/b$5;

    invoke-direct {v1, p0, p1}, Lcom/deepe/b/d/b$5;-><init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/d/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/d/b;->c()V

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/d/b;ID)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/b/d/b;->a(ID)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/b;->d(Lcom/deepe/b/b/c;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/b/d/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/b/d/b;->f()Lcom/deepe/b/b/c;

    move-result-object v0

    invoke-direct {p0}, Lcom/deepe/b/d/b;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/c;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, v0, Lcom/deepe/b/b/c;->c:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/deepe/b/d/b$3;

    invoke-direct {v1, p0, v0}, Lcom/deepe/b/d/b$3;-><init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    invoke-virtual {p0, v1}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/d/c;)V

    :goto_1
    return-void
.end method

.method private c(Lcom/deepe/b/b/c;)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/b/d/b;->c()V

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/deepe/b/d/b;->a(ILcom/deepe/b/b/c;)V

    return-void
.end method

.method static synthetic c(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/b;->b(Lcom/deepe/b/b/c;)V

    return-void
.end method

.method private declared-synchronized d(Lcom/deepe/b/b/c;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/deepe/b/d/b;->a(ILcom/deepe/b/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/b;->c(Lcom/deepe/b/b/c;)V

    return-void
.end method

.method private declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->c()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->f()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized f()Lcom/deepe/b/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->a()Lcom/deepe/b/b/c;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepe/b/d/b;->a(Ljava/util/List;)V

    const-string v0, "smartUpdate Start.."

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/b/d/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/b/d/b;->g()V

    new-instance v0, Lcom/deepe/b/d/b$1;

    invoke-direct {v0, p0}, Lcom/deepe/b/d/b$1;-><init>(Lcom/deepe/b/d/b;)V

    invoke-static {v0}, Lcom/deepe/b/f/a;->a(Lcom/deepe/b/f/c;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/b/d/b;->b()V

    return-void
.end method

.method public abstract a(IIIDLjava/lang/String;)V
.end method

.method public final a(Lcom/deepe/b/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b;->a:Lcom/deepe/b/b/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/deepe/b/b/d;->d()I

    move-result p1

    iput p1, p0, Lcom/deepe/b/d/b;->d:I

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/deepe/b/d/c;)V
.end method

.method public final a(Lcom/deepe/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b;->e:Lcom/deepe/b/e/b;

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a(ZLcom/deepe/b/b/c;)V
.end method

.method public final a(Lcom/deepe/b/f/c;)Z
    .locals 0

    invoke-static {p1}, Lcom/deepe/b/f/a;->b(Lcom/deepe/b/f/c;)Z

    move-result p1

    return p1
.end method
