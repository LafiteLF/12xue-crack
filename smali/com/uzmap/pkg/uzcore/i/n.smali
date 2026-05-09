.class final Lcom/uzmap/pkg/uzcore/i/n;
.super Landroid/webkit/WebViewRenderProcessClient;


# instance fields
.field protected a:Lcom/uzmap/pkg/uzcore/e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewRenderProcessClient;-><init>()V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/n;->a:Lcom/uzmap/pkg/uzcore/e;

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    const-string p2, "WebView render process on responsive!"

    invoke-static {p2}, Lcom/deepe/d/a;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown.html"

    :goto_0
    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/n;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    return-void
.end method

.method public onRenderProcessUnresponsive(Landroid/webkit/WebView;Landroid/webkit/WebViewRenderProcess;)V
    .locals 1

    const-string p2, "WebView render process on unresponsive!"

    invoke-static {p2}, Lcom/deepe/d/a;->g(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/j;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "unknown.html"

    :goto_0
    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/n;->a:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    return-void
.end method
