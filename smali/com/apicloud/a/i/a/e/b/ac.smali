.class public Lcom/apicloud/a/i/a/e/b/ac;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    iput v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    iput p2, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    iput p3, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    iput p4, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    iput p5, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    iput p6, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/16 v1, 0x9

    new-array v1, v1, [F

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    const/4 v3, 0x2

    aput v2, v1, v3

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    const/4 v3, 0x3

    aput v2, v1, v3

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v2, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    const/4 v3, 0x5

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    return-object v0
.end method

.method public final b()Z
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->a:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->b:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->c:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->e:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/e/b/ac;->f:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
