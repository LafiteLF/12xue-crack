.class public Lcom/uzmap/pkg/uzcore/i/b;
.super Lcom/uzmap/pkg/uzcore/i/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/i/b$a;
    }
.end annotation


# static fields
.field static final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const-string v0, "WebViewProfilePrefsDefault"

    goto :goto_0

    :cond_0
    const-string v0, "WebViewChromiumPrefs"

    :goto_0
    sput-object v0, Lcom/uzmap/pkg/uzcore/i/b;->g:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_perm_retain"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/g/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/uzcore/i/b;->g:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzcore/g/g;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/i/b;->b(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b([Ljava/lang/String;)Lcom/deepe/c/i/s;
    .locals 4

    new-instance v0, Lcom/deepe/c/i/s;

    array-length v1, p0

    invoke-direct {v0, v1}, Lcom/deepe/c/i/s;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p0, v1

    const-string v3, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.permission.RECORD_AUDIO"

    :goto_1
    invoke-virtual {v0, v2}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    aget-object v2, p0, v1

    const-string v3, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.permission.CAMERA"

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v1, Lcom/deepe/c/i/s;

    const/4 v4, 0x2

    invoke-direct {v1, v4}, Lcom/deepe/c/i/s;-><init>(I)V

    const-string v4, "android.webkit.resource.AUDIO_CAPTURE"

    const-string v5, "android.webkit.resource.VIDEO_CAPTURE"

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/i/s;->a()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    aget-object p0, p0, v2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    if-eqz v0, :cond_4

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v5}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v5}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v4}, Lcom/deepe/c/i/s;->a(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lcom/deepe/c/i/s;->a()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 6

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getOrigin()Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b;->b([Ljava/lang/String;)Lcom/deepe/c/i/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepe/c/i/s;->b()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/deepe/c/i/s;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/uzmap/pkg/uzcore/i/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/deepe/c/i/s;->a()[Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/uzmap/pkg/uzcore/i/b$1;

    invoke-direct {v4, p0, p1, v0, v3}, Lcom/uzmap/pkg/uzcore/i/b$1;-><init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/webkit/PermissionRequest;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v4}, Lcom/uzmap/pkg/uzcore/i/b;->b(Landroid/net/Uri;[Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a$a;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return-void
.end method

.method public onPermissionRequestCanceled(Landroid/webkit/PermissionRequest;)V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/b;->a()V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/h;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b;->a:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/uzmap/pkg/uzcore/i/b/h;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/ActivityResult;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/i/b;->b(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b;->b([Ljava/lang/String;)Lcom/deepe/c/i/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/s;->b()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lcom/deepe/c/i/s;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/i/b;->a([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance p1, Lcom/uzmap/pkg/uzcore/i/b$a;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    move-object v7, v0

    check-cast v7, Lcom/uzmap/pkg/uzcore/i/b/h;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/uzmap/pkg/uzcore/i/b$a;-><init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/net/Uri;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/uzmap/pkg/uzcore/i/b/h;Lcom/uzmap/pkg/uzcore/i/b$a;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b;->onPermissionRequest(Landroid/webkit/PermissionRequest;)V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b;->c:Lcom/uzmap/pkg/uzcore/i/b/g;

    check-cast p1, Lcom/uzmap/pkg/uzcore/i/b/h;

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return v1
.end method
