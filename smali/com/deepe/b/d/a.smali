.class public final Lcom/deepe/b/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/deepe/b/d/e;

.field private b:Lcom/deepe/b/d/d;

.field private c:Lcom/deepe/b/a;

.field private d:Lcom/deepe/b/d/b;


# direct methods
.method public constructor <init>(Lcom/deepe/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    new-instance v0, Lcom/deepe/b/d/a$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/d/a$1;-><init>(Lcom/deepe/b/d/a;Lcom/deepe/b/a;)V

    iput-object v0, p0, Lcom/deepe/b/d/a;->d:Lcom/deepe/b/d/b;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/a;)Lcom/deepe/b/d/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d/a;->b:Lcom/deepe/b/d/d;

    return-object p0
.end method

.method private a(Lcom/deepe/b/b/b;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/b/b;->c(Ljava/lang/String;)Lcom/deepe/b/b/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/b;->a(Lcom/deepe/b/b/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p1, Lcom/deepe/b/b/b;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/deepe/b/b/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/b/b/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/deepe/b/b/b;->e:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v1, p1, Lcom/deepe/b/b/b;->d:Z

    iput-boolean v1, v0, Lcom/deepe/b/b/b;->d:Z

    iget-object v1, p1, Lcom/deepe/b/b/b;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/deepe/b/b/b;->b:Ljava/lang/Object;

    iget p1, p1, Lcom/deepe/b/b/b;->a:I

    iput p1, v0, Lcom/deepe/b/b/b;->a:I

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object p1

    iget-boolean v1, v0, Lcom/deepe/b/b/b;->d:Z

    invoke-virtual {v0}, Lcom/deepe/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/deepe/c/a;->a(ZLjava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    iget-boolean v0, p1, Lcom/deepe/b/b/b;->d:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/deepe/b/a;->b()Lcom/deepe/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/a;->j()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/deepe/b/b/b;->a(F)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v2, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/b/a;->b()Lcom/deepe/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepe/b/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "http://"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v3

    :cond_8
    :goto_2
    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/b/a;->b()Lcom/deepe/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/b/a;->c()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setDefaultSavePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v2, Lcom/deepe/b/d/a$4;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/deepe/b/d/a$4;-><init>(Lcom/deepe/b/d/a;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/deepe/b/b/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/deepe/b/b/a;->b(Ljava/lang/String;)Lcom/deepe/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/d/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/deepe/b/d/f;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report Server Error Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/f;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/deepe/b/a/a;->a(I)V

    iget-object p1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {p1}, Lcom/deepe/b/a;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/deepe/b/d/f;->d()Z

    move-result p1

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/d/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/d/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/deepe/b/b/a;->b(Ljava/lang/String;)Lcom/deepe/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/d/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget v0, v0, Lcom/deepe/b/d/f;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report Server Error Status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/f;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/deepe/b/a/a;->a(I)V

    iget-object p1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {p1}, Lcom/deepe/b/a;->D()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/deepe/b/d/f;->d()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, v0, Lcom/deepe/b/d/f;->l:Lcom/deepe/b/b/b;

    invoke-direct {p0, p1}, Lcom/deepe/b/d/a;->a(Lcom/deepe/b/b/b;)V

    invoke-virtual {v0}, Lcom/deepe/b/d/f;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/deepe/b/d/f;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {p1}, Lcom/deepe/b/a;->C()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepe/b/d/a;->d:Lcom/deepe/b/d/b;

    invoke-virtual {v0}, Lcom/deepe/b/d/f;->e()Lcom/deepe/b/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/d;)V

    iget-object p1, p0, Lcom/deepe/b/d/a;->d:Lcom/deepe/b/d/b;

    invoke-virtual {p1}, Lcom/deepe/b/d/b;->a()V

    :cond_3
    return-void

    :cond_4
    iget-object p1, p0, Lcom/deepe/b/d/a;->a:Lcom/deepe/b/d/e;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {p1}, Lcom/deepe/b/a;->B()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepe/b/d/a;->a:Lcom/deepe/b/d/e;

    invoke-interface {p1, v0}, Lcom/deepe/b/d/e;->a(Lcom/deepe/b/d/f;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "startupReportForYMPD >>>>>>> "

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v0, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incNo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemType"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/deepe/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/b/f;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportTime"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->K()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceInfo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningTimeInfo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_4
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/d/a$2;

    invoke-direct {v1, p0}, Lcom/deepe/b/d/a$2;-><init>(Lcom/deepe/b/d/a;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method public final a(Lcom/deepe/b/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/a;->b:Lcom/deepe/b/d/d;

    return-void
.end method

.method public final a(Lcom/deepe/b/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/a;->a:Lcom/deepe/b/d/e;

    return-void
.end method

.method public final b()V
    .locals 6

    const-string v0, "startupReport >>>>>>> "

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_s"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v0, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    const-string v2, "appVersion"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "incNo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemType"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/deepe/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/b/f;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "channel"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->D()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "aid"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->E()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reportTime"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepe/b/d/a;->c:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->K()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceInfo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/a/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "runningTimeInfo"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_4
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/d/a$3;

    invoke-direct {v1, p0}, Lcom/deepe/b/d/a$3;-><init>(Lcom/deepe/b/d/a;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method
