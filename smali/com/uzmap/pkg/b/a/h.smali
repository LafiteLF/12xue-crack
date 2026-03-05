.class public final Lcom/uzmap/pkg/b/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/a/h$a;,
        Lcom/uzmap/pkg/b/a/h$b;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/b/a/h$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/b/a/h;->a:Ljava/util/Hashtable;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/h;->d(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "pkcs12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object p1, v0

    move-object v2, p1

    :goto_0
    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    new-instance p1, Lcom/uzmap/pkg/b/a/h$b;

    invoke-direct {p1, p2, v1, v0}, Lcom/uzmap/pkg/b/a/h$b;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Lcom/uzmap/pkg/b/a/h$b;)V

    invoke-static {p1, p0}, Lcom/uzmap/pkg/b/a/h$b;->a(Lcom/uzmap/pkg/b/a/h$b;Ljava/lang/String;)V

    sget-object p2, Lcom/uzmap/pkg/b/a/h;->a:Ljava/util/Hashtable;

    invoke-virtual {p2, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$a;
    .locals 6

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/h;->c(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/b/a/h$b;->a:Ljava/security/KeyStore;

    invoke-virtual {v1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/b/a/h$b;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/uzmap/pkg/b/a/h$b;->a:Ljava/security/KeyStore;

    invoke-virtual {v4, v3, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v4

    check-cast v4, Ljava/security/PrivateKey;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/uzmap/pkg/b/a/h$b;->a:Ljava/security/KeyStore;

    invoke-virtual {p0, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0

    array-length v1, p0

    new-array v2, v1, [Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_3

    new-instance p0, Lcom/uzmap/pkg/b/a/h$a;

    invoke-direct {p0, v4, v2, v0}, Lcom/uzmap/pkg/b/a/h$a;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;Lcom/uzmap/pkg/b/a/h$a;)V

    return-object p0

    :cond_3
    aget-object v5, p0, v3

    check-cast v5, Ljava/security/cert/X509Certificate;

    aput-object v5, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/b/a/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/uzmap/pkg/b/a/h$b;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;
    .locals 3

    sget-object v0, Lcom/uzmap/pkg/b/a/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/b/a/h$b;

    invoke-static {v1, p0}, Lcom/uzmap/pkg/b/a/h$b;->b(Lcom/uzmap/pkg/b/a/h$b;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method
