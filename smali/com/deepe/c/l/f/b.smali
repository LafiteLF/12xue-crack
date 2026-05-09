.class public Lcom/deepe/c/l/f/b;
.super Lcom/deepe/c/l/f/d;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    invoke-direct {p0, v0}, Lcom/deepe/c/l/f/d;-><init>(Lcom/deepe/c/l/c/c;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/deepe/c/l/f/b;->a(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/deepe/c/l/f/b;->a(I)V

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {p1}, Lcom/deepe/c/l/i/c;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v0, Lcom/deepe/c/l/d/c;

    const/16 v1, 0x3ef

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/c;-><init>(I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/l/i/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/deepe/c/l/f/b;->a:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length v3, v0

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-super {p0, v2}, Lcom/deepe/c/l/f/d;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    return v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_0

    const/16 p1, 0x3ed

    iput p1, p0, Lcom/deepe/c/l/f/b;->a:I

    const-string p1, ""

    iput-object p1, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/l/f/b;->k()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/deepe/c/l/f/b;->k()V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    const/16 v0, 0x3ed

    iput v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x3e8

    :goto_0
    iput p1, p0, Lcom/deepe/c/l/f/b;->a:I

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/16 p1, 0x3ea

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/deepe/c/l/f/b;->a:I

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/l/f/b;->a(Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catch Lcom/deepe/c/l/d/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/16 p1, 0x3ef

    iput p1, p0, Lcom/deepe/c/l/f/b;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    invoke-super {p0}, Lcom/deepe/c/l/f/d;->c()V

    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepe/c/l/d/c;

    const-string v2, "Received text is no valid utf8 string!"

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v1, 0x3ea

    const/16 v2, 0x3ed

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/deepe/c/l/d/c;

    const-string v2, "A close frame must have a closecode if it has a reason"

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v3, 0x3f7

    if-le v0, v3, :cond_5

    const/16 v4, 0xbb8

    if-lt v0, v4, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/deepe/c/l/d/c;

    const-string v2, "Trying to send an illegal close code!"

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    const/16 v1, 0x1387

    if-gt v0, v1, :cond_6

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    new-instance v0, Lcom/deepe/c/l/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "closecode must not be sent over the wire: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/deepe/c/l/f/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/nio/ByteBuffer;
    .locals 2

    iget v0, p0, Lcom/deepe/c/l/f/b;->a:I

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/deepe/c/l/i/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/deepe/c/l/f/d;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/l/f/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/deepe/c/l/f/b;

    iget v2, p0, Lcom/deepe/c/l/f/b;->a:I

    iget v3, p1, Lcom/deepe/c/l/f/b;->a:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lcom/deepe/c/l/f/d;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/deepe/c/l/f/b;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepe/c/l/f/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/deepe/c/l/f/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/c/l/f/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
