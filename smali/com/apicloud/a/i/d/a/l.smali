.class public Lcom/apicloud/a/i/d/a/l;
.super Lcom/apicloud/a/i/d/a/k;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/k;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/d/a/l;->a:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/l;->b:F

    iput p1, p0, Lcom/apicloud/a/i/d/a/l;->a:F

    iput p2, p0, Lcom/apicloud/a/i/d/a/l;->b:F

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/l;->a:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/l;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/apicloud/a/i/d/a/l;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/l;->c()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/a/l;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/l;->d()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/a/l;->d()I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/a/l;->c()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/a/l;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/l;->a:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/l;->b:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/a/i/d/a/l;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
