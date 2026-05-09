.class Lcom/uzmap/pkg/uzcore/i/b$a;
.super Landroid/webkit/PermissionRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/b;

.field private final b:Landroid/net/Uri;

.field private final c:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/webkit/WebChromeClient$FileChooserParams;

.field private final e:Lcom/uzmap/pkg/uzcore/i/b/h;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/net/Uri;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/uzmap/pkg/uzcore/i/b/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            "Lcom/uzmap/pkg/uzcore/i/b/h;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->a:Lcom/uzmap/pkg/uzcore/i/b;

    invoke-direct {p0}, Landroid/webkit/PermissionRequest;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->b:Landroid/net/Uri;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->c:Landroid/webkit/ValueCallback;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->d:Landroid/webkit/WebChromeClient$FileChooserParams;

    iput-object p5, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->e:Lcom/uzmap/pkg/uzcore/i/b/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/net/Uri;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/uzmap/pkg/uzcore/i/b/h;Lcom/uzmap/pkg/uzcore/i/b$a;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/uzmap/pkg/uzcore/i/b$a;-><init>(Lcom/uzmap/pkg/uzcore/i/b;Landroid/net/Uri;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;Lcom/uzmap/pkg/uzcore/i/b/h;)V

    return-void
.end method


# virtual methods
.method public deny()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->c:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->a:Lcom/uzmap/pkg/uzcore/i/b;

    const/16 v2, 0x4e8b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzcore/i/b;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public getOrigin()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public getResources()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->d:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/i/b;->a(Landroid/webkit/WebChromeClient$FileChooserParams;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public grant([Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->e:Lcom/uzmap/pkg/uzcore/i/b/h;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->c:Landroid/webkit/ValueCallback;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b$a;->d:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/i/b/h;->a(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    return-void
.end method
