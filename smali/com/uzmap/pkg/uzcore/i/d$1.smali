.class Lcom/uzmap/pkg/uzcore/i/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/external/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/d;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/d;

.field private final synthetic b:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/d;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d$1;->a:Lcom/uzmap/pkg/uzcore/i/d;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/d$1;->b:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d$1;->b:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto :goto_0

    :cond_0
    const/4 p2, -0x2

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/d$1;->b:Landroid/webkit/SslErrorHandler;

    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method
