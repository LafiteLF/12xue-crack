.class public Lcom/deepe/b/e/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/deepe/b/e/a;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field private c:Lcom/deepe/b/b/d;

.field private d:Lcom/deepe/b/d/b;

.field private e:Lcom/deepe/b/a;

.field private f:Lcom/deepe/b/d/d;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/deepe/b/e/a;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/deepe/b/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/deepe/b/b/d;

    invoke-direct {v0}, Lcom/deepe/b/b/d;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/e/a;->c:Lcom/deepe/b/b/d;

    invoke-static {}, Lcom/deepe/b/a;->b()Lcom/deepe/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    new-instance v0, Lcom/deepe/b/e/a$1;

    iget-object v1, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-direct {v0, p0, v1}, Lcom/deepe/b/e/a$1;-><init>(Lcom/deepe/b/e/a;Lcom/deepe/b/a;)V

    iput-object v0, p0, Lcom/deepe/b/e/a;->d:Lcom/deepe/b/d/b;

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/e/a;)Lcom/deepe/b/d/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/e/a;->f:Lcom/deepe/b/d/d;

    return-object p0
.end method

.method public static final a()Lcom/deepe/b/e/a;
    .locals 1

    sget-object v0, Lcom/deepe/b/e/a;->b:Lcom/deepe/b/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/b/e/a;

    invoke-direct {v0}, Lcom/deepe/b/e/a;-><init>()V

    sput-object v0, Lcom/deepe/b/e/a;->b:Lcom/deepe/b/e/a;

    :cond_0
    sget-object v0, Lcom/deepe/b/e/a;->b:Lcom/deepe/b/e/a;

    return-object v0
.end method

