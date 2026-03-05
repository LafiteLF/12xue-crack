.class public Lcom/deepe/c/j/e/a/b;
.super Lcom/deepe/c/j/e/a/a;


# instance fields
.field private final d:Ljava/io/InputStream;

.field private final e:J

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/j/e/a/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/j/e/a/b;->f:Z

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/deepe/c/j/e/a/b;->d:Ljava/io/InputStream;

    iput-wide p2, p0, Lcom/deepe/c/j/e/a/b;->e:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Source input stream may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/e/a/b;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/deepe/c/j/e/a/b;->d:Ljava/io/InputStream;

    const/16 v1, 0x800

    new-array v1, v1, [B

    iget-wide v2, p0, Lcom/deepe/c/j/e/a/b;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-gez v6, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    :goto_1
    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x800

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    invoke-virtual {v0, v1, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v7, :cond_3

    :goto_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepe/c/j/e/a/b;->f:Z

    return-void

    :cond_3
    invoke-virtual {p1, v1, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v9, v6

    sub-long/2addr v2, v9

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Output stream may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/e/a/b;->f:Z

    iget-object v0, p0, Lcom/deepe/c/j/e/a/b;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/c/j/e/a/b;->e:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/e/a/b;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
