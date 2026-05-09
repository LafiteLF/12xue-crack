.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;
.super Ljava/lang/Object;
.source "SslHttpManager.java"


# static fields
.field public static KEY_CACHE:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOCKET_OPERATION_TIMEOUT:I = 0xea60

.field static final algorithm:Ljava/lang/String; = "X509"

.field static final keyType:Ljava/lang/String; = "pkcs12"

.field static final sslPort:I = 0x1bb


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->KEY_CACHE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createHttpClient(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .line 94
    iget p0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->timeout:I

    .line 95
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 97
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 98
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 p0, 0x2000

    .line 99
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 101
    sget-object p0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string p0, "UTF-8"

    .line 102
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 104
    new-instance p0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 105
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const-string v4, "http"

    const/16 v5, 0x50

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 108
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 109
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 110
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    return-object p0
.end method

.method public static createHttpsClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 4

    .line 40
    :try_start_0
    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 41
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheSslSocketFactory;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheSslSocketFactory;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 42
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheX509HostnameVerifier;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheX509HostnameVerifier;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 43
    new-instance p0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 44
    new-instance p1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {p1, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 45
    new-instance p1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-direct {p1, v1, v0, v2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 47
    new-instance p1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {p1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const v0, 0xea60

    .line 48
    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 49
    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x2000

    .line 50
    invoke-static {p1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x0

    .line 51
    invoke-static {p1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 52
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p1, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v1, "UTF-8"

    .line 53
    invoke-static {p1, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 55
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, p1, p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 56
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 57
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {p1, v0, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHttpsClientWithCert(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;)Lorg/apache/http/client/HttpClient;
    .locals 6

    .line 67
    :try_start_0
    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->timeout:I

    .line 68
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheSslSocketFactory;

    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-direct {v2, v1, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheSslSocketFactory;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    .line 70
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheX509HostnameVerifier;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheX509HostnameVerifier;-><init>()V

    invoke-virtual {v2, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/ApacheSslSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 71
    new-instance p0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 72
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 73
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 75
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 76
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v0, 0x2000

    .line 78
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const/4 v0, 0x0

    .line 79
    invoke-static {v1, v0}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 80
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string v2, "UTF-8"

    .line 81
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 83
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v1, p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 84
    new-instance p0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p0, v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 85
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v1, v0, v0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSSLSocketFactoryWithCert(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaSslSocketFactory;
    .locals 3

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 120
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaSslSocketFactory;

    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-direct {v2, v1, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaSslSocketFactory;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    return-object v2

    .line 117
    :cond_1
    :goto_0
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaSslSocketFactory;

    invoke-direct {p0, v0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/JavaSslSocketFactory;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static declared-synchronized loadKeyStore(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;

    monitor-enter v0

    .line 130
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "pkcs12"

    .line 131
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 132
    invoke-virtual {p0, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit v0

    return-object p0

    .line 135
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget-object v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->KEY_CACHE:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 138
    monitor-exit v0

    return-object v3

    .line 140
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string v3, "pkcs12"

    .line 141
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    if-eqz p0, :cond_2

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 144
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 145
    sget-object p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->KEY_CACHE:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v3, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
