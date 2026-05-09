.class Lcom/deepe/c/c/a/a/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:F

.field final b:F

.field c:F

.field d:F

.field e:Z


# direct methods
.method constructor <init>(FFFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$b;->e:Z

    iput p1, p0, Lcom/deepe/c/c/a/a/j$b;->a:F

    iput p2, p0, Lcom/deepe/c/c/a/a/j$b;->b:F

    mul-float p1, p3, p3

    mul-float p2, p4, p4

    add-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    float-to-double v0, p3

    div-double/2addr v0, p1

    double-to-float p3, v0

    iput p3, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    float-to-double p3, p4

    div-double/2addr p3, p1

    double-to-float p1, p3

    iput p1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    :cond_0
    return-void
.end method


# virtual methods
.method a(FF)V
    .locals 4

    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->a:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->b:F

    sub-float/2addr p2, v0

    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    float-to-double v2, p1

    div-double/2addr v2, v0

    double-to-float p1, v2

    float-to-double v2, p2

    div-double/2addr v2, v0

    double-to-float p2, v2

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    neg-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/j$b;->e:Z

    neg-float p2, p2

    iput p2, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget p1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    add-float/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    return-void
.end method

.method a(Lcom/deepe/c/c/a/a/j$b;)V
    .locals 2

    iget v0, p1, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget v1, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/deepe/c/c/a/a/j$b;->d:F

    iget v1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    neg-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepe/c/c/a/a/j$b;->e:Z

    neg-float v0, v0

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget p1, p1, Lcom/deepe/c/c/a/a/j$b;->c:F

    iput p1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget v1, p1, Lcom/deepe/c/c/a/a/j$b;->c:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    iget v0, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    iget p1, p1, Lcom/deepe/c/c/a/a/j$b;->d:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepe/c/c/a/a/j$b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/deepe/c/c/a/a/j$b;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/deepe/c/c/a/a/j$b;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/c/c/a/a/j$b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
