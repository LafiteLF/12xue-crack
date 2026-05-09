.class Lcom/uzmap/pkg/uzcore/i/d;
.super Landroid/webkit/WebViewClient;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z

.field protected c:Ljava/lang/String;

.field protected d:Lcom/uzmap/pkg/uzcore/e;

.field protected e:Lcom/deepe/d/e;

.field protected f:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/d;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzcore/i/d;->b:Z

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    return-void
.end method

.method private a(Lcom/deepe/d/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->e:Lcom/deepe/d/e;

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzcore/i/d;->f:Z

    return-void
.end method

.method static final a(Lcom/uzmap/pkg/uzcore/i/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/p;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method static final a(Lcom/uzmap/pkg/uzcore/i/p;ZLjava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/d;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/d;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/e;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/e;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_2

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/f;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/f;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/g;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/g;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_4

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/h;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/h;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/i;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/uzmap/pkg/uzcore/i/i;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->l()Lcom/deepe/d/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->m()Z

    move-result p2

    invoke-direct {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/d;->a(Lcom/deepe/d/e;Z)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/p;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedPageError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, p1, p3, v1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/a;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p2}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "failedUrl"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "errorCode"

    invoke-virtual {v0, p3, p2}, Lcom/deepe/c/i/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "description"

    invoke-virtual {v0, p2, p4}, Lcom/deepe/c/i/i;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p2

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/b/d;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "error/error.html"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->b:Z

    if-eqz p3, :cond_4

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_4
    invoke-static {p2}, Lcom/deepe/c/i/h;->i(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_5
    return-void
.end method

.method protected final a(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-boolean p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->b:Z

    if-eqz p3, :cond_0

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-virtual {p3, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->b(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    return p4

    :cond_1
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p3, p2}, Lcom/uzmap/pkg/uzcore/e;->d(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return p4

    :cond_2
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "WebViewClient shouldOverrideUrlLoading not valid Url: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "native"

    invoke-static {p2, p1}, Lcom/deepe/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return p4

    :cond_4
    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final b(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "favicon.ico"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3, p4}, Lcom/deepe/d/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->e:Lcom/deepe/d/e;

    invoke-virtual {p1, p2}, Lcom/deepe/d/e;->d(Ljava/lang/String;)V

    :cond_0
    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WebViewClient onLoadResource: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "native"

    invoke-static {v0, p1}, Lcom/deepe/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->a()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/x;->p(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/d;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result p1

    invoke-interface {v0, p2, p1}, Lcom/uzmap/pkg/uzcore/a;->b(Ljava/lang/String;Z)V

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/k/d;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/x;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->h(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/d;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p4, p2, p3}, Lcom/uzmap/pkg/uzcore/i/d;->a(Landroid/webkit/WebView;Ljava/lang/String;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p1, p3, p4}, Lcom/uzmap/pkg/uzcore/i/b/b;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/i/b/b;->a(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onReceivedLoginRequest: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/e;->g()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/b/d;->h:Z

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void

    :cond_1
    sget-object p1, Lcom/deepe/b;->i:Ljava/lang/String;

    sget-object p3, Lcom/deepe/b;->S:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/uzmap/pkg/uzcore/external/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    move-result-object p1

    sget-object p3, Lcom/deepe/b;->G:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object p3, Lcom/deepe/b;->y:Ljava/lang/String;

    invoke-virtual {p1, p3}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/i/d;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/e;->f()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/d$1;

    invoke-direct {v0, p0, p2}, Lcom/uzmap/pkg/uzcore/i/d$1;-><init>(Lcom/uzmap/pkg/uzcore/i/d;Landroid/webkit/SslErrorHandler;)V

    invoke-static {p3, p1, v0}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;

    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method

.method public final onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "GET"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/uzmap/pkg/uzcore/i/d;->a(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method