.method public static a(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzkit/request/HttpResult;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "result"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/b/b/a;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/deepe/b/e/a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/b/e/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/b/e/a;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/e/a;)Lcom/deepe/b/a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    return-object p0
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/openapi/mam/Results;
    .locals 0

    invoke-static {p0}, Lcom/deepe/b/e/a;->c(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/openapi/mam/Results;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/deepe/b/e/a;->h:Ljava/util/List;

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/b/b/c;

    new-instance v2, Lcom/uzmap/pkg/openapi/IncPackage;

    invoke-direct {v2}, Lcom/uzmap/pkg/openapi/IncPackage;-><init>()V

    iget-object v3, v1, Lcom/deepe/b/b/c;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/uzmap/pkg/openapi/IncPackage;->extra:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/deepe/b/b/c;->c:Z

    iput-boolean v3, v2, Lcom/uzmap/pkg/openapi/IncPackage;->silent:Z

    iget v3, v1, Lcom/deepe/b/b/c;->a:I

    iput v3, v2, Lcom/uzmap/pkg/openapi/IncPackage;->version:I

    iget v3, v1, Lcom/deepe/b/b/c;->e:I

    iput v3, v2, Lcom/uzmap/pkg/openapi/IncPackage;->index:I

    iget-object v1, v1, Lcom/deepe/b/b/c;->b:Ljava/lang/String;

    iput-object v1, v2, Lcom/uzmap/pkg/openapi/IncPackage;->url:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method static synthetic c(Lcom/deepe/b/e/a;)Lcom/deepe/b/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/e/a;->c:Lcom/deepe/b/b/d;

    return-object p0
.end method

.method private static c(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Lcom/uzmap/pkg/openapi/mam/Results;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/openapi/mam/Results;

    iget v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->statusCode:I

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/openapi/mam/Results;-><init>(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getDes()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/uzmap/pkg/openapi/mam/Results;->data:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpResult;->headers:Ljava/util/Map;

    iput-object v1, v0, Lcom/uzmap/pkg/openapi/mam/Results;->headers:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->getErrorType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/openapi/mam/Results;->setErrorType(I)Lcom/uzmap/pkg/uzkit/request/HttpResult;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/openapi/mam/ResetListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/b/e/a;->g:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "update running"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/openapi/mam/ResetListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/deepe/b/e/a$5;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/e/a$5;-><init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/ResetListener;)V

    iget-object p1, p0, Lcom/deepe/b/e/a;->d:Lcom/deepe/b/d/b;

    invoke-virtual {p1, v0}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/f/c;)Z

    return-void
.end method

.method public a(Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;Lcom/deepe/b/e/b;)V
    .locals 5

    iget-boolean v0, p0, Lcom/deepe/b/e/a;->g:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/deepe/b/e/a;->h:Ljava/util/List;

    const-string v0, "update running!"

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;->onResult(Ljava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v1}, Lcom/deepe/b/a;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/AM_Service_API/CheckSmartUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/deepe/b/e/b;->getSmartUpdate()Lcom/deepe/b/e/b$c;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/deepe/b/e/b$c;->a:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v0, v2, Lcom/deepe/b/e/b$c;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_s"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v3}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v3

    const-string v4, "checkSmartUpdate"

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setTag(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setEscape(Z)V

    iget-object v0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v4, "systemType"

    invoke-virtual {v3, v4, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v4}, Lcom/deepe/b/a;->r()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "incNo"

    invoke-virtual {v3, v4, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v4}, Lcom/deepe/b/a;->n()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "versionCode"

    invoke-virtual {v3, v4, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v4}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "appVersion"

    invoke-virtual {v3, v4, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v2, :cond_6

    iget-object v0, v2, Lcom/deepe/b/e/b$c;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/deepe/b/e/b$c;->b:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/util/Map;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, v2, Lcom/deepe/b/e/b$c;->c:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, v2, Lcom/deepe/b/e/b$c;->c:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/util/Map;)V

    :cond_7
    if-eqz p2, :cond_a

    invoke-interface {p2}, Lcom/deepe/b/e/b;->getEncrypt()Lcom/deepe/b/e/b$a;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v0, p2, Lcom/deepe/b/e/b$a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move-object v0, v1

    :goto_2
    if-eqz p2, :cond_9

    iget-object v1, p2, Lcom/deepe/b/e/b$a;->b:Ljava/lang/String;

    :cond_9
    invoke-virtual {v3, v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_b

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_b
    :goto_3
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p2

    new-instance v0, Lcom/deepe/b/e/a$3;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/e/a$3;-><init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;)V

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/deepe/b/e/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;",
            "Lcom/deepe/b/e/b;",
            ")V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/deepe/b/e/a;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p2, "update running"

    invoke-virtual {p1, v1, p2}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;->onFinish(ZLjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepe/b/e/a;->c:Lcom/deepe/b/b/d;

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->d()I

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    if-eqz p1, :cond_2

    const-string p2, "no inc package"

    invoke-virtual {p1, v1, p2}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;->onFinish(ZLjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/deepe/b/e/a;->c:Lcom/deepe/b/b/d;

    invoke-virtual {v0, p2}, Lcom/deepe/b/b/d;->a(Ljava/util/List;)V

    :cond_4
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/deepe/b/e/a;->g:Z

    new-instance p2, Lcom/deepe/b/e/a$4;

    invoke-direct {p2, p0, p1}, Lcom/deepe/b/e/a$4;-><init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;)V

    iput-object p2, p0, Lcom/deepe/b/e/a;->f:Lcom/deepe/b/d/d;

    iget-object p1, p0, Lcom/deepe/b/e/a;->d:Lcom/deepe/b/d/b;

    iget-object p2, p0, Lcom/deepe/b/e/a;->c:Lcom/deepe/b/b/d;

    invoke-virtual {p1, p2}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/d;)V

    iget-object p1, p0, Lcom/deepe/b/e/a;->d:Lcom/deepe/b/d/b;

    invoke-virtual {p1, p3}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/e/b;)V

    iget-object p1, p0, Lcom/deepe/b/e/a;->d:Lcom/deepe/b/d/b;

    invoke-virtual {p1}, Lcom/deepe/b/d/b;->a()V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/deepe/b/e/b;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/AM_Service_API/CheckUpdate"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "_s"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {v0}, Lcom/deepe/b/a;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setUrl(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setMethod(I)V

    iget-object p2, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {p2}, Lcom/deepe/b/a;->e()Ljava/lang/String;

    move-result-object p2

    const-string v1, "systemType"

    invoke-virtual {v0, v1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/deepe/b/e/a;->e:Lcom/deepe/b/a;

    invoke-virtual {p2}, Lcom/deepe/b/a;->k()Ljava/lang/String;

    move-result-object p2

    const-string v1, "appVersion"

    invoke-virtual {v0, v1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "checkUpdate"

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setTag(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/deepe/b/e/a;->a:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->transToAESBody()V

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;

    move-result-object p2

    new-instance v0, Lcom/deepe/b/e/a$2;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/e/a$2;-><init>(Lcom/deepe/b/e/a;Lcom/uzmap/pkg/openapi/mam/UpdateCallback;)V

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->request(Lcom/uzmap/pkg/uzkit/request/Request;)V

    return-void
.end method
