.class Lcom/uzmap/pkg/uzcore/i/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/webkit/WebView;

.field private c:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/WebView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->b:Landroid/webkit/WebView;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->b:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->c:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->c:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/d;->a()V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Landroid/webkit/ValueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/d;->c:Landroid/webkit/ValueCallback;

    return-void
.end method

.method public run()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/d;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/i/b/d;->a()V

    :goto_0
    return-void
.end method
