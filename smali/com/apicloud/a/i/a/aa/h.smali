.class Lcom/apicloud/a/i/a/aa/h;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Lcom/apicloud/a/i/a/aa/d;


# static fields
.field private static l:I

.field private static m:I


# instance fields
.field private a:Lcom/apicloud/a/i/a/aa/e;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/apicloud/a/i/a/aa/k;

.field private g:Landroid/widget/EdgeEffect;

.field private h:Lcom/apicloud/a/i/a/aa/b;

.field private i:F

.field private j:F

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/aa/h;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010353

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/h;->c:Z

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->setFillViewport(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/h;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->e(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x4

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->setScrollBarSize(I)V

    const/high16 p1, 0x2000000

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->setScrollBarStyle(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/h;->setHorizontalFadingEdgeEnabled(Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    if-nez v0, :cond_0

    iput v1, p0, Lcom/apicloud/a/i/a/aa/h;->i:F

    iput p1, p0, Lcom/apicloud/a/i/a/aa/h;->j:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apicloud/a/i/a/aa/h;->k:J

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/apicloud/a/i/a/aa/h;->a(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/h;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final a(FF)Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apicloud/a/i/a/aa/h;->k:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/apicloud/a/i/a/aa/h;->i:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/apicloud/a/i/a/aa/h;->j:F

    sub-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sget v2, Lcom/apicloud/a/i/a/aa/h;->m:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget v0, Lcom/apicloud/a/i/a/aa/h;->l:I

    int-to-float v1, v0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    int-to-float p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(I)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setEdgeEffectColor(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->g:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    return-void

    :cond_2
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string v1, "mEdgeGlowLeft"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v2, "mEdgeGlowRight"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/h;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apicloud/a/i/a/aa/h;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->setColor(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/h;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/h;->g:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/h;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->d(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/aa/h;->b:Z

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/h;->h:Lcom/apicloud/a/i/a/aa/b;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->a:Lcom/apicloud/a/i/a/aa/e;

    if-eqz v0, :cond_0

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/h;->a:Lcom/apicloud/a/i/a/aa/e;

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/k;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/h;->f:Lcom/apicloud/a/i/a/aa/k;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/h;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/h;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/e;->getRight()I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/h;->e:Z

    return-void
.end method

.method public b(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->fullScroll(I)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/h;->getScrollX()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public c(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->h:Lcom/apicloud/a/i/a/aa/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/b;->b()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/h;->d:Z

    return-void
.end method

.method public final e(Z)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setNestedScrollingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public fullScroll(I)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/aa/h;->b:Z

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/h;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/aa/e;->A()Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/third/yoga/YogaNode;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Lcom/apicloud/third/yoga/YogaNode;->getChildAt(I)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apicloud/third/yoga/YogaNode;->getWidth()Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v5, :cond_1

    sget-object v7, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    iget-object v8, v5, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v7, v8, :cond_1

    iget v5, v5, Lcom/apicloud/third/yoga/YogaValue;->value:F

    div-float/2addr v5, v6

    int-to-float v7, v0

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/apicloud/third/yoga/YogaNode;->setWidth(F)V

    :cond_1
    invoke-virtual {v4}, Lcom/apicloud/third/yoga/YogaNode;->getMinWidth()Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v7, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    iget-object v8, v5, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v7, v8, :cond_2

    iget v5, v5, Lcom/apicloud/third/yoga/YogaValue;->value:F

    div-float/2addr v5, v6

    int-to-float v7, v0

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/apicloud/third/yoga/YogaNode;->setMinWidth(F)V

    :cond_2
    invoke-virtual {v4}, Lcom/apicloud/third/yoga/YogaNode;->getMaxWidth()Lcom/apicloud/third/yoga/YogaValue;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v7, Lcom/apicloud/third/yoga/YogaUnit;->PERCENT:Lcom/apicloud/third/yoga/YogaUnit;

    iget-object v8, v5, Lcom/apicloud/third/yoga/YogaValue;->unit:Lcom/apicloud/third/yoga/YogaUnit;

    if-ne v7, v8, :cond_3

    iget v5, v5, Lcom/apicloud/third/yoga/YogaValue;->value:F

    div-float/2addr v5, v6

    int-to-float v6, v0

    mul-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/apicloud/third/yoga/YogaNode;->setMaxWidth(F)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onOverScrolled(IIZZ)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->f:Lcom/apicloud/a/i/a/aa/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aa/k;->a(IIZZ)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/h;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/h;->f:Lcom/apicloud/a/i/a/aa/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aa/k;->a(IIII)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/h;->b:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/h;->a(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/h;->c:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/aa/h;->b:Z

    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    return-void
.end method
