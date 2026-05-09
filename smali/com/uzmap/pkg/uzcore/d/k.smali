.class public abstract Lcom/uzmap/pkg/uzcore/d/k;
.super Lcom/uzmap/pkg/uzcore/d/a;


# static fields
.field private static m:I


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    iget v0, v0, Lcom/uzmap/pkg/uzcore/z;->f:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/uzmap/pkg/uzcore/d/k;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    return-void
.end method

.method private B()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v0

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->D()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->C()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->i:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->E()V

    :cond_3
    :goto_0
    return-void
.end method

.method private C()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/d/k;->f(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    sub-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onRefresh()V

    :cond_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->invalidate()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->x()V

    return-void
.end method

.method private D()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    rsub-int/lit8 v2, v0, 0x0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    invoke-virtual {v3, v1, v0, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->postInvalidate()V

    return-void
.end method

.method private E()V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    neg-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->postInvalidate()V

    return-void
.end method

.method private F()V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onRelease()V

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->D()V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->G()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->w()V

    :cond_2
    :goto_0
    return-void
.end method

.method private G()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    return-void
.end method

.method private H()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/e;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->I()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/e;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/h/e;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->getRefreshingThreshold(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v1

    iget v1, v1, Lcom/uzmap/pkg/uzcore/z;->e:I

    :cond_2
    neg-int v1, v1

    iput v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->getViewHeight(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v1

    iget v1, v1, Lcom/uzmap/pkg/uzcore/z;->a:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    :cond_3
    iput v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->f:I

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->f:I

    neg-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onSetVisibility(I)V

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/d/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method private I()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/i/j;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/i/j;->a(I)V

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    if-lez p1, :cond_0

    int-to-float p1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    sub-int v2, v0, p1

    if-ltz v2, :cond_1

    add-int/2addr p1, v2

    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzcore/d/k;->scrollBy(II)V

    return-void

    :cond_1
    :goto_0
    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzcore/d/k;->scrollBy(II)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/d/k;->e(I)V

    return-void
.end method

.method private d(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    sub-int/2addr v0, p1

    if-gtz v0, :cond_1

    add-int/2addr p1, v0

    :cond_1
    :goto_0
    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzcore/d/k;->scrollBy(II)V

    return-void
.end method

.method private e(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onScrollY(I)V

    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/k;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/k;->b(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onStateChange(I)V

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/d/k;->f(I)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    if-le p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/d/k;->g(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/d/k;->b(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onStateChange(I)V

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/k;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->l:I

    return-void
.end method

.method private g(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->l:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public A()V
    .locals 3

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->H()V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->j:Z

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/k;->b(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onForceRefresh()V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->e:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->invalidate()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->y()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    goto :goto_0

    :cond_0
    const-string p2, "visible"

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->H()V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onSetRefreshInfo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iget-boolean p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/k;->b(Z)V

    :cond_1
    iget-boolean p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->g:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/d/k;->c:Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/RefreshHeader;->onSetVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/k;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "pull"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->d:Ljava/lang/String;

    return-void
.end method

.method public computeScroll()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/d/k;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->i:Z

    if-eqz v2, :cond_1

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/uzmap/pkg/uzcore/d/k;->scrollTo(II)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->j:Z

    if-eqz v2, :cond_2

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/uzmap/pkg/uzcore/d/k;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getScrollY()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/d/k;->e(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->postInvalidate()V

    if-nez v0, :cond_4

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->i:Z

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->j:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/k;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->B()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected abstract h()V
.end method

.method protected abstract i()Z
.end method

.method protected abstract j()Z
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->a:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/uzmap/pkg/uzcore/d/k;->m:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-lez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    return v4

    :cond_3
    if-gez v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->k:Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/uzmap/pkg/uzcore/d/k;->i:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->h()V

    return v4

    :cond_4
    iput p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->a:I

    :goto_1
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/k;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/uzmap/pkg/uzcore/d/k;->a:I

    sub-int p1, v0, p1

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->h:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/k;->c(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/k;->i:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/k;->d(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->B()V

    goto :goto_1

    :cond_4
    :goto_0
    iput v0, p0, Lcom/uzmap/pkg/uzcore/d/k;->a:I

    :goto_1
    return v1
.end method

.method public z()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/k;->F()V

    return-void
.end method
