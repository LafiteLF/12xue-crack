.class public final Lcom/uzmap/pkg/uzcore/i/b/e;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/webkit/ClientCertRequest;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/ClientCertRequest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->b:Landroid/webkit/ClientCertRequest;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/webkit/ClientCertRequest;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/webkit/ClientCertRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/a/h;->b(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/uzmap/pkg/b/a/h$a;->a:Ljava/security/PrivateKey;

    iget-object v0, v0, Lcom/uzmap/pkg/b/a/h$a;->b:[Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, v1, v0}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->b:Landroid/webkit/ClientCertRequest;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/ClientCertRequest;->proceed(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)V

    return-object p1

    :catch_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->b:Landroid/webkit/ClientCertRequest;

    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-object p1

    :catch_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/e;->b:Landroid/webkit/ClientCertRequest;

    invoke-virtual {v0}, Landroid/webkit/ClientCertRequest;->ignore()V

    return-object p1
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/b/e;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
