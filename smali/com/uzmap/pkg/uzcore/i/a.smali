.class public Lcom/uzmap/pkg/uzcore/i/a;
.super Landroid/webkit/WebChromeClient;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/a$a;,
        Lcom/uzmap/pkg/uzcore/i/a$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field protected c:Lcom/uzmap/pkg/uzcore/i/b/g;

.field protected d:Lcom/uzmap/pkg/uzcore/e;

.field protected e:Lcom/deepe/d/e;

.field protected f:Z

.field private g:Lcom/deepe/a/g/a/a;

.field private h:Lcom/uzmap/pkg/uzcore/i/a$b;

.field private i:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    return-void
.end method

.method private a(Lcom/deepe/d/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->e:Lcom/deepe/d/e;

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzcore/i/a;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/i/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/a;->b()V

    return-void
.end method

.method static final a(Lcom/uzmap/pkg/uzcore/i/p;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/b;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->l()Lcom/deepe/d/e;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/p;->m()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/a;->a(Lcom/deepe/d/e;Z)V

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/i/a;->a(Lcom/uzmap/pkg/uzcore/i/a$b;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/p;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method static final b(Lcom/uzmap/pkg/uzcore/i/p;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/p;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    :cond_0
    return-void
.end method

.method protected a(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/f/k;

    const/16 v1, 0x7595

    invoke-direct {v0, v1}, Lcom/deepe/c/f/k;-><init>(I)V

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lcom/deepe/c/f/k;->a(Z)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/a$6;

    invoke-virtual {v0}, Lcom/deepe/c/f/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, p0, v1, p3, p1}, Lcom/uzmap/pkg/uzcore/i/a$6;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Ljava/util/List;Lcom/uzmap/pkg/uzcore/i/a$a;Landroid/net/Uri;)V

    invoke-static {v0, p2}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/k;Lcom/deepe/c/f/d;)V

    return-void

    :cond_0
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Lcom/deepe/c/f/k;->b(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public a(Lcom/uzmap/pkg/uzcore/i/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->h:Lcom/uzmap/pkg/uzcore/i/a$b;

    return-void
.end method

.method protected a([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected b(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V
    .locals 10

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p3, p1, v1, v1}, Lcom/uzmap/pkg/uzcore/i/a$a;->a(Landroid/net/Uri;ZZ)V

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/i/a;->a([Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/c/a/h;->a()Lcom/deepe/c/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepe/c/a/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v9, Lcom/deepe/a/g/a/d;

    invoke-direct {v9}, Lcom/deepe/a/g/a/d;-><init>()V

    const-string v2, ""

    move v4, v1

    :goto_0
    array-length v6, p2

    if-lt v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/deepe/b;->R:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/deepe/a/g/a/d;->a:Ljava/lang/String;

    sget-object v0, Lcom/deepe/b;->B:Ljava/lang/String;

    iput-object v0, v9, Lcom/deepe/a/g/a/d;->c:Ljava/lang/String;

    sget-object v0, Lcom/deepe/b;->C:Ljava/lang/String;

    iput-object v0, v9, Lcom/deepe/a/g/a/d;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    sget-object v0, Lcom/deepe/b;->E:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/deepe/b;->D:Ljava/lang/String;

    :goto_1
    invoke-virtual {v9, v0}, Lcom/deepe/a/g/a/d;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a$7;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/uzmap/pkg/uzcore/i/a$7;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/content/Context;ZLcom/uzmap/pkg/uzcore/i/a$a;Landroid/net/Uri;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a;->a(Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    invoke-virtual {p1, v9}, Lcom/deepe/a/g/a/a;->a(Lcom/deepe/a/g/a/d;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->g:Lcom/deepe/a/g/a/a;

    invoke-virtual {p1}, Lcom/deepe/a/g/a/a;->show()V

    return-void

    :cond_3
    aget-object v6, p2, v4

    iget-object v7, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/f/l;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/deepe/c/f/l;->a:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->h:Lcom/uzmap/pkg/uzcore/i/a$b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/i/a$b;->c()V

    :cond_0
    invoke-static {}, Lcom/deepe/c/k/j;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->B()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/h;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/external/h;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/deepe/b;->Q:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/deepe/b;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/external/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/external/h;->a()V

    :cond_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x4e8b

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b/g;->a(ILandroid/content/Intent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    :cond_1
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->e:Lcom/deepe/d/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/d/e;->a(Landroid/webkit/ConsoleMessage;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    new-instance v1, Lcom/uzmap/pkg/uzcore/i/j;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/a;->i:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Landroid/webkit/ConsoleMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    const-wide/32 p1, 0x6400000

    cmp-long p1, p5, p1

    if-gez p1, :cond_0

    invoke-interface {p9, p5, p6}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    :cond_0
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    :goto_0
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/a;->a()V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/uzmap/pkg/uzcore/i/a$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/uzmap/pkg/uzcore/i/a$5;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/a;->b(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V

    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->z()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a$1;

    invoke-direct {v0, p0, p4}, Lcom/uzmap/pkg/uzcore/i/a$1;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/webkit/JsResult;)V

    invoke-static {p1, p3, v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V

    return p2
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/a$2;

    invoke-direct {p2, p0, p4}, Lcom/uzmap/pkg/uzcore/i/a$2;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/webkit/JsResult;)V

    invoke-static {p1, p3, p2}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/a$3;

    invoke-direct {p2, p0, p5}, Lcom/uzmap/pkg/uzcore/i/a$3;-><init>(Lcom/uzmap/pkg/uzcore/i/a;Landroid/webkit/JsPromptResult;)V

    invoke-static {p1, p3, p4, p2}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    const/16 v0, 0x32

    if-le p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->i:Ljava/lang/String;

    :cond_0
    check-cast p1, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->F()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/deepe/d/a;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WebChromeClient onReceivedTitle is url: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "native"

    invoke-static {p2, p1}, Lcom/deepe/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->f:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->e:Lcom/deepe/d/e;

    invoke-virtual {p1, p2}, Lcom/deepe/d/e;->c(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, p2}, Lcom/uzmap/pkg/uzcore/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/view/View;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/l;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/l;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/deepe/c/b/e;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/i/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/l;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/i/a$4;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a$4;-><init>(Lcom/uzmap/pkg/uzcore/i/a;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/l;->a(Lcom/uzmap/pkg/uzcore/i/l$a;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/a;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/l;I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    :cond_1
    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/a;->b:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/i/a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "*/*"

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/i/a;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/i/a;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/uzmap/pkg/uzcore/i/b/g;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/a;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b/g;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
