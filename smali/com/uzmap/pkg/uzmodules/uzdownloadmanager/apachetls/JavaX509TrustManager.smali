.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;
.super Ljava/lang/Object;
.source "JavaX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private mTrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "X509"

    .line 18
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 20
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    .line 21
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 24
    aget-object p1, p1, v0

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/security/NoSuchAlgorithmException;

    const-string v0, "no trust manager found"

    invoke-direct {p1, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/NetworkSetting;->isCheckSslTrusted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 38
    :try_start_0
    array-length v0, p1

    if-ne v0, v2, :cond_0

    .line 39
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    .line 50
    array-length v0, p1

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    :goto_1
    array-length v0, p1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_2

    .line 57
    aget-object v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 58
    aget-object v3, p1, v1

    .line 60
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 61
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 63
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_3

    .line 68
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_3
    return-void

    .line 53
    :cond_4
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Authentication type is invalid."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_5
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "Certificate chain is invalid."

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaX509TrustManager;->mTrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
