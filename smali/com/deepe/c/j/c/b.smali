.class public Lcom/deepe/c/j/c/b;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/j/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z = false

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/deepe/c/j/c/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    const-class v0, Lcom/deepe/c/j/c/b;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/j/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/h;->a(Ljava/lang/String;)Lcom/uzmap/pkg/b/a/h$b;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/b/a/h$b;->a:Ljava/security/KeyStore;

    iget-object p0, p0, Lcom/uzmap/pkg/b/a/h$b;->b:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/deepe/c/j/c/b;->a(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/deepe/c/j/c/b;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "file:///android_asset/uzmap/https.p12"

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/e;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/deepe/c/j/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    :try_start_2
    invoke-static {p0, p0}, Lcom/deepe/c/j/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    const-class v0, Lcom/deepe/c/j/c/b;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v2, "none"

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    sget-object v3, Lcom/deepe/c/j/c/b;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v0

    return-object v3

    :cond_2
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    :try_start_1
    invoke-static {p0, p1}, Lcom/deepe/c/j/c/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    new-instance v1, Lcom/deepe/c/j/c/c;

    invoke-direct {v1, p0, p1}, Lcom/deepe/c/j/c/c;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/deepe/c/j/c/c;

    invoke-direct {v1, v3, v3}, Lcom/deepe/c/j/c/c;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    :goto_2
    sget-object p0, Lcom/deepe/c/j/c/b;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/security/KeyStore;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const-class v0, Lcom/deepe/c/j/c/b;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/j/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepe/c/j/c/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/j/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lcom/deepe/c/j/c/c;

    invoke-direct {v2, p0, p1}, Lcom/deepe/c/j/c/c;-><init>(Ljava/security/KeyStore;Ljava/lang/String;)V

    sget-object p0, Lcom/deepe/c/j/c/b;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()Z
    .locals 3

    const-class v0, Lcom/deepe/c/j/c/b;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/deepe/c/j/c/b;->c:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/deepe/c/j/c/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    const-string v1, "file:///android_asset/uzmap/https.p12"

    invoke-static {v1}, Lcom/deepe/c/i/h;->k(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/deepe/c/j/c/b;->b:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/deepe/c/j/c/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/deepe/c/j/c/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "pkcs12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {p0}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    invoke-virtual {v1, v3, p0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
