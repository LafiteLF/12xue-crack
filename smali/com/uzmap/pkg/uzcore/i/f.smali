.class Lcom/uzmap/pkg/uzcore/i/f;
.super Lcom/uzmap/pkg/uzcore/i/e;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/e;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 7

    invoke-static {}, Lcom/deepe/c/a/b;->a()Lcom/deepe/c/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/a/b;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-void

    :cond_0
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/i/b/e;->a(Landroid/webkit/ClientCertRequest;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/f;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->f()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-void

    :cond_2
    new-instance v1, Lcom/uzmap/pkg/uzcore/i/f$1;

    invoke-direct {v1, p0, p2}, Lcom/uzmap/pkg/uzcore/i/f$1;-><init>(Lcom/uzmap/pkg/uzcore/i/f;Landroid/webkit/ClientCertRequest;)V

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getKeyTypes()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPrincipals()[Ljava/security/Principal;

    move-result-object v3

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/webkit/ClientCertRequest;->getPort()I

    move-result v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 8

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v4

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->hasGesture()Z

    move-result v5

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/uzmap/pkg/uzcore/i/f;->b(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
