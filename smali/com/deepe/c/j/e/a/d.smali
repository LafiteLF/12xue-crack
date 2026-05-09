.class public abstract Lcom/deepe/c/j/e/a/d;
.super Ljava/lang/Object;


# static fields
.field protected static final a:[B

.field protected static final b:[B

.field protected static final c:[B

.field protected static final d:[B

.field protected static final e:[B

.field protected static final f:[B

.field protected static final g:[B

.field protected static final h:[B

.field private static final i:[B


# instance fields
.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "------314159265358979323846"

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->a:[B

    sput-object v0, Lcom/deepe/c/j/e/a/d;->i:[B

    const-string v0, "\r\n"

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->b:[B

    const-string v0, "\""

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->c:[B

    const-string v0, "--"

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->d:[B

    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->e:[B

    const-string v0, "Content-Type: "

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->f:[B

    const-string v0, "; charset="

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->g:[B

    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/deepe/c/j/e/a/d;->h:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;[B)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/j/e/a/d;",
            ">;[B)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object p0, Lcom/deepe/c/j/e/a/d;->d:[B

    array-length v0, p0

    int-to-long v0, v0

    add-long/2addr v2, v0

    array-length p1, p1

    int-to-long v0, p1

    add-long/2addr v2, v0

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v2, p0

    sget-object p0, Lcom/deepe/c/j/e/a/d;->b:[B

    array-length p0, p0

    int-to-long p0, p0

    add-long/2addr v2, p0

    return-wide v2

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/j/e/a/d;

    invoke-virtual {v4, p1}, Lcom/deepe/c/j/e/a/d;->a([B)V

    invoke-virtual {v4}, Lcom/deepe/c/j/e/a/d;->h()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_1
    add-long/2addr v2, v4

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/io/OutputStream;Ljava/util/List;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Lcom/deepe/c/j/e/a/d;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/deepe/c/j/e/a/d;->d:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    sget-object p1, Lcom/deepe/c/j/e/a/d;->d:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    sget-object p1, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/j/e/a/d;

    invoke-virtual {v0, p2}, Lcom/deepe/c/j/e/a/d;->a([B)V

    invoke-virtual {v0, p0}, Lcom/deepe/c/j/e/a/d;->h(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "partBoundary may not be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parts may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/j/e/a/d;->d:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->e()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method a([B)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/a/d;->j:[B

    return-void
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/j/e/a/d;->e:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/deepe/c/j/e/a/d;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/deepe/c/j/e/a/d;->c:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method protected c(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/deepe/c/j/e/a/d;->f:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepe/c/j/e/a/d;->g:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method protected d(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    sget-object v1, Lcom/deepe/c/j/e/a/d;->h:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v0}, Lcom/deepe/c/j/g;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    return-void
.end method

.method protected e(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected e()[B
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/a/d;->j:[B

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepe/c/j/e/a/d;->i:[B

    :cond_0
    return-object v0
.end method

.method protected abstract f(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract g()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected g(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/j/e/a/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public h()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->b(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->c(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->d(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->e(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/a/d;->g(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public h(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->b(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->c(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->d(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->e(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->f(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/a/d;->g(Ljava/io/OutputStream;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
