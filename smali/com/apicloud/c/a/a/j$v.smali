.class Lcom/apicloud/c/a/a/j$v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "v"
.end annotation


# instance fields
.field a:Landroid/view/animation/Interpolator;

.field final synthetic b:Lcom/apicloud/c/a/a/j;

.field private c:I

.field private d:I

.field private e:Landroid/widget/Scroller;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 2

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/apicloud/c/a/a/j;->H:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$v;->a:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->f:Z

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->g:Z

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/apicloud/c/a/a/j;->H:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    return-void
.end method

.method private a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private b(IIII)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    mul-int/2addr p3, p3

    mul-int/2addr p4, p4

    add-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-int p3, p3

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j;->getWidth()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j;->getHeight()I

    move-result p2

    :goto_1
    div-int/lit8 p4, p2, 0x2

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float p4, p4

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/j$v;->a(F)F

    move-result p1

    mul-float/2addr p1, p4

    add-float/2addr p4, p1

    if-lez p3, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p3

    div-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    int-to-float p1, v0

    div-float/2addr p1, p2

    add-float/2addr p1, v3

    const/high16 p2, 0x43960000    # 300.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_3
    const/16 p2, 0x7d0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->f:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->f:Z

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$v;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$v;->g:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p0}, Lcom/apicloud/c/a/a/j;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p0}, Lcom/apicloud/c/a/a/j;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->b(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/j$v;->d:I

    iput v0, p0, Lcom/apicloud/c/a/a/j$v;->c:I

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$v;->a()V

    return-void
.end method

.method public a(III)V
    .locals 1

    sget-object v0, Lcom/apicloud/c/a/a/j;->H:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/j$v;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/c/a/a/j$v;->b(IIII)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/j$v;->a(III)V

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->a:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Lcom/apicloud/c/a/a/j$v;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    :cond_0
    iget-object p4, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Lcom/apicloud/c/a/a/j;->b(I)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/apicloud/c/a/a/j$v;->d:I

    iput p4, p0, Lcom/apicloud/c/a/a/j$v;->c:I

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$v;->a()V

    return-void
.end method

.method public a(IILandroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/apicloud/c/a/a/j$v;->b(IIII)I

    move-result v0

    if-nez p3, :cond_0

    sget-object p3, Lcom/apicloud/c/a/a/j;->H:Landroid/view/animation/Interpolator;

    :cond_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/apicloud/c/a/a/j$v;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p0}, Lcom/apicloud/c/a/a/j;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/apicloud/c/a/a/j$v;->a(IIII)V

    return-void
.end method

.method public run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/j$v;->b()V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/apicloud/c/a/a/j$v;->c()V

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j;->e()V

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->e:Landroid/widget/Scroller;

    iget-object v2, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v5

    iget v6, v0, Lcom/apicloud/c/a/a/j$v;->c:I

    sub-int v6, v3, v6

    iget v7, v0, Lcom/apicloud/c/a/a/j$v;->d:I

    sub-int v7, v5, v7

    iput v3, v0, Lcom/apicloud/c/a/a/j$v;->c:I

    iput v5, v0, Lcom/apicloud/c/a/a/j$v;->d:I

    iget-object v8, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v8, v8, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v8}, Lcom/apicloud/c/a/a/j;->f()V

    iget-object v8, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v8}, Lcom/apicloud/c/a/a/j;->m()V

    const-string v8, "RV Scroll"

    invoke-static {v8}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    iget-object v8, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v8, v8, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v10, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v10, v10, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v11, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v11, v11, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v8, v6, v10, v11}, Lcom/apicloud/c/a/a/j$h;->a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result v8

    sub-int v10, v6, v8

    goto :goto_0

    :cond_1
    move v8, v4

    move v10, v8

    :goto_0
    if-eqz v7, :cond_2

    iget-object v11, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v11, v11, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object v12, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v12, v12, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v13, v13, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v11, v7, v12, v13}, Lcom/apicloud/c/a/a/j$h;->b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result v11

    sub-int v12, v7, v11

    goto :goto_1

    :cond_2
    move v11, v4

    move v12, v11

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13}, Lcom/apicloud/c/a/a/j;->y()V

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13}, Lcom/apicloud/c/a/a/j;->n()V

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13, v4}, Lcom/apicloud/c/a/a/j;->c(Z)V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->g()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->h()Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v13, v13, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v13}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->f()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->i()I

    move-result v14

    if-lt v14, v13, :cond_4

    sub-int/2addr v13, v9

    invoke-virtual {v2, v13}, Lcom/apicloud/c/a/a/j$s;->d(I)V

    :cond_4
    sub-int v13, v6, v10

    sub-int v14, v7, v12

    invoke-static {v2, v13, v14}, Lcom/apicloud/c/a/a/j$s;->a(Lcom/apicloud/c/a/a/j$s;II)V

    goto :goto_2

    :cond_5
    move v8, v4

    move v10, v8

    move v11, v10

    move v12, v11

    :cond_6
    :goto_2
    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v13, v13, Lcom/apicloud/c/a/a/j;->p:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13}, Lcom/apicloud/c/a/a/j;->invalidate()V

    :cond_7
    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13}, Lcom/apicloud/c/a/a/j;->getOverScrollMode()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_8

    iget-object v13, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v13, v6, v7}, Lcom/apicloud/c/a/a/j;->c(II)V

    :cond_8
    if-nez v10, :cond_9

    if-eqz v12, :cond_11

    :cond_9
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v13

    float-to-int v13, v13

    if-eq v10, v3, :cond_b

    if-gez v10, :cond_a

    neg-int v15, v13

    goto :goto_3

    :cond_a
    if-lez v10, :cond_b

    move v15, v13

    goto :goto_3

    :cond_b
    move v15, v4

    :goto_3
    if-eq v12, v5, :cond_d

    if-gez v12, :cond_c

    neg-int v13, v13

    goto :goto_4

    :cond_c
    if-lez v12, :cond_d

    goto :goto_4

    :cond_d
    move v13, v4

    :goto_4
    iget-object v9, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v9}, Lcom/apicloud/c/a/a/j;->getOverScrollMode()I

    move-result v9

    if-eq v9, v14, :cond_e

    iget-object v9, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v9, v15, v13}, Lcom/apicloud/c/a/a/j;->d(II)V

    :cond_e
    if-nez v15, :cond_f

    if-eq v10, v3, :cond_f

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v3

    if-nez v3, :cond_11

    :cond_f
    if-nez v13, :cond_10

    if-eq v12, v5, :cond_10

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    if-nez v3, :cond_11

    :cond_10
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_11
    if-nez v8, :cond_12

    if-eqz v11, :cond_13

    :cond_12
    iget-object v3, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v3, v8, v11}, Lcom/apicloud/c/a/a/j;->i(II)V

    :cond_13
    iget-object v3, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-static {v3}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j;)Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j;->invalidate()V

    :cond_14
    if-eqz v7, :cond_15

    iget-object v3, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v3, v3, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$h;->d()Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v11, v7, :cond_15

    const/4 v3, 0x1

    goto :goto_5

    :cond_15
    move v3, v4

    :goto_5
    if-eqz v6, :cond_16

    iget-object v5, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v5, v5, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j$h;->c()Z

    move-result v5

    if-eqz v5, :cond_16

    if-ne v8, v6, :cond_16

    const/4 v5, 0x1

    goto :goto_6

    :cond_16
    move v5, v4

    :goto_6
    if-nez v6, :cond_17

    if-eqz v7, :cond_18

    :cond_17
    if-nez v5, :cond_18

    if-nez v3, :cond_18

    move v9, v4

    goto :goto_7

    :cond_18
    const/4 v9, 0x1

    :goto_7
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1a

    if-nez v9, :cond_19

    goto :goto_8

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/c/a/a/j$v;->a()V

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->z:Lcom/apicloud/c/a/a/d;

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->z:Lcom/apicloud/c/a/a/d;

    iget-object v3, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, v3, v6, v7}, Lcom/apicloud/c/a/a/d;->a(Lcom/apicloud/c/a/a/j;II)V

    goto :goto_9

    :cond_1a
    :goto_8
    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, v4}, Lcom/apicloud/c/a/a/j;->b(I)V

    invoke-static {}, Lcom/apicloud/c/a/a/j;->B()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$v;->b:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->A:Lcom/apicloud/c/a/a/d$a;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/d$a;->a()V

    :cond_1b
    :goto_9
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->g()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {v2, v4, v4}, Lcom/apicloud/c/a/a/j$s;->a(Lcom/apicloud/c/a/a/j$s;II)V

    :cond_1c
    iget-boolean v1, v0, Lcom/apicloud/c/a/a/j$v;->g:Z

    if-nez v1, :cond_1d

    invoke-virtual {v2}, Lcom/apicloud/c/a/a/j$s;->f()V

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/apicloud/c/a/a/j$v;->d()V

    return-void
.end method
