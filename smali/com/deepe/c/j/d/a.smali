.class public Lcom/deepe/c/j/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/i;


# static fields
.field private static c:I = 0xbb8

.field private static d:I = 0x1000


# instance fields
.field protected final a:Lcom/deepe/c/j/d/f;

.field protected final b:Lcom/deepe/c/j/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/d/f;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/j/d/b;

    sget v1, Lcom/deepe/c/j/d/a;->d:I

    invoke-direct {v0, v1}, Lcom/deepe/c/j/d/b;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/j/d/a;-><init>(Lcom/deepe/c/j/d/f;Lcom/deepe/c/j/d/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/d/f;Lcom/deepe/c/j/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/j/d/a;->a:Lcom/deepe/c/j/d/f;

    iput-object p2, p0, Lcom/deepe/c/j/d/a;->b:Lcom/deepe/c/j/d/b;

    return-void
.end method

.method private a(JLcom/deepe/c/j/l;[BLcom/deepe/c/j/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/deepe/c/j/l<",
            "*>;[B",
            "Lcom/deepe/c/j/e/g;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/j/r;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/r;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getRetryPolicy()Lcom/deepe/c/j/q;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getTimeoutMs()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, p2}, Lcom/deepe/c/j/q;->a(Lcom/deepe/c/j/r;)V
    :try_end_0
    .catch Lcom/deepe/c/j/r; {:try_start_0 .. :try_end_0} :catch_0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p0, p2, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p2, v2

    const-string p0, "%s-retry [timeout=%s]"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v2

    const-string p0, "%s-timeout-giveup [timeout=%s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    throw p2
.end method

.method private a(Ljava/util/Map;Lcom/deepe/c/j/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/deepe/c/j/a$a;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/deepe/c/j/a$a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/deepe/c/j/a$a;->b:Ljava/lang/String;

    const-string v1, "If-None-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v0, p2, Lcom/deepe/c/j/a$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/deepe/c/j/a$a;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/deepe/c/j/g;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "If-Modified-Since"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private a(Lcom/deepe/c/j/e/a/a;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/g;
        }
    .end annotation

    const-string v0, "Error occured when calling consumingContent"

    new-instance v1, Lcom/deepe/c/j/d/i;

    iget-object v2, p0, Lcom/deepe/c/j/d/a;->b:Lcom/deepe/c/j/d/b;

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/deepe/c/j/d/i;-><init>(Lcom/deepe/c/j/d/b;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->a()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "gzip"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    :cond_0
    iget-object v5, p0, Lcom/deepe/c/j/d/a;->b:Lcom/deepe/c/j/d/b;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/deepe/c/j/d/b;->a(I)[B

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v1}, Lcom/deepe/c/j/d/i;->toByteArray()[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object p1, p0, Lcom/deepe/c/j/d/a;->b:Lcom/deepe/c/j/d/b;

    invoke-virtual {p1, v3}, Lcom/deepe/c/j/d/b;->a([B)V

    invoke-virtual {v1}, Lcom/deepe/c/j/d/i;->close()V

    return-object v4

    :cond_1
    :try_start_2
    invoke-virtual {v1, v3, v2, v5}, Lcom/deepe/c/j/d/i;->write([BII)V

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/deepe/c/j/a/g;

    invoke-direct {v4}, Lcom/deepe/c/j/a/g;-><init>()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object p1, p0, Lcom/deepe/c/j/d/a;->b:Lcom/deepe/c/j/d/b;

    invoke-virtual {p1, v3}, Lcom/deepe/c/j/d/b;->a([B)V

    invoke-virtual {v1}, Lcom/deepe/c/j/d/i;->close()V

    throw v4
.end method


# virtual methods
.method public a(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/k;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)",
            "Lcom/deepe/c/j/k;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/r;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/16 v5, 0x12e

    const/16 v4, 0x12d

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getCacheEntry()Lcom/deepe/c/j/a$a;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/deepe/c/j/d/a;->a(Ljava/util/Map;Lcom/deepe/c/j/a$a;)V

    iget-object v1, v7, Lcom/deepe/c/j/d/a;->a:Lcom/deepe/c/j/d/f;

    invoke-interface {v1, v8, v0}, Lcom/deepe/c/j/d/f;->a(Lcom/deepe/c/j/l;Ljava/util/Map;)Lcom/deepe/c/j/e/g;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    invoke-virtual {v1}, Lcom/deepe/c/j/e/g;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/deepe/c/j/e/g;->c()I

    move-result v12
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v0, 0x130

    if-ne v12, v0, :cond_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getCacheEntry()Lcom/deepe/c/j/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/j/k;

    const/16 v12, 0x130

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v9

    move-object v11, v0

    move-object v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :cond_0
    iget-object v11, v0, Lcom/deepe/c/j/a$a;->g:Ljava/util/Map;

    invoke-interface {v11, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    new-instance v11, Lcom/deepe/c/j/k;

    const/16 v13, 0x130

    iget-object v14, v0, Lcom/deepe/c/j/a$a;->a:[B

    iget-object v15, v0, Lcom/deepe/c/j/a$a;->g:Ljava/util/Map;

    const/16 v16, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v17, v17, v9

    move-object v12, v11

    invoke-direct/range {v12 .. v18}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v11

    :catch_0
    move-exception v0

    move-object/from16 v19, v1

    move-object v13, v2

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v21, v6

    move-object v4, v13

    move v2, v5

    goto/16 :goto_3

    :cond_1
    if-eq v12, v4, :cond_2

    if-ne v12, v5, :cond_3

    :cond_2
    :try_start_3
    const-string v0, "Location"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/deepe/c/j/l;->setRedirectUrl(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/deepe/c/j/e/g;->b()Lcom/deepe/c/j/e/a/a;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v8, v1}, Lcom/deepe/c/j/l;->handleResponse(Lcom/deepe/c/j/e/g;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/deepe/c/j/e/g;->b()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/deepe/c/j/d/a;->a(Lcom/deepe/c/j/e/a/a;)[B

    move-result-object v0

    goto :goto_1

    :cond_4
    new-array v0, v3, [B
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_5
    :try_start_5
    new-array v0, v3, [B
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_1
    move-object/from16 v18, v0

    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    sub-long/2addr v13, v9

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move-object v15, v2

    move/from16 v20, v3

    move-wide v2, v13

    move v14, v4

    move-object/from16 v4, p1

    move v13, v5

    move-object/from16 v5, v18

    move-object/from16 v21, v6

    move-object/from16 v6, v19

    :try_start_7
    invoke-direct/range {v1 .. v6}, Lcom/deepe/c/j/d/a;->a(JLcom/deepe/c/j/l;[BLcom/deepe/c/j/e/g;)V

    const/16 v0, 0xc8

    if-lt v12, v0, :cond_6

    const/16 v0, 0x12b

    if-gt v12, v0, :cond_6

    new-instance v0, Lcom/deepe/c/j/k;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    sub-long v16, v2, v9

    move-object v11, v0

    move v2, v13

    move-object/from16 v13, v18

    move v3, v14

    move-object/from16 v14, v21

    move-object v4, v15

    move v15, v1

    :try_start_8
    invoke-direct/range {v11 .. v17}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-object v0

    :cond_6
    move v2, v13

    move v3, v14

    move-object v4, v15

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v13

    move v3, v14

    move-object v4, v15

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v21, v6

    move-object v4, v2

    move v2, v5

    :goto_2
    move-object/from16 v13, v18

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v21, v6

    move-object v4, v2

    move v2, v5

    move-object v13, v4

    goto :goto_3

    :catch_5
    move-exception v0

    move/from16 v20, v3

    move v3, v4

    move-object/from16 v21, v6

    move-object v4, v2

    move v2, v5

    move-object v13, v4

    move-object/from16 v19, v13

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "IOE: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Lcom/deepe/c/j/e/g;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4

    :cond_7
    const-string v5, "null"

    :goto_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;)V

    instance-of v1, v0, Ljavax/net/ssl/SSLException;

    if-nez v1, :cond_10

    if-eqz v19, :cond_f

    invoke-virtual/range {v19 .. v19}, Lcom/deepe/c/j/e/g;->c()I

    move-result v0

    const/4 v1, 0x1

    const/4 v5, 0x2

    if-eq v0, v3, :cond_9

    if-ne v0, v2, :cond_8

    goto :goto_5

    :cond_8
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v20

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "Unexpected response code %d for %s"

    invoke-static {v1, v5}, Lcom/deepe/c/j/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    :goto_5
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getOriginUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v20

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v1, "Request at %s has been redirected to %s"

    invoke-static {v1, v5}, Lcom/deepe/c/j/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-eqz v13, :cond_e

    new-instance v1, Lcom/deepe/c/j/k;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v16, v4, v9

    move-object v11, v1

    move v12, v0

    move-object/from16 v14, v21

    invoke-direct/range {v11 .. v17}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    const/16 v4, 0x191

    if-eq v0, v4, :cond_d

    const/16 v4, 0x193

    if-ne v0, v4, :cond_a

    goto :goto_8

    :cond_a
    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_b

    goto :goto_7

    :cond_b
    new-instance v0, Lcom/deepe/c/j/a/g;

    invoke-direct {v0, v1}, Lcom/deepe/c/j/a/g;-><init>(Lcom/deepe/c/j/k;)V

    throw v0

    :cond_c
    :goto_7
    new-instance v0, Lcom/deepe/c/j/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/j/a/a;-><init>(Lcom/deepe/c/j/k;)V

    const-string v1, "redirect"

    goto :goto_9

    :cond_d
    :goto_8
    new-instance v0, Lcom/deepe/c/j/a/a;

    invoke-direct {v0, v1}, Lcom/deepe/c/j/a/a;-><init>(Lcom/deepe/c/j/k;)V

    const-string v1, "auth"

    goto :goto_9

    :cond_e
    new-instance v0, Lcom/deepe/c/j/a/c;

    invoke-direct {v0, v4}, Lcom/deepe/c/j/a/c;-><init>(Lcom/deepe/c/j/k;)V

    throw v0

    :cond_f
    new-instance v1, Lcom/deepe/c/j/a/d;

    invoke-direct {v1, v0}, Lcom/deepe/c/j/a/d;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Lcom/deepe/c/j/a/f;

    const-string v1, "SSL Handshake error."

    invoke-direct {v0, v1}, Lcom/deepe/c/j/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad URL "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/deepe/c/j/l;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/j/a/h;

    invoke-direct {v0}, Lcom/deepe/c/j/a/h;-><init>()V

    const-string v1, "socket"

    :goto_9
    invoke-static {v1, v8, v0}, Lcom/deepe/c/j/d/a;->a(Ljava/lang/String;Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V

    goto/16 :goto_0
.end method
