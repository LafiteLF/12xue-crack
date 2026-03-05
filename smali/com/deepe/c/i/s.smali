.class public final Lcom/deepe/c/i/s;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer capacity may not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/deepe/c/i/s;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/deepe/c/i/s;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/deepe/c/i/s;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/i/s;->b:I

    aput-object p1, v1, v2

    iput v0, p0, Lcom/deepe/c/i/s;->b:I

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/deepe/c/i/s;->b:I

    new-array v1, v0, [Ljava/lang/String;

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/i/s;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/deepe/c/i/s;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/i/s;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/i/s;->b()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/deepe/c/i/s;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_2

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
