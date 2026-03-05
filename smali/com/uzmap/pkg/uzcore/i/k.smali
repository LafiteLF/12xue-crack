.class public Lcom/uzmap/pkg/uzcore/i/k;
.super Ljava/lang/Object;


# direct methods
.method static final a()Landroid/webkit/WebResourceResponse;
    .locals 3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/l;->c()[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/uzmap/pkg/uzcore/i/a/a;

    const-string v2, "web-vitals.js"

    invoke-direct {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/i/a/a;-><init>([BLjava/lang/String;)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/c;

    const-string v2, "text/javascript"

    invoke-direct {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/i/a/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/uzmap/pkg/uzcore/al;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzcore/al;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    const-class v0, Lcom/uzmap/pkg/uzcore/i/k;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/al;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/i/k;->a()Landroid/webkit/WebResourceResponse;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/al;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/deepe/c/i/h;->a()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    :try_start_2
    const-string p1, "image/png"

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/uzmap/pkg/uzcore/i/a/c;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/al;->s()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-object v2

    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/al;->v()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/al;->w()Z

    move-result p0

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/i/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz p0, :cond_6

    invoke-static {v1, v3}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p0, :cond_6

    move-object v1, p0

    :cond_6
    :try_start_5
    invoke-static {v1}, Lcom/deepe/c/i/h;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object p0, v2

    :goto_0
    if-nez p0, :cond_7

    monitor-exit v0

    return-object v2

    :cond_7
    :try_start_7
    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/i/k;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/c;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_8
    :goto_1
    const/16 p0, 0x193

    :try_start_8
    const-string p1, "Local Resource Only"

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/c;->a(ILjava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final a(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/a/d;->a(Z)Lcom/uzmap/pkg/uzcore/i/a/d$a;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a/d$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a/d$a;->c(Ljava/lang/String;)[B

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a/d$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string v0, "Accept"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "image/jpeg"

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-lt v1, v2, :cond_2

    return-object v0

    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    const-string v0, "X-Powered-By"

    const-string v1, "ClientAPIService"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static final b(Ljava/lang/String;ZZ)[B
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/a/d;->a(Z)Lcom/uzmap/pkg/uzcore/i/a/d$a;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a/d$a;->a(Ljava/lang/String;)[B

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    invoke-interface {p1, p0}, Lcom/uzmap/pkg/uzcore/i/a/d$a;->c(Ljava/lang/String;)[B

    move-result-object p2

    :cond_1
    return-object p2
.end method
