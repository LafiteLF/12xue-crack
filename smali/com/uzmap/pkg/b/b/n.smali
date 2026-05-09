.class public Lcom/uzmap/pkg/b/b/n;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/n$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/uzmap/pkg/b/b/n$a;

.field private final c:Lcom/uzmap/pkg/b/b/e;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/b/b/e;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-DebugSyncThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/n;->c:Lcom/uzmap/pkg/b/b/e;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "param can not be null or empty!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/io/InputStream;JLjava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    move-wide p2, v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p4}, Lcom/uzmap/pkg/b/b/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p4, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-wide p2

    :cond_2
    :try_start_2
    invoke-virtual {p4, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/n;)Lcom/uzmap/pkg/b/b/n$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/n;->b:Lcom/uzmap/pkg/b/b/n$a;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->b:Lcom/uzmap/pkg/b/b/n$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->c:Lcom/uzmap/pkg/b/b/e;

    new-instance v1, Lcom/uzmap/pkg/b/b/n$3;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/b/b/n$3;-><init>(Lcom/uzmap/pkg/b/b/n;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->c:Lcom/uzmap/pkg/b/b/e;

    iget-wide v1, p0, Lcom/uzmap/pkg/b/b/n;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/b/b/e;->a(J)V

    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->b:Lcom/uzmap/pkg/b/b/n$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->c:Lcom/uzmap/pkg/b/b/e;

    new-instance v1, Lcom/uzmap/pkg/b/b/n$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/b/b/n$1;-><init>(Lcom/uzmap/pkg/b/b/n;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->b:Lcom/uzmap/pkg/b/b/n$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->c:Lcom/uzmap/pkg/b/b/e;

    new-instance v1, Lcom/uzmap/pkg/b/b/n$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/n$2;-><init>(Lcom/uzmap/pkg/b/b/n;Ljava/lang/String;II)V

    const-wide/16 p1, 0x10

    invoke-virtual {v0, v1, p1, p2}, Lcom/uzmap/pkg/b/b/e;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private b(Ljava/lang/String;)J
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :try_start_0
    new-instance v5, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/uzmap/pkg/b/b/n;->d:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v2, "GET"

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v2, 0x1388

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    aget-object v9, p1, v2

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/uzmap/pkg/b/b/n;->a(Ljava/io/InputStream;JLjava/lang/String;)J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " download: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", size: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", time: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v0

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->f(Ljava/lang/String;)V

    return-wide v3

    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v2, v5

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-wide v3

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/uzmap/pkg/b/b/n;->e:J

    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/b/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/n;->b:Lcom/uzmap/pkg/b/b/n$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/n;->d:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/n;->a:Ljava/util/List;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/n;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/b/n;->a(I)V

    :goto_1
    if-lt v1, v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/b/b/n;->a()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/b/b/n;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/b/b/n;->b(Ljava/lang/String;)J

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/uzmap/pkg/b/b/n;->a(Ljava/lang/String;II)V

    goto :goto_1
.end method
