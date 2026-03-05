.class public Lcom/apicloud/a/i/a/ad/a/a;
.super Landroid/view/View;

# interfaces
.implements Lcom/apicloud/a/i/a/ad/a/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ad/a/a$a;
    }
.end annotation


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Lcom/apicloud/a/i/a/ad/a/g;

.field private f:Lcom/deepe/c/b/d/b$e;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:I

.field private o:F

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/ad/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x103000f

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/ad/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->d:Landroid/graphics/Paint;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->o:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean p3, p0, Lcom/apicloud/a/i/a/ad/a/a;->l:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/apicloud/a/i/a/ad/a/a;->k:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x40400000    # 3.0f

    iput p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    iput-boolean p3, p0, Lcom/apicloud/a/i/a/ad/a/a;->m:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->n:I

    return-void
.end method

.method private f(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/apicloud/a/i/a/ad/a/g;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    :goto_0
    return p1
.end method

.method private g(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->j:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->f:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IFI)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ad/a/g;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    :goto_0
    iput v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->i:F

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    iput p2, p0, Lcom/apicloud/a/i/a/ad/a/a;->i:F

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->f:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3}, Lcom/deepe/c/b/d/b$e;->a(IFI)V

    :cond_2
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ad/a/g;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/apicloud/a/i/a/ad/a/g;->b(Lcom/deepe/c/b/d/b$e;)V

    :cond_1
    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1, p0}, Lcom/apicloud/a/i/a/ad/a/g;->a(Lcom/deepe/c/b/d/b$e;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->j:I

    if-nez v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->h:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->f:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->b(I)V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/ad/a/g;->c(I)V

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->invalidate()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager has not been bound."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/apicloud/a/i/a/ad/a/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/a/a;->e(I)V

    return-void

    :cond_2
    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->k:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingTop()I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getPaddingLeft()I

    move-result v4

    :goto_0
    iget v5, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v6, v5

    int-to-float v4, v4

    add-float/2addr v4, v5

    int-to-float v7, v2

    add-float/2addr v7, v5

    iget-boolean v5, p0, Lcom/apicloud/a/i/a/ad/a/a;->l:Z

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v5, :cond_4

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, v8

    int-to-float v2, v0

    mul-float/2addr v2, v6

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v7, v1

    :cond_4
    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    :cond_5
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_9

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->m:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->h:I

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->m:Z

    if-nez v1, :cond_7

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->i:F

    mul-float/2addr v1, v6

    add-float/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->k:I

    add-float/2addr v7, v0

    if-nez v1, :cond_8

    move v10, v7

    move v7, v4

    move v4, v10

    :cond_8
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_9
    int-to-float v3, v2

    mul-float/2addr v3, v6

    add-float/2addr v3, v7

    iget v5, p0, Lcom/apicloud/a/i/a/ad/a/a;->k:I

    if-nez v5, :cond_a

    move v5, v4

    goto :goto_3

    :cond_a
    move v5, v3

    move v3, v4

    :goto_3
    iget-object v8, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_b

    iget-object v8, p0, Lcom/apicloud/a/i/a/ad/a/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b
    iget v8, p0, Lcom/apicloud/a/i/a/ad/a/a;->a:F

    cmpl-float v9, v1, v8

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/apicloud/a/i/a/ad/a/a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->k:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/a;->f(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/ad/a/a;->g(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/a;->g(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/ad/a/a;->f(I)I

    move-result p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/a/a;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    check-cast p1, Lcom/apicloud/a/i/a/ad/a/a$a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ad/a/a$a;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/apicloud/a/i/a/ad/a/a$a;->a:I

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    iget p1, p1, Lcom/apicloud/a/i/a/ad/a/a$a;->a:I

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->h:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/ad/a/a$a;

    invoke-direct {v1, v0}, Lcom/apicloud/a/i/a/ad/a/a$a;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    iput v0, v1, Lcom/apicloud/a/i/a/ad/a/a$a;->a:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ad/a/g;->b()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_e

    const/4 v3, 0x3

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_9

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    :cond_4
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->o:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->o:F

    sub-float v0, p1, v0

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->q:Z

    if-nez v2, :cond_7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/apicloud/a/i/a/ad/a/a;->n:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ad/a/a;->q:Z

    :cond_7
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->q:Z

    if-eqz v2, :cond_f

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->o:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ad/a/g;->d_()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ad/a/g;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    :cond_8
    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/ad/a/g;->a(F)V

    goto :goto_1

    :cond_9
    iget-boolean v4, p0, Lcom/apicloud/a/i/a/ad/a/a;->q:Z

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {v4}, Lcom/apicloud/a/i/a/ad/a/g;->b()I

    move-result v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/a;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    const/high16 v7, 0x40c00000    # 6.0f

    div-float/2addr v5, v7

    iget v7, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    if-lez v7, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float v8, v6, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    if-eq v0, v3, :cond_a

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/ad/a/g;->c(I)V

    :cond_a
    return v1

    :cond_b
    iget v7, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    sub-int/2addr v4, v1

    if-ge v7, v4, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    add-float/2addr v6, v5

    cmpl-float p1, p1, v6

    if-lez p1, :cond_d

    if-eq v0, v3, :cond_c

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->g:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/ad/a/g;->c(I)V

    :cond_c
    return v1

    :cond_d
    iput-boolean v2, p0, Lcom/apicloud/a/i/a/ad/a/a;->q:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ad/a/g;->d_()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->e:Lcom/apicloud/a/i/a/ad/a/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ad/a/g;->g()V

    goto :goto_1

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/a;->p:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/a;->o:F

    :cond_f
    :goto_1
    return v1

    :cond_10
    :goto_2
    return v2
.end method
