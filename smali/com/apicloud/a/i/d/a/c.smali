.class public Lcom/apicloud/a/i/d/a/c;
.super Lcom/apicloud/a/i/d/a/k;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 0

    iput p4, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    iput p1, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    iput p2, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    iput p3, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BorderEdge["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
