.class public Lcom/deepe/e/g;
.super Lcom/deepe/e/c;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/c;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    return-void
.end method

.method private a(Z)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Download/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/e/g;->b()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/deepe/e/d;)V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    invoke-virtual {p1}, Lcom/deepe/e/d;->getJSONContext()Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    invoke-virtual {p0}, Lcom/deepe/e/g;->b()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->makeRealUrl(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ajax-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/deepe/c/i/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setNeedErrorInfo(Z)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    new-instance v2, Lcom/deepe/e/g$1;

    invoke-direct {v2, p0, p1}, Lcom/deepe/e/g$1;-><init>(Lcom/deepe/e/g;Lcom/deepe/e/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method private a(Lcom/deepe/e/d;ILorg/json/JSONObject;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p3, p2}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private a(Lcom/deepe/e/d;Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V
    .locals 12

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->success()Z

    move-result v0

    const-string v1, "code"

    const/4 v2, 0x0

    const-string v3, "msg"

    const-string v4, "headers"

    const-string v5, "statusCode"

    const-string v6, "body"

    const/4 v7, 0x1

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    iget-object v9, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    :catch_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    iget-object v9, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->error:Ljava/lang/String;

    invoke-virtual {v8, v3, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v8, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget v0, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->errorCode:I

    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p2, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v8, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {p1, v2, v8, v7}, Lcom/deepe/e/d;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepe/e/g;->f(Lcom/deepe/e/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepe/e/g;->e(Lcom/deepe/e/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string v1, ""

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p2, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v7}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/deepe/e/g;->d(Lcom/deepe/e/d;)Z

    move-result v0

    iget-object v8, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    iget-object v11, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v8, v10

    move v10, v7

    goto :goto_2

    :catch_3
    move v10, v9

    :goto_2
    if-nez v10, :cond_4

    :try_start_4
    new-instance v10, Lorg/json/JSONArray;

    iget-object v11, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v9, v7

    move-object v8, v10

    goto :goto_3

    :cond_4
    move v9, v10

    goto :goto_3

    :cond_5
    move v9, v7

    :catch_4
    :goto_3
    if-nez v9, :cond_6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->content:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p2, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p2, 0x3

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    invoke-virtual {p1, v2, v0, v7}, Lcom/deepe/e/d;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/deepe/e/g;->e(Lcom/deepe/e/d;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v7}, Lcom/deepe/e/d;->success(Ljava/lang/String;ZZ)V

    goto :goto_6

    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->headers:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget p2, p2, Lcom/uzmap/pkg/uzkit/fineHttp/Response;->statusCode:I

    invoke-virtual {v0, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_5

    :catch_6
    move-exception p2

    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_5
    invoke-virtual {p1, v0, v7}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;Z)V

    :goto_6
    return-void
.end method

.method static synthetic a(Lcom/deepe/e/g;Lcom/deepe/e/d;ILorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/e/g;->a(Lcom/deepe/e/d;ILorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/e/g;Lcom/deepe/e/d;Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/e/g;->a(Lcom/deepe/e/d;Lcom/uzmap/pkg/uzkit/fineHttp/Response;)V

    return-void
.end method

.method private b(Lcom/deepe/e/d;)V
    .locals 4

    invoke-static {}, Lcom/deepe/a/f/a;->c()Z

    move-result v0

    new-instance v1, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    invoke-virtual {p1}, Lcom/deepe/e/d;->getJSONContext()Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    const-string v2, "cache"

    invoke-virtual {p1, v2}, Lcom/deepe/e/d;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, v1, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->cache:Z

    :cond_0
    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setAsDownloadRequest(Z)V

    invoke-direct {p0, v0}, Lcom/deepe/e/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setDefaultSavePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/e/g;->b()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->makeRealUrl(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v0

    new-instance v2, Lcom/deepe/e/g$2;

    invoke-direct {v2, p0, p1}, Lcom/deepe/e/g$2;-><init>(Lcom/deepe/e/g;Lcom/deepe/e/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method private c(Lcom/deepe/e/d;)V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    invoke-virtual {p1}, Lcom/deepe/e/d;->getJSONContext()Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    invoke-virtual {p0}, Lcom/deepe/e/g;->b()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->makeRealUrl(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ajax-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/deepe/c/i/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setTag(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setNeedErrorInfo(Z)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object v1

    new-instance v2, Lcom/deepe/e/g$3;

    invoke-direct {v2, p0, p1}, Lcom/deepe/e/g$3;-><init>(Lcom/deepe/e/g;Lcom/deepe/e/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->execute(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/fineHttp/RequestListener;)V

    return-void
.end method

.method private d(Lcom/deepe/e/d;)Z
    .locals 1

    const-string v0, "dataType"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "json"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private e(Lcom/deepe/e/d;)Z
    .locals 1

    const-string v0, "returnAll"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private f(Lcom/deepe/e/d;)Z
    .locals 1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "head"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string p2, "loadFontFace"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :sswitch_1
    const-string p3, "downloadFile"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/deepe/e/g;->b(Lcom/deepe/e/d;)V

    goto :goto_1

    :sswitch_2
    const-string p3, "request"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2}, Lcom/deepe/e/g;->a(Lcom/deepe/e/d;)V

    goto :goto_1

    :sswitch_3
    const-string p2, "createTCPSocket"

    goto :goto_0

    :sswitch_4
    const-string p2, "createUDPSocket"

    goto :goto_0

    :sswitch_5
    const-string p3, "uploadFile"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/deepe/e/g;->c(Lcom/deepe/e/d;)V

    goto :goto_1

    :sswitch_6
    const-string p2, "connectSocket"

    goto :goto_0

    :goto_1
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44265303 -> :sswitch_6
        -0xe8370e3 -> :sswitch_5
        0x1fa210f8 -> :sswitch_4
        0x237c7518 -> :sswitch_3
        0x414ef28f -> :sswitch_2
        0x4214ae24 -> :sswitch_1
        0x62497a52 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "loadFontFace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "downloadFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "request"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "createTCPSocket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "createUDPSocket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v0, "uploadFile"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v0, "connectSocket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x44265303 -> :sswitch_6
        -0xe8370e3 -> :sswitch_5
        0x1fa210f8 -> :sswitch_4
        0x237c7518 -> :sswitch_3
        0x414ef28f -> :sswitch_2
        0x4214ae24 -> :sswitch_1
        0x62497a52 -> :sswitch_0
    .end sparse-switch
.end method
