.class public abstract Lcom/deepe/c/l/b/a;
.super Ljava/lang/Object;


# instance fields
.field protected b:Lcom/deepe/c/l/c/e;

.field protected c:Lcom/deepe/c/l/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/l/b/a;->b:Lcom/deepe/c/l/c/e;

    iput-object v0, p0, Lcom/deepe/c/l/b/a;->c:Lcom/deepe/c/l/c/c;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/deepe/c/l/c/e;)Lcom/deepe/c/l/g/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/c/l/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    const-string v2, " "

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v1, :cond_6

    sget-object v1, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    if-ne p1, v1, :cond_0

    invoke-static {v2, v0}, Lcom/deepe/c/l/b/a;->b([Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/l/g/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v2, v0}, Lcom/deepe/c/l/b/a;->a([Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/l/g/c;

    move-result-object p1

    :goto_0
    invoke-static {p0}, Lcom/deepe/c/l/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const-string v2, ":"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-ne v2, v1, :cond_3

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Lcom/deepe/c/l/g/c;->c(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    const-string v4, "^ +"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    aget-object v2, v0, v1

    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v1, v0, v1

    invoke-interface {p1, v1}, Lcom/deepe/c/l/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/deepe/c/l/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    aget-object v1, v0, v1

    aget-object v0, v0, v5

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/deepe/c/l/d/e;

    const-string p1, "not an http header"

    invoke-direct {p0, p1}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    return-object p1

    :cond_5
    new-instance p0, Lcom/deepe/c/l/d/b;

    invoke-direct {p0}, Lcom/deepe/c/l/d/b;-><init>()V

    throw p0

    :cond_6
    new-instance p0, Lcom/deepe/c/l/d/e;

    invoke-direct {p0}, Lcom/deepe/c/l/d/e;-><init>()V

    throw p0

    :cond_7
    new-instance p1, Lcom/deepe/c/l/d/b;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/lit16 p0, p0, 0x80

    invoke-direct {p1, p0}, Lcom/deepe/c/l/d/b;-><init>(I)V

    throw p1
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/l/g/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, "GET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    aget-object v1, p0, v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/deepe/c/l/g/d;

    invoke-direct {p1}, Lcom/deepe/c/l/g/d;-><init>()V

    aget-object p0, p0, v2

    invoke-interface {p1, p0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/deepe/c/l/d/e;

    new-array v4, v3, [Ljava/lang/Object;

    aget-object p0, p0, v3

    aput-object p0, v4, v0

    aput-object p1, v4, v2

    const-string p0, "Invalid status line received: %s Status line: %s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/deepe/c/l/d/e;

    new-array v3, v3, [Ljava/lang/Object;

    aget-object p0, p0, v0

    aput-object p0, v3, v0

    aput-object p1, v3, v2

    const-string p0, "Invalid request method received: %s Status line: %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    const/16 v1, 0xa

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static b([Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/l/g/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    const/4 v0, 0x1

    aget-object v1, p0, v0

    const-string v2, "101"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p0, v3

    const-string v4, "HTTP/1.1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/deepe/c/l/g/e;

    invoke-direct {p1}, Lcom/deepe/c/l/g/e;-><init>()V

    move-object v1, p1

    check-cast v1, Lcom/deepe/c/l/g/i;

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-interface {v1, v0}, Lcom/deepe/c/l/g/i;->a(S)V

    aget-object p0, p0, v2

    invoke-interface {v1, p0}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/deepe/c/l/d/e;

    new-array v2, v2, [Ljava/lang/Object;

    aget-object p0, p0, v3

    aput-object p0, v2, v3

    aput-object p1, v2, v0

    const-string p0, "Invalid status line received: %s Status line: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Lcom/deepe/c/l/d/e;

    new-array v2, v2, [Ljava/lang/Object;

    aget-object p0, p0, v0

    aput-object p0, v2, v3

    aput-object p1, v2, v0

    const-string p0, "Invalid status code received: %s Status line: %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/l/b/a;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/deepe/c/l/i/c;->a([BII)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    if-ltz p1, :cond_0

    return p1

    :cond_0
    new-instance p1, Lcom/deepe/c/l/d/c;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public abstract a(Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation
.end method

.method public abstract a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/h;)Lcom/deepe/c/l/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation
.end method

.method public abstract a(Lcom/deepe/c/l/g/b;)Lcom/deepe/c/l/g/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation
.end method

.method public abstract a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/i;)Lcom/deepe/c/l/g/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation
.end method

.method public abstract a(Lcom/deepe/c/l/f/f;)Ljava/nio/ByteBuffer;
.end method

.method public a(Lcom/deepe/c/l/g/f;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/l/g/f;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    instance-of v1, p1, Lcom/deepe/c/l/g/a;

    if-eqz v1, :cond_0

    const-string v1, "GET "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/deepe/c/l/g/a;

    invoke-interface {v1}, Lcom/deepe/c/l/g/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/deepe/c/l/g/h;

    if-eqz v1, :cond_5

    const-string v1, "HTTP/1.1 101 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p1

    check-cast v1, Lcom/deepe/c/l/g/h;

    invoke-interface {v1}, Lcom/deepe/c/l/g/h;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/deepe/c/l/g/f;->b()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/l/i/c;->b(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/deepe/c/l/g/f;->c()[B

    move-result-object p1

    goto :goto_3

    :cond_1
    const/4 p1, 0x0

    :goto_3
    if-nez p1, :cond_2

    const/4 p2, 0x0

    goto :goto_4

    :cond_2
    array-length p2, p1

    :goto_4
    array-length v1, v0

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3}, Lcom/deepe/c/l/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown role"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public a(Lcom/deepe/c/l/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/l/b/a;->b:Lcom/deepe/c/l/c/e;

    return-void
.end method

.method public abstract a(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation
.end method

.method protected a(Lcom/deepe/c/l/g/f;)Z
    .locals 2

    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public abstract b()Lcom/deepe/c/l/c/a;
.end method

.method public b(Lcom/deepe/c/l/g/f;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/l/g/f;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/f;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method c(Lcom/deepe/c/l/g/f;)I
    .locals 2

    const-string v0, "Sec-WebSocket-Version"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public abstract c()Lcom/deepe/c/l/b/a;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation
.end method

.method public d(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/g/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/a;->b:Lcom/deepe/c/l/c/e;

    invoke-static {p1, v0}, Lcom/deepe/c/l/b/a;->a(Ljava/nio/ByteBuffer;Lcom/deepe/c/l/c/e;)Lcom/deepe/c/l/g/c;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
