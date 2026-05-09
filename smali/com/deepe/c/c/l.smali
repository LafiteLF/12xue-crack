.class Lcom/deepe/c/c/l;
.super Lcom/deepe/c/j/e/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/j/e/d<",
        "Lcom/deepe/c/j/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/deepe/c/j/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/j/o$b<",
            "Lcom/deepe/c/c/l$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private final c:Ljava/io/File;

.field private d:Ljava/lang/String;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepe/c/c/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/deepe/c/j/o$b;Lcom/deepe/c/j/o$a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/deepe/c/j/o$b<",
            "Lcom/deepe/c/c/l$a;",
            ">;",
            "Lcom/deepe/c/j/o$a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/deepe/c/j/e/d;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepe/c/c/l;->c:Ljava/io/File;

    iput-object p2, p0, Lcom/deepe/c/c/l;->a:Lcom/deepe/c/j/o$b;

    return-void
.end method

.method private a(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/16 p1, 0xc00

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/16 p1, 0x1400

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x7d000

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    const/16 p1, 0x2000

    goto :goto_0

    :cond_2
    const/16 p1, 0x800

    :goto_0
    return p1
.end method

.method private a(Lcom/deepe/c/j/e/a/a;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->a()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->f()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    move-wide v1, v3

    :cond_0
    add-long/2addr v1, p2

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->d()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "gzip"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/zip/GZIPInputStream;

    const/16 p3, 0x1000

    invoke-direct {p2, v0, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, p2

    :cond_1
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/deepe/c/c/l;->d:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {p3, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/deepe/c/c/l;->a(J)I

    move-result v3

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/l;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    :goto_1
    invoke-static {p3}, Lcom/deepe/c/c/l;->ensuresSync(Ljava/io/OutputStream;)Z

    invoke-static {p3}, Lcom/deepe/c/c/l;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/deepe/c/c/l;->a(JLjava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-wide v1

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p3, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    :try_start_3
    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw p2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "HTTP entity too large to be buffered in memory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "HTTP entity is empty"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(JLjava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/l;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/c/l;->c:Ljava/io/File;

    invoke-virtual {p3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    iput-wide p1, p0, Lcom/deepe/c/c/l;->e:J

    iput-object p4, p0, Lcom/deepe/c/c/l;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/deepe/c/c/l$a;
    .locals 3

    new-instance v0, Lcom/deepe/c/c/l$a;

    invoke-direct {v0}, Lcom/deepe/c/c/l$a;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/l;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/c/c/l$a;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/deepe/c/c/l;->e:J

    iput-wide v1, v0, Lcom/deepe/c/c/l$a;->c:J

    iget-object v1, p0, Lcom/deepe/c/c/l;->c:Ljava/io/File;

    iput-object v1, v0, Lcom/deepe/c/c/l$a;->b:Ljava/io/File;

    return-object v0
.end method

.method protected a(Lcom/deepe/c/j/k;)V
    .locals 2

    const-string v0, "deliverResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/l;->a:Lcom/deepe/c/j/o$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/c/l;->a()Lcom/deepe/c/c/l$a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/deepe/c/j/o$b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepe/c/c/l;->performResponse(Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/deepe/c/j/k;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/l;->a(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method public getPriority()Lcom/deepe/c/j/l$a;
    .locals 1

    sget-object v0, Lcom/deepe/c/j/l$a;->b:Lcom/deepe/c/j/l$a;

    return-object v0
.end method

.method public handleResponse(Lcom/deepe/c/j/e/g;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/g;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->c()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_3

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/j/e/g;->b()Lcom/deepe/c/j/e/a/a;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/c/l;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->b()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/deepe/c/j/e/a/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, v0, p1}, Lcom/deepe/c/c/l;->a(JLjava/io/File;Ljava/lang/String;)V

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/deepe/c/c/l;->e:J

    invoke-direct {p0, p1, v2, v3}, Lcom/deepe/c/c/l;->a(Lcom/deepe/c/j/e/a/a;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    return v1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "local file IO error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return v1
.end method

.method public onCreated()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/l;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".tmp"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/c/l;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/deepe/c/c/l;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/c/c/l;->e:J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/deepe/c/c/l;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p0, v1, v0}, Lcom/deepe/c/c/l;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/c/l;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/j/k;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/c/l;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/deepe/c/c/l;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    new-instance p1, Lcom/deepe/c/j/a/b;

    invoke-direct {p1}, Lcom/deepe/c/j/a/b;-><init>()V

    invoke-static {p1}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
