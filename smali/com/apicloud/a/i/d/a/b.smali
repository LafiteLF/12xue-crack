.class public Lcom/apicloud/a/i/d/a/b;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    iput v0, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    iput p2, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    iput p3, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    iput p4, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    const v1, 0x3a83126f    # 0.001f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()[F
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    return-object v0
.end method

.method public final b(FFFF)[F
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    sub-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    sub-float/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    sub-float/2addr v1, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    sub-float/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v1, 0x3

    aput p2, v0, v1

    iget p2, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    sub-float/2addr p2, p3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x4

    aput p2, v0, p3

    iget p2, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    sub-float/2addr p2, p4

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 p3, 0x5

    aput p2, v0, p3

    iget p2, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    sub-float/2addr p2, p1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x6

    aput p1, v0, p2

    iget p1, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    sub-float/2addr p1, p4

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p2, 0x7

    aput p1, v0, p2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BorderCorner["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
