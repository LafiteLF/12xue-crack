.class public Lcom/deepe/b/g/b;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/deepe/b/d/b;

.field private c:Lcom/deepe/b/d/d;

.field private d:Lcom/deepe/b/b/d;

.field private e:Lcom/deepe/b/a;


# direct methods
.method public constructor <init>(Lcom/deepe/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/b/g/b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    new-instance v0, Lcom/deepe/b/b/d;

    invoke-direct {v0}, Lcom/deepe/b/b/d;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/g/b;->d:Lcom/deepe/b/b/d;

    new-instance v0, Lcom/deepe/b/g/b$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/g/b$1;-><init>(Lcom/deepe/b/g/b;Lcom/deepe/b/a;)V

    iput-object v0, p0, Lcom/deepe/b/g/b;->b:Lcom/deepe/b/d/b;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/g/b;)Lcom/deepe/b/d/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/b;->c:Lcom/deepe/b/d/d;

    return-object p0
.end method

.method static synthetic b(Lcom/deepe/b/g/b;)Lcom/deepe/b/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    return-object p0
.end method

.method static synthetic c(Lcom/deepe/b/g/b;)Lcom/deepe/b/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/b;->d:Lcom/deepe/b/b/d;

    return-object p0
.end method

.method static synthetic d(Lcom/deepe/b/g/b;)Lcom/deepe/b/d/b;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/g/b;->b:Lcom/deepe/b/d/b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/AM_Service_API/CheckSmartUpdate_s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/b/g/b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v1

    const-string v2, "checkSmartUpdate"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setTag(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    iget-object v0, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "systemType"

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->r()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "incNo"

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->n()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "versionCode"

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/deepe/b/g/b;->e:Lcom/deepe/b/a;

    invoke-virtual {v2}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "appVersion"

    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/b/g/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object v0

    new-instance v1, Lcom/deepe/b/g/b$2;

    invoke-direct {v1, p0}, Lcom/deepe/b/g/b$2;-><init>(Lcom/deepe/b/g/b;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method public a(Lcom/deepe/b/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/g/b;->c:Lcom/deepe/b/d/d;

    return-void
.end method
