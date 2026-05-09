.class Lcom/uzmap/pkg/uzcore/i/g;
.super Lcom/uzmap/pkg/uzcore/i/f;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/f;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/g;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/g;->e:Lcom/deepe/d/e;

    invoke-virtual {p1}, Lcom/deepe/d/e;->c()V

    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result p2

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/uzmap/pkg/uzcore/i/g;->a(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/uzmap/pkg/uzcore/i/g;->b(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 7

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/g;->b(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/g;->f:Z

    if-eqz p1, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isRedirect()Z

    move-result v4

    :cond_0
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p2

    new-instance p3, Lcom/deepe/sdk/PerformanceContext$HttpError;

    invoke-direct {p3}, Lcom/deepe/sdk/PerformanceContext$HttpError;-><init>()V

    iput-object v0, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->name:Ljava/lang/String;

    iput-object p1, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->method:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v3, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->requestHeader:Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_2
    iput-object p1, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->responseHeader:Lorg/json/JSONObject;

    iput v1, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->responseStatus:I

    iput-object v2, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->errorData:Ljava/lang/String;

    iput-boolean v4, p3, Lcom/deepe/sdk/PerformanceContext$HttpError;->isRedirect:Z

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/g;->e:Lcom/deepe/d/e;

    invoke-virtual {p1, p3}, Lcom/deepe/d/e;->a(Lcom/deepe/sdk/PerformanceContext$HttpError;)V

    :cond_3
    return-void
.end method
