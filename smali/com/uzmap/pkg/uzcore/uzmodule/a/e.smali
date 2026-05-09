.class public Lcom/uzmap/pkg/uzcore/uzmodule/a/e;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;


# instance fields
.field private a:Lcom/uzmap/pkg/b/a/k;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/UZWebView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/k;->a(Landroid/content/Context;)Lcom/uzmap/pkg/b/a/k;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/a/k;->a()V

    return-void
.end method

.method public final clickEffect(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/k;->clickEffect(Ljava/lang/String;)V

    return-void
.end method

.method public final getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final localStorage()Ljava/lang/Object;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-object p0
.end method

.method public final on(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->getCurView()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->l()Lcom/deepe/d/e;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3}, Lcom/deepe/d/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final removeItem(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/a/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final setItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/e;->a:Lcom/uzmap/pkg/b/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/b/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "undefine"

    return-object v0
.end method

.method public final vitals()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "api://vitals.js"

    return-object v0
.end method
