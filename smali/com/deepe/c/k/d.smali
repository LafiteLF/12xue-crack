.class public Lcom/deepe/c/k/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/deepe/c/k/d;


# instance fields
.field private a:Landroid/webkit/CookieManager;

.field private b:Landroid/webkit/CookieSyncManager;

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/k/d;->d:Landroid/content/Context;

    return-void
.end method

.method public static final declared-synchronized a()Lcom/deepe/c/k/d;
    .locals 3

    const-class v0, Lcom/deepe/c/k/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/deepe/c/k/d;->c:Lcom/deepe/c/k/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepe/c/k/d;

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/deepe/c/k/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/deepe/c/k/d;->c:Lcom/deepe/c/k/d;

    :cond_0
    sget-object v1, Lcom/deepe/c/k/d;->c:Lcom/deepe/c/k/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/k/d;->b:Landroid/webkit/CookieSyncManager;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/k/d;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/k/d;->b:Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-static {v1}, Landroid/webkit/CookieManager;->setAcceptFileSchemeCookies(Z)V

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    :cond_1
    :goto_0
    return-void
.end method

.method private f()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/k/d;->e()V

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/webkit/WebView;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/k/d;->e()V

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/c/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/deepe/c/k/d$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/deepe/c/k/d$1;-><init>(Lcom/deepe/c/k/d;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    invoke-static {v0}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/k/d;->e()V

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/deepe/c/k/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/deepe/c/k/d$2;-><init>(Lcom/deepe/c/k/d;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object p3, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {p3, p1, p2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/k/d;->b()V

    if-eqz p3, :cond_3

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/k/d;->e()V

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/k/d;->b:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/k/d;->b:Landroid/webkit/CookieSyncManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/c/k/d;->e()V

    invoke-direct {p0}, Lcom/deepe/c/k/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/k/d;->a:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    invoke-virtual {p0}, Lcom/deepe/c/k/d;->b()V

    return-void
.end method
