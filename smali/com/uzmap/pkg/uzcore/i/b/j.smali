.class public final Lcom/uzmap/pkg/uzcore/i/b/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/b/j$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/String; = null

.field private static b:Landroid/os/Handler; = null

.field private static c:Z = false

.field private static d:Lcom/uzmap/pkg/uzcore/i/b/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/b/j$a;-><init>(Lcom/uzmap/pkg/uzcore/i/b/j$a;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->d:Lcom/uzmap/pkg/uzcore/i/b/j$a;

    sput-object v1, Lcom/uzmap/pkg/uzcore/i/b/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/uzmap/pkg/uzcore/i/b/j$a;
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getLoadedPackageInfo"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :catch_0
    :goto_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->d:Lcom/uzmap/pkg/uzcore/i/b/j$a;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzcore/i/b/j$a;->a(Lcom/uzmap/pkg/uzcore/i/b/j$a;Ljava/lang/String;)V

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->d:Lcom/uzmap/pkg/uzcore/i/b/j$a;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/i/b/j$a;->b(Lcom/uzmap/pkg/uzcore/i/b/j$a;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->d:Lcom/uzmap/pkg/uzcore/i/b/j$a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/deepe/c/i/p;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebView;->setDataDirectorySuffix(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 5

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/i/b/j;->c:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/uzmap/pkg/uzcore/i/b/j;->c:Z

    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :try_start_0
    new-array v0, p1, [Ljava/lang/Class;

    const-class v1, Landroid/webkit/WebView;

    const-string v2, "getFactory"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, p1

    const-string v4, "setWebContentsDebuggingEnabled"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/i/b/j;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static final b()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/i/b/j;->a()Lcom/uzmap/pkg/uzcore/i/b/j$a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/b/j$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/i/b/j$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/deepe/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/deepe/c/a/d;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":harmony/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/a/d;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/i/b/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/j$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/uzmap/pkg/uzcore/i/b/j$1;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/uzcore/i/b/j;->b:Landroid/os/Handler;

    :cond_1
    sget-object p0, Lcom/uzmap/pkg/uzcore/i/b/j;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
