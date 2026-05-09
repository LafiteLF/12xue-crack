.class Lcom/deepe/b/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/b/a/f$a;
    }
.end annotation


# static fields
.field static b:I

.field static c:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Ljava/lang/String;

.field private d:Lcom/deepe/b/a;

.field private e:Lcom/deepe/b/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepe/b/a/f;->c:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/b/a/c;Lcom/deepe/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/b/a/f;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/deepe/b/a/f;->e:Lcom/deepe/b/a/c;

    iput-object p2, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/a/f;)Lcom/deepe/b/a/c;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/a/f;->e:Lcom/deepe/b/a/c;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/b/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/b/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lcom/deepe/b/f;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(J)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/deepe/b/a/f;->c:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/deepe/b/a/f;->e:Lcom/deepe/b/a/c;

    invoke-virtual {v0}, Lcom/deepe/b/a/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/a/f;->e:Lcom/deepe/b/a/c;

    invoke-virtual {v1}, Lcom/deepe/b/a/c;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->A()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->H()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/deepe/b/a/f;->a:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_s"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/deepe/b/a/f;->a:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setResultDataType(I)V

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    iget-object v3, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "systemType"

    invoke-virtual {v2, v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appVersion"

    invoke-virtual {v2, v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "model"

    invoke-virtual {v2, v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepe/b/a/f;->d:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "systemVersion"

    invoke-virtual {v2, v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/deepe/b/a/f;->a(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reportTime"

    invoke-virtual {v2, v4, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "behaviorInfo"

    invoke-virtual {v2, v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "eventInfo"

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/deepe/b/a/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_3
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/a/f$a;

    invoke-direct {v1, p0}, Lcom/deepe/b/a/f$a;-><init>(Lcom/deepe/b/a/f;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method
