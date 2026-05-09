.class public Lcom/apicloud/c/a/a/g;
.super Lcom/apicloud/c/a/a/j$s;


# instance fields
.field private final a:F

.field protected final b:Landroid/view/animation/LinearInterpolator;

.field protected final c:Landroid/view/animation/DecelerateInterpolator;

.field protected d:Landroid/graphics/PointF;

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$s;-><init>()V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/g;->b:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/g;->c:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/g;->e:I

    iput v0, p0, Lcom/apicloud/c/a/a/g;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/g;->a(Landroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/g;->a:F

    return-void
.end method

.method private a(II)I
    .locals 0

    sub-int p2, p1, p2

    mul-int/2addr p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41c80000    # 25.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public a(IIIII)I
    .locals 1

    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    if-eqz p5, :cond_1

    const/4 p1, 0x1

    if-ne p5, p1, :cond_0

    sub-int/2addr p4, p2

    return p4

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr p3, p1

    if-lez p3, :cond_2

    return p3

    :cond_2
    sub-int/2addr p4, p2

    if-gez p4, :cond_3

    return p4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    sub-int/2addr p3, p1

    return p3
.end method

.method public a(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->e()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->i(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/apicloud/c/a/a/j$i;->topMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->k(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Lcom/apicloud/c/a/a/j$i;->bottomMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v7

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result p1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/apicloud/c/a/a/g;->a(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->e()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    instance-of v1, v0, Lcom/apicloud/c/a/a/j$s$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/c/a/a/j$s$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/j$s$b;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lcom/apicloud/c/a/a/j$s$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LinearSmoothScroller"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->j()I

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->f()V

    return-void

    :cond_0
    iget p3, p0, Lcom/apicloud/c/a/a/g;->e:I

    invoke-direct {p0, p3, p1}, Lcom/apicloud/c/a/a/g;->a(II)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/g;->e:I

    iget p1, p0, Lcom/apicloud/c/a/a/g;->f:I

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/g;->a(II)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/g;->f:I

    iget p2, p0, Lcom/apicloud/c/a/a/g;->e:I

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0, p4}, Lcom/apicloud/c/a/a/g;->a(Lcom/apicloud/c/a/a/j$s$a;)V

    :cond_1
    return-void
.end method

.method protected a(Landroid/view/View;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->c()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/g;->b(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->d()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/g;->a(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/g;->c(I)I

    move-result v0

    if-lez v0, :cond_0

    neg-int p2, p2

    neg-int p1, p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/g;->c:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/apicloud/c/a/a/j$s$a;->a(IIILandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/apicloud/c/a/a/j$s$a;)V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/g;->a(I)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/g;->a(Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/apicloud/c/a/a/g;->e:I

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/apicloud/c/a/a/g;->f:I

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/g;->b(I)I

    move-result v0

    iget v1, p0, Lcom/apicloud/c/a/a/g;->e:I

    int-to-float v1, v1

    const v2, 0x3f99999a    # 1.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Lcom/apicloud/c/a/a/g;->f:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/apicloud/c/a/a/g;->b:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1, v3, v0, v2}, Lcom/apicloud/c/a/a/j$s$a;->a(IIILandroid/view/animation/Interpolator;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$s$a;->a(I)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->f()V

    return-void
.end method

.method protected b(I)I
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/apicloud/c/a/a/g;->a:F

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public b(Landroid/view/View;I)I
    .locals 10

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/g;->e()Lcom/apicloud/c/a/a/j$h;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->h(Landroid/view/View;)I

    move-result v2

    iget v3, v1, Lcom/apicloud/c/a/a/j$i;->leftMargin:I

    sub-int v5, v2, v3

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->j(Landroid/view/View;)I

    move-result p1

    iget v1, v1, Lcom/apicloud/c/a/a/j$i;->rightMargin:I

    add-int v6, p1, v1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result v7

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result p1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v0

    sub-int v8, p1, v0

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/apicloud/c/a/a/g;->a(IIIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/g;->f:I

    iput v0, p0, Lcom/apicloud/c/a/a/g;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    return-void
.end method

.method protected c()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method protected c(I)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/g;->b(I)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3fd57a786c22680aL    # 0.3356

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method protected d()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/g;->d:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method
