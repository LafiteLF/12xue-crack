.class public abstract Lcom/deepe/c/l/a/b;
.super Lcom/deepe/c/l/a;

# interfaces
.implements Lcom/deepe/c/l/b;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/l/a/b$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/net/URI;

.field private b:Lcom/deepe/c/l/d;

.field private c:Ljava/net/Socket;

.field private d:Ljavax/net/SocketFactory;

.field private e:Ljava/io/OutputStream;

.field private f:Ljava/net/Proxy;

.field private g:Ljava/lang/Thread;

.field private h:Ljava/lang/Thread;

.field private i:Lcom/deepe/c/l/b/a;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/concurrent/CountDownLatch;

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:I

.field private n:Lcom/deepe/c/l/a/a;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/deepe/c/l/a/b;-><init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/deepe/c/l/b/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/l/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->d:Ljavax/net/SocketFactory;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v1, p0, Lcom/deepe/c/l/a/b;->f:Ljava/net/Proxy;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/deepe/c/l/a/b;->k:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/deepe/c/l/a/b;->l:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepe/c/l/a/b;->m:I

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->n:Lcom/deepe/c/l/a/a;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/deepe/c/l/a/b;->i:Lcom/deepe/c/l/b/a;

    new-instance p1, Lcom/deepe/c/l/a/b$1;

    invoke-direct {p1, p0}, Lcom/deepe/c/l/a/b$1;-><init>(Lcom/deepe/c/l/a/b;)V

    iput-object p1, p0, Lcom/deepe/c/l/a/b;->n:Lcom/deepe/c/l/a/a;

    if-eqz p3, :cond_0

    new-instance p1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/deepe/c/l/a/b;->j:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iput p4, p0, Lcom/deepe/c/l/a/b;->m:I

    invoke-virtual {p0, v1}, Lcom/deepe/c/l/a/b;->a(Z)V

    invoke-virtual {p0, v1}, Lcom/deepe/c/l/a/b;->b(Z)V

    new-instance p1, Lcom/deepe/c/l/d;

    invoke-direct {p1, p0, p2}, Lcom/deepe/c/l/d;-><init>(Lcom/deepe/c/l/e;Lcom/deepe/c/l/b/a;)V

    iput-object p1, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static synthetic a(Lcom/deepe/c/l/a/b;)Lcom/deepe/c/l/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    return-object p0
.end method

.method private a()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->d:Ljavax/net/SocketFactory;

    instance-of v1, v0, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->c()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/l/a/b;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/l/a/b;->a(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/l/a/b;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/l/a/b;->g:Ljava/lang/Thread;

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 1

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/l/a/b;->a(Ljava/lang/Exception;)V

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/deepe/c/l/a/b;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/l/a/b;->e:Ljava/io/OutputStream;

    return-object p0
.end method

.method private b()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->f:Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->f:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/l/a/b;->d:Ljavax/net/SocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->f:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    const/4 v2, 0x0

    :goto_2
    return v2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private c()I
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wss"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    if-ne v0, v3, :cond_0

    const/16 v0, 0x1bb

    :cond_0
    return v0

    :cond_1
    const-string v2, "ws"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_2

    const/16 v0, 0x50

    :cond_2
    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown scheme: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/deepe/c/l/a/b;)Ljava/net/Socket;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    return-object p0
.end method

.method private n()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "/"

    :cond_1
    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->c()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x50

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1bb

    if-eq v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v1, ""

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/deepe/c/l/g/d;

    invoke-direct {v2}, Lcom/deepe/c/l/g/d;-><init>()V

    invoke-virtual {v2, v0}, Lcom/deepe/c/l/g/d;->a(Ljava/lang/String;)V

    const-string v0, "Host"

    invoke-virtual {v2, v0, v1}, Lcom/deepe/c/l/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->j:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/deepe/c/l/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, v2}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/g/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/d;->a(I)V

    return-void
.end method

