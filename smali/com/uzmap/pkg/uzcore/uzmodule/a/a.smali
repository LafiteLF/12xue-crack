.class public Lcom/uzmap/pkg/uzcore/uzmodule/a/a;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

# interfaces
.implements Lcom/uzmap/pkg/a/f;


# instance fields
.field a:Z

.field private b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private c:Lcom/uzmap/pkg/uzcore/b/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->setModuleName(Ljava/lang/String;)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-direct {v0, p1, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->d()Lcom/uzmap/pkg/uzcore/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/z;->l()Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)Lcom/uzmap/pkg/uzcore/e;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    return-object p0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "call api err"

    invoke-static {v0, p1}, Lcom/deepe/d/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/d/a;->a:Z

    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/UZWebView;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/b/a;->b()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/b/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c:Lcom/uzmap/pkg/uzcore/b/a;

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzcore/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v2, v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public A(I)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api.js attribute get in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_0
    const-string v0, "api"

    const-string v1, "attribute"

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "api.js plugin exec in: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-direct {v0, p3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    :try_start_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {p3, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    instance-of p2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;->quote()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public ES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->valid()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1, p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public G(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "api"

    invoke-direct {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "api.js method call in: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(ILjava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;->quote()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public a(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->A(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->G(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->require(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->ES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/j;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a$1;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;Lcom/uzmap/pkg/uzcore/i/j;)V

    invoke-static {v0}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(ZLjava/lang/String;)V

    return-void
.end method

.method final a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->valid()Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mEngine:Lcom/uzmap/pkg/uzcore/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/j;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->mWebView:Lcom/uzmap/pkg/uzcore/UZWebView;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/UZWebView;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/i/j;->a(I)V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    return-void
.end method

.method public callAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api.js callAttr in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Ljava/lang/Exception;)V

    const-string p1, ""

    return-object p1
.end method

.method public callMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "api.js callMethod in: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_0
    const-string v0, "api"

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(Ljava/lang/Exception;)V

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;->quote()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public callObject()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "api.js callObject in."

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->logTo(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/deepe/c/d/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onClean()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a()V

    return-void
.end method

.method public require(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "error:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
