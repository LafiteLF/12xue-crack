.class public Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;
.super Ljava/lang/Object;


# static fields
.field public static final API_APP_ID:Ljava/lang/String; = "X-APICloud-AppId"

.field public static final API_APP_KEY:Ljava/lang/String; = "X-APICloud-AppKey"

.field public static final API_APP_PLATFORM:Ljava/lang/String; = "X-APICloud-Platform"

.field public static final API_APP_UUID:Ljava/lang/String; = "X-APICloud-UUID"

.field public static final API_VERSION:Ljava/lang/String; = "X-APICloud-Version"

.field public static final DATA_TYPE_EVENT:I = 0x2

.field public static final DATA_TYPE_JSON:I = 0x0

.field public static final DATA_TYPE_TEXT:I = 0x1

.field public static final DEFAULT_TIMEOUT:I = 0x7530

.field public static final METHOD_DELETE:I = 0x4

.field public static final METHOD_DOWNLOAD:I = 0x5

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_HEAD:I = 0x2

.field public static final METHOD_OPTIONS:I = 0x7

.field public static final METHOD_PATCH:I = 0x9

.field public static final METHOD_POST:I = 0x1

.field public static final METHOD_PUT:I = 0x3

.field public static final METHOD_TRACE:I = 0x8

.field public static final METHOD_UPLOAD:I = 0x6

.field public static final MIN_PROGRESS_TIME:I = 0x190

.field public static final SAFE_MODE_BOTH:I = 0x0

.field public static final SAFE_MODE_NONE:I = -0x1

.field public static final SAFE_MODE_REQUEST:I = 0x1

.field public static final SAFE_MODE_RESPONSE:I = 0x2


# instance fields
.field public allowResume:Z

.field public body:Ljava/lang/Object;

.field public cache:Z

.field public capath:Ljava/lang/String;

.field public capsw:Ljava/lang/String;

.field public charset:Ljava/lang/String;

.field public dataType:I

.field public defaultSavePath:Ljava/lang/String;

.field public encode:Z

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzkit/fineHttp/b;",
            ">;"
        }
    .end annotation
.end field

.field private fromAjax:Z

.field public heads:Lcom/deepe/c/i/t;

.field private isDownload:Z

.field public method:I

.field public needErrorInfo:Z

.field public needEscape:Z

.field public protocolVersion:I

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:I

.field public report:Z

.field public returnAll:Z

.field public safeMode:I

.field public savePath:Ljava/lang/String;

.field public stream:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field public timeout:I

.field traditional:Z

.field public url:Ljava/lang/String;

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzkit/fineHttp/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->safeMode:I

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->protocolVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->fromAjax:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->traditional:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->encode:Z

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->dataType:I

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->cache:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needEscape:Z

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->detmineTimeout(I)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->safeMode:I

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->protocolVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->fromAjax:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->traditional:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->encode:Z

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->fromAjax:Z

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->parse(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/a/a;->a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method public static builder(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/a;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzkit/fineHttp/a;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzkit/fineHttp/a;->setResultDataType(I)V

    return-object v0
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->builder(Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;

    move-result-object p0

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-APICloud-Version"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private detmineTimeout(I)V
    .locals 0

    if-gtz p1, :cond_0

    const/16 p1, 0x7530

    goto :goto_0

    :cond_0
    mul-int/lit16 p1, p1, 0x3e8

    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->timeout:I

    return-void
.end method

.method private parse(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "cache"

    invoke-interface {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->cache:Z

    const/4 v1, 0x1

    const-string v2, "escape"

    invoke-interface {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needEscape:Z

    const-string v2, "allowResume"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->allowResume:Z

    const-string v2, "returnAll"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->returnAll:Z

    const-string v2, "report"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->report:Z

    const-string v2, "timeout"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->detmineTimeout(I)V

    const-string v2, "method"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    const-string v2, "safeMode"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->safeMode:I

    const-string v2, "dataType"

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->dataType:I

    const-string v0, "savePath"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    const-string v0, "charset"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->charset:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "tag"

    invoke-interface {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    const-string v0, "traditional"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->traditional:Z

    const-string v0, "encode"

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->encode:Z

    const-string v0, "headers"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->serializeHeads(Lorg/json/JSONObject;)V

    const-string v0, "data"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "body"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    const-string v1, "stream"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->stream:Ljava/lang/String;

    const-string v1, "values"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->serializeValues(Lorg/json/JSONObject;)V

    const-string v1, "files"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->serializeFiles(Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "certificate"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "path"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    :cond_2
    const-string v0, "proxy"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "host"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->proxyHost:Ljava/lang/String;

    const-string v0, "port"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->proxyPort:I

    const-string v0, "protocolVersion"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->protocolVersion:I

    :cond_3
    return-void
.end method

.method private serializeFiles(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/c;->b(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public assembleUrl()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->fromAjax:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_3

    :goto_0
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->encode:Z

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final bindViewTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hasSavePath()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDownloadRequest()Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    iget v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSSERequest()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->dataType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeRealUrl(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-direct {v4, v3, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public makeTmpFileName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public multi()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public needGzip()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needToJson()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->dataType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onlyBody()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onlyStream()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->stream:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onlyValue()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public serializeHeads(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/fineHttp/c;->a(Lorg/json/JSONObject;)Lcom/deepe/c/i/t;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    :cond_1
    :goto_0
    return-void
.end method

.method public serializeValues(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    :cond_1
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->traditional:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-direct {v3, v1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public setAllowResume(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->allowResume:Z

    return-void
.end method

.method public setAsDownloadRequest(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownload:Z

    return-void
.end method

.method public setCacheable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->cache:Z

    return-void
.end method

.method public setDefaultSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->defaultSavePath:Ljava/lang/String;

    return-void
.end method

.method public setEscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needEscape:Z

    return-void
.end method

.method public setFileSavePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    return-void
.end method

.method public setInSecure(Ljava/lang/String;)V
    .locals 1

    const-string v0, "X-APICloud-AppId"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzapp/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-APICloud-AppKey"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getUUID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-APICloud-UUID"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "X-APICloud-Platform"

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->setRqHeads(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    return-void
.end method

.method public setNeedErrorInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needErrorInfo:Z

    return-void
.end method

.method public setResultDataType(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->dataType:I

    return-void
.end method

.method public setRqBody(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    return-void
.end method

.method public setRqFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-direct {v0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRqHeads(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/t;

    invoke-direct {v0}, Lcom/deepe/c/i/t;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, ""

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/t;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setRqHeads(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    if-nez v0, :cond_1

    new-instance v0, Lcom/deepe/c/i/t;

    invoke-direct {v0}, Lcom/deepe/c/i/t;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/t;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setRqValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-direct {v0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setRqValue(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-direct {v3, v1, v2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public setRqValue(Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->serializeValues(Lorg/json/JSONObject;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->detmineTimeout(I)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    return-void
.end method

.method public setWillReportProgress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->report:Z

    return-void
.end method

.method public timeout()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->timeout:I

    return v0
.end method

.method public transToAESBody()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public transToAESBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    :cond_0
    return-void
.end method