.method public abstract a(ILjava/lang/String;Z)V
.end method

.method public a(Lcom/deepe/c/l/b;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lcom/deepe/c/l/a/b;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/deepe/c/l/b;ILjava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->d()V

    iget-object p1, p0, Lcom/deepe/c/l/a/b;->g:Ljava/lang/Thread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/deepe/c/l/a/b;->a(ILjava/lang/String;Z)V

    iget-object p1, p0, Lcom/deepe/c/l/a/b;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object p1, p0, Lcom/deepe/c/l/a/b;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/f;)V
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->e()V

    check-cast p2, Lcom/deepe/c/l/g/h;

    invoke-virtual {p0, p2}, Lcom/deepe/c/l/a/b;->a(Lcom/deepe/c/l/g/h;)V

    iget-object p1, p0, Lcom/deepe/c/l/a/b;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/deepe/c/l/a/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Lcom/deepe/c/l/b;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/deepe/c/l/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/deepe/c/l/b;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/deepe/c/l/a/b;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/f/f;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/f/f;)V

    return-void
.end method

.method public abstract a(Lcom/deepe/c/l/g/h;)V
.end method

.method public abstract a(Ljava/lang/Exception;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 0

    return-void
.end method

.method protected a(Ljavax/net/ssl/SSLParameters;)V
    .locals 1

    const-string v0, "HTTPS"

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLParameters;->setEndpointIdentificationAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/d;->a([B)V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(ILjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/deepe/c/l/b;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/deepe/c/l/b;ILjava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/deepe/c/l/a/b;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method protected f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/deepe/c/l/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    return-object v0
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->h:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-WebSocketConnectReadThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/deepe/c/l/a/b;->h:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->g:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/deepe/c/l/d;->a(I)V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0}, Lcom/deepe/c/l/d;->e()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0}, Lcom/deepe/c/l/d;->d()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->b()Z

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->g()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->h()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setReuseAddress(Z)V

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->n:Lcom/deepe/c/l/a/a;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->c()I

    move-result v3

    invoke-static {v2, v3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/deepe/c/l/a/b;->n:Lcom/deepe/c/l/a/a;

    iget-object v4, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-interface {v3, v4}, Lcom/deepe/c/l/a/a;->a(Ljava/net/URI;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->c()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :goto_0
    iget-object v3, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    iget v4, p0, Lcom/deepe/c/l/a/b;->m:I

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    :cond_1
    if-eqz v1, :cond_2

    const-string v1, "wss"

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->a:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->a()V

    :cond_2
    iget-object v1, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    instance-of v1, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/deepe/c/l/a/b;->a(Ljavax/net/ssl/SSLParameters;)V

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    :cond_3
    iget-object v1, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->c:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/deepe/c/l/a/b;->e:Ljava/io/OutputStream;

    invoke-direct {p0}, Lcom/deepe/c/l/a/b;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/deepe/c/l/a/b$a;

    invoke-direct {v3, p0, p0}, Lcom/deepe/c/l/a/b$a;-><init>(Lcom/deepe/c/l/a/b;Lcom/deepe/c/l/a/b;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/deepe/c/l/a/b;->g:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/16 v2, 0x4000

    new-array v2, v2, [B

    :goto_1
    :try_start_1
    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->m()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/deepe/c/l/a/b;->l()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v3, v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/deepe/c/l/d;->a(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v0}, Lcom/deepe/c/l/d;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lcom/deepe/c/l/a/b;->a(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    const/16 v2, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-direct {p0, v0}, Lcom/deepe/c/l/a/b;->a(Ljava/io/IOException;)V

    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/l/a/b;->h:Ljava/lang/Thread;

    return-void

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/InternalError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/l/a/b;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;)V

    return-void

    :cond_6
    throw v1

    :catch_3
    move-exception v1

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/l/a/b;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/deepe/c/l/a/b;->b:Lcom/deepe/c/l/d;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;)V

    return-void
.end method
