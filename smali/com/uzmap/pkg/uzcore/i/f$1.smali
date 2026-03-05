.class Lcom/uzmap/pkg/uzcore/i/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/i/f;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/i/f;

.field private final synthetic b:Landroid/webkit/ClientCertRequest;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/i/f;Landroid/webkit/ClientCertRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/f$1;->a:Lcom/uzmap/pkg/uzcore/i/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/f$1;->b:Landroid/webkit/ClientCertRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alias(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/i/f$1;->b:Landroid/webkit/ClientCertRequest;

    invoke-virtual {p1}, Landroid/webkit/ClientCertRequest;->cancel()V

    return-void

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/i/b/e;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/f$1;->a:Lcom/uzmap/pkg/uzcore/i/f;

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/i/f;->d:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/e;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/f$1;->b:Landroid/webkit/ClientCertRequest;

    invoke-direct {v0, v1, v2, p1}, Lcom/uzmap/pkg/uzcore/i/b/e;-><init>(Landroid/content/Context;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/i/b/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
