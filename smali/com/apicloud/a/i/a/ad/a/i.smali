.class public Lcom/apicloud/a/i/a/ad/a/i;
.super Lcom/apicloud/a/i/a/ad/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ad/a/i$a;
    }
.end annotation


# instance fields
.field private a:I

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Lcom/apicloud/a/i/a/ad/a/h;

.field private o:Lcom/deepe/c/b/d/b$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/ad/a/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/a/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->m:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/i;->a()V

    new-instance p1, Lcom/apicloud/a/i/a/ad/a/i$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ad/a/i$1;-><init>(Lcom/apicloud/a/i/a/ad/a/i;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    div-float/2addr v3, v1

    mul-float/2addr v3, v0

    div-float/2addr v2, v0

    mul-float/2addr v2, v1

    invoke-virtual {p1, v3, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    return-object p1
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/apicloud/a/i/a/ad/a/h;->a(Landroid/content/Context;Lcom/deepe/c/b/d/b;)Lcom/apicloud/a/i/a/ad/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/i$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ad/a/i$a;-><init>(Lcom/apicloud/a/i/a/ad/a/i$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->o:Lcom/deepe/c/b/d/b$f;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/ad/a/i;->a(ZLcom/deepe/c/b/d/b$f;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/a/i;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->d(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->i:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v5, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/ad/a/i;->k(Z)V

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->j:F

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->j:F

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->g:F

    goto :goto_2

    :cond_5
    iget p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_7

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->i:F

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->j:F

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    :goto_1
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ad/a/i;->k(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->k()Lcom/deepe/c/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->k()Lcom/deepe/c/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->d(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->g:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_8

    cmpl-float v0, v2, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/a/i;->k(Z)V

    iget v2, p0, Lcom/apicloud/a/i/a/ad/a/i;->j:F

    sub-float/2addr v1, v2

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_6

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->a:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    :goto_0
    iput v2, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->g:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->i:F

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->j:F

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    :cond_8
    :goto_2
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/apicloud/a/i/a/ad/a/i;->h:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->k:I

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/ad/a/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->a(I)V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->canScrollHorizontally(I)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->canScrollHorizontally(I)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->canScrollVertically(I)Z

    move-result p1

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->l:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/i;->b()V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/i;->m:Z

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->l:Z

    return v0
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->a(Z)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->l:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->h()Z

    return-void
.end method

.method public final j(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->n:Lcom/apicloud/a/i/a/ad/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->b(Z)V

    :cond_0
    return-void
.end method

.method protected final k(Z)V
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/i/a/ad/a/i;->a(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->m:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->b(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/i;->m:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/i;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->c(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    return v0
.end method
