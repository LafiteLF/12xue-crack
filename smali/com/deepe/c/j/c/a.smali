.class final Lcom/deepe/c/j/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:[C


# direct methods
.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/deepe/c/j/c/a;->b:I

    return-void
.end method

.method private a(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    const-string v2, "Malformed DN: "

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v3, 0x66

    const/16 v4, 0x41

    const/16 v5, 0x39

    const/16 v6, 0x61

    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    if-gt p1, v5, :cond_0

    add-int/lit8 p1, p1, -0x30

    goto :goto_0

    :cond_0
    if-lt p1, v6, :cond_1

    if-gt p1, v3, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_5

    if-gt p1, v1, :cond_5

    add-int/lit8 p1, p1, -0x37

    :goto_0
    iget-object v8, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v0, v8, v0

    if-lt v0, v7, :cond_2

    if-gt v0, v5, :cond_2

    add-int/lit8 v0, v0, -0x30

    goto :goto_1

    :cond_2
    if-lt v0, v6, :cond_3

    if-gt v0, v3, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_1

    :cond_3
    if-lt v0, v4, :cond_4

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    :goto_1
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()Ljava/lang/String;
    .locals 6

    :goto_0
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    :cond_3
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v4, v1, v0

    if-eq v4, v3, :cond_4

    aget-char v1, v1, v0

    if-ne v1, v2, :cond_3

    :cond_4
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    const-string v4, "Unexpected end of DN: "

    if-ge v0, v1, :cond_f

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v0, v1, v0

    if-ne v0, v2, :cond_8

    :goto_2
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v5, v1, v0

    if-eq v5, v3, :cond_6

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v1, p0, Lcom/deepe/c/j/c/a;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_7

    iget v0, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v1, v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    :goto_5
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v1, v1, v0

    if-eq v1, v2, :cond_9

    goto :goto_6

    :cond_9
    goto :goto_5

    :cond_a
    :goto_6
    iget v0, p0, Lcom/deepe/c/j/c/a;->e:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x4

    if-le v0, v2, :cond_e

    iget-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    add-int/lit8 v3, v1, 0x3

    aget-char v3, v0, v3

    const/16 v4, 0x2e

    if-ne v3, v4, :cond_e

    aget-char v3, v0, v1

    const/16 v4, 0x4f

    if-eq v3, v4, :cond_b

    aget-char v0, v0, v1

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_e

    :cond_b
    iget-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v1, p0, Lcom/deepe/c/j/c/a;->d:I

    add-int/lit8 v3, v1, 0x1

    aget-char v3, v0, v3

    const/16 v4, 0x49

    if-eq v3, v4, :cond_c

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x69

    if-ne v0, v1, :cond_e

    :cond_c
    iget-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v1, p0, Lcom/deepe/c/j/c/a;->d:I

    add-int/lit8 v3, v1, 0x2

    aget-char v3, v0, v3

    const/16 v4, 0x44

    if-eq v3, v4, :cond_d

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x64

    if-ne v0, v1, :cond_e

    :cond_d
    iget v0, p0, Lcom/deepe/c/j/c/a;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    :cond_e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v2, p0, Lcom/deepe/c/j/c/a;->d:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    :goto_0
    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v1, v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_1

    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v2, p0, Lcom/deepe/c/j/c/a;->d:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_2
    aget-char v2, v1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    iget v0, p0, Lcom/deepe/c/j/c/a;->e:I

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->e()C

    move-result v2

    aput-char v2, v1, v0

    goto :goto_3

    :cond_3
    iget v2, p0, Lcom/deepe/c/j/c/a;->e:I

    aget-char v0, v1, v0

    aput-char v0, v1, v2

    :goto_3
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/deepe/c/j/c/a;->b:I

    const-string v3, "Unexpected end of DN: "

    if-ge v1, v2, :cond_8

    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v1, v0

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_4

    aget-char v2, v1, v0

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_4

    aget-char v2, v1, v0

    const/16 v4, 0x3b

    if-ne v2, v4, :cond_0

    goto :goto_2

    :cond_0
    aget-char v2, v1, v0

    const/16 v4, 0x20

    if-ne v2, v4, :cond_2

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v1, v1, v0

    if-eq v1, v4, :cond_1

    goto :goto_3

    :cond_1
    goto :goto_1

    :cond_2
    aget-char v2, v1, v0

    const/16 v5, 0x41

    if-lt v2, v5, :cond_3

    aget-char v2, v1, v0

    const/16 v5, 0x46

    if-gt v2, v5, :cond_3

    aget-char v2, v1, v0

    add-int/2addr v2, v4

    int-to-char v2, v2

    aput-char v2, v1, v0

    :cond_3
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    goto :goto_0

    :cond_4
    :goto_2
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    :cond_5
    :goto_3
    iget v0, p0, Lcom/deepe/c/j/c/a;->e:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->d:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_7

    div-int/lit8 v2, v0, 0x2

    new-array v4, v2, [B

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    :goto_4
    if-lt v3, v2, :cond_6

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v3, p0, Lcom/deepe/c/j/c/a;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_6
    invoke-direct {p0, v1}, Lcom/deepe/c/j/c/a;->a(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v2, p0, Lcom/deepe/c/j/c/a;->d:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    const/16 v4, 0x2b

    const/16 v5, 0x3b

    const/16 v6, 0x20

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/deepe/c/j/c/a;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/deepe/c/j/c/a;->e:I

    aget-char v3, v1, v0

    aput-char v3, v1, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/deepe/c/j/c/a;->e:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/deepe/c/j/c/a;->e:I

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->e()C

    move-result v2

    aput-char v2, v1, v0

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v2, p0, Lcom/deepe/c/j/c/a;->d:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->e:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_4
    iget v2, p0, Lcom/deepe/c/j/c/a;->e:I

    iput v2, p0, Lcom/deepe/c/j/c/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    aput-char v6, v1, v2

    :goto_2
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v1, v0

    if-eq v2, v6, :cond_5

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/deepe/c/j/c/a;->e:I

    add-int/lit8 v7, v2, 0x1

    iput v7, p0, Lcom/deepe/c/j/c/a;->e:I

    aput-char v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    goto :goto_2

    :cond_6
    :goto_3
    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v0, v1, :cond_7

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v1, v0

    if-eq v2, v3, :cond_7

    aget-char v2, v1, v0

    if-eq v2, v4, :cond_7

    aget-char v0, v1, v0

    if-ne v0, v5, :cond_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v2, p0, Lcom/deepe/c/j/c/a;->d:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->f:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private e()C
    .locals 3

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v1, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v0, v1, v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->f()C

    move-result v0

    return v0

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    iget v1, p0, Lcom/deepe/c/j/c/a;->c:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f()C
    .locals 9

    iget v0, p0, Lcom/deepe/c/j/c/a;->c:I

    invoke-direct {p0, v0}, Lcom/deepe/c/j/c/a;->a(I)I

    move-result v0

    iget v1, p0, Lcom/deepe/c/j/c/a;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/deepe/c/j/c/a;->c:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_6

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_6

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_1

    and-int/lit8 v0, v0, 0x1f

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-lt v5, v3, :cond_3

    int-to-char v0, v0

    return v0

    :cond_3
    iget v6, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v7, p0, Lcom/deepe/c/j/c/a;->b:I

    if-eq v6, v7, :cond_6

    iget-object v7, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v7, v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/deepe/c/j/c/a;->c:I

    invoke-direct {p0, v6}, Lcom/deepe/c/j/c/a;->a(I)I

    move-result v6

    iget v7, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Lcom/deepe/c/j/c/a;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_5

    return v4

    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v4
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/j/c/a;->c:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->d:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->e:I

    iput v0, p0, Lcom/deepe/c/j/c/a;->f:I

    iget-object v0, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/j/c/a;->g:[C

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v3, p0, Lcom/deepe/c/j/c/a;->b:I

    if-lt v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v2, v3, v2

    const/16 v3, 0x22

    const/16 v4, 0x3b

    const/16 v5, 0x2c

    const/16 v6, 0x2b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x23

    if-eq v2, v3, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->b()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v1, p0, Lcom/deepe/c/j/c/a;->c:I

    iget v2, p0, Lcom/deepe/c/j/c/a;->b:I

    if-lt v1, v2, :cond_7

    :goto_2
    return-object v0

    :cond_7
    iget-object v2, p0, Lcom/deepe/c/j/c/a;->g:[C

    aget-char v3, v2, v1

    const-string v7, "Malformed DN: "

    if-eq v3, v5, :cond_9

    aget-char v3, v2, v1

    if-eq v3, v4, :cond_9

    aget-char v1, v2, v1

    if-ne v1, v6, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    iget v1, p0, Lcom/deepe/c/j/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/deepe/c/j/c/a;->c:I

    invoke-direct {p0}, Lcom/deepe/c/j/c/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    goto :goto_0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/c/j/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
