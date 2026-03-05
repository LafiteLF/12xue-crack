.class Lcom/uzmap/pkg/uzcore/i/i;
.super Lcom/uzmap/pkg/uzcore/i/h;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/h;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/i/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unknown.html"

    :goto_0
    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {p2}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "The WebView rendering process crashed because of an internal error, such as a memory."

    goto :goto_1

    :cond_1
    const-string v0, "System killed the rendering process to reclaim memory."

    :goto_1
    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/i;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/i;->d:Lcom/uzmap/pkg/uzcore/e;

    new-instance v1, Lcom/deepe/sdk/ProcessGoneDetail;

    invoke-direct {v1, p2}, Lcom/deepe/sdk/ProcessGoneDetail;-><init>(Landroid/webkit/RenderProcessGoneDetail;)V

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/a;Lcom/deepe/sdk/ProcessGoneDetail;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
