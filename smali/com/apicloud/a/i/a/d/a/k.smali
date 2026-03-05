.class public Lcom/apicloud/a/i/a/d/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/apicloud/a/i/a/d/a/k;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    iput p2, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    return v0
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/k;)I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    mul-int/2addr v0, v1

    iget v1, p1, Lcom/apicloud/a/i/a/d/a/k;->a:I

    iget p1, p1, Lcom/apicloud/a/i/a/d/a/k;->b:I

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/k;->a(Lcom/apicloud/a/i/a/d/a/k;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/apicloud/a/i/a/d/a/k;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/apicloud/a/i/a/d/a/k;

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    iget v3, p1, Lcom/apicloud/a/i/a/d/a/k;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    iget p1, p1, Lcom/apicloud/a/i/a/d/a/k;->b:I

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/k;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/d/a/k;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
