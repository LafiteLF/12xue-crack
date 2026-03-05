.class public abstract Lcom/apicloud/a/i/a/x/c;
.super Lcom/apicloud/a/i/a/x/b;


# static fields
.field private static w:I


# instance fields
.field private a:I

.field private b:Landroid/widget/Scroller;

.field private d:Lcom/apicloud/a/i/a/x/g;

.field private e:I

.field private f:Ljava/lang/Integer;

.field private g:I

.field private h:Z

.field private i:Lcom/apicloud/a/i/a/x/g;

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private x:Lcom/apicloud/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/b;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/x/c;->t:I

    iput v0, p0, Lcom/apicloud/a/i/a/x/c;->u:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/apicloud/a/i/a/x/c;->v:I

    new-instance v1, Landroid/widget/Scroller;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, p1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    div-int/2addr p1, v0

    sput p1, Lcom/apicloud/a/i/a/x/c;->w:I

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/c;->x:Lcom/apicloud/a/d;

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v0

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->d()V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->b()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->e()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->c()V

    :cond_5
    :goto_0
    return-void
.end method

.method private a(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

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

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/x/c;->scrollBy(II)V

    return-void

    :cond_1
    :goto_0
    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/x/c;->scrollBy(II)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->c(I)V

    return-void
.end method

.method private a(II)V
    .locals 0

    if-nez p1, :cond_1

    if-lez p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/x/c;->d(II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/x/c;->e(II)V

    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/x/c;->d(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/x/c;->e(II)V

    :goto_1
    return-void
.end method

.method private a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->f(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    sub-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v3}, Lcom/apicloud/a/i/a/x/g;->b()V

    :cond_0
    iget-object v3, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->B()V

    return-void
.end method

.method private b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_0

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

    if-gtz v2, :cond_1

    add-int/2addr p1, v2

    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/x/c;->scrollBy(II)V

    return-void

    :cond_1
    :goto_0
    neg-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/x/c;->scrollBy(II)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->d(I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->h(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    sub-int v2, v1, v2

    iget-boolean v3, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v3}, Lcom/apicloud/a/i/a/x/g;->b()V

    :cond_0
    iget-object v3, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    neg-int v1, v1

    invoke-virtual {v3, v0, v1, v0, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->C()V

    return-void
.end method

.method private c(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/x/g;->b(I)V

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1, v1}, Lcom/apicloud/a/i/a/x/g;->a(I)V

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/x/c;->f(I)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    if-le p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/x/c;->g(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1, v2}, Lcom/apicloud/a/i/a/x/g;->a(I)V

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->f(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/x/g;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/x/a;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->x:Lcom/apicloud/a/d;

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/x/a;-><init>(Lcom/apicloud/a/d;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/x/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/x/a;->c(I)V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/x/g;->j()I

    move-result p1

    if-gtz p1, :cond_1

    sget p1, Lcom/apicloud/a/i/a/x/g;->a:I

    :cond_1
    neg-int v0, p1

    iput v0, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/g;->g()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->g:I

    new-instance p1, Lcom/apicloud/a/i/a/x/b$a;

    const/4 v0, -0x1

    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->g:I

    invoke-direct {p1, v0, v1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(II)V

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->g:I

    neg-int v0, v0

    iput v0, p1, Lcom/apicloud/a/i/a/x/b$a;->topMargin:I

    const/16 v0, 0x30

    iput v0, p1, Lcom/apicloud/a/i/a/x/b$a;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0, p1}, Lcom/apicloud/a/i/a/x/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    new-instance v0, Lcom/apicloud/a/i/a/x/c$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/x/c$1;-><init>(Lcom/apicloud/a/i/a/x/c;)V

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/x/g;->a(Lcom/apicloud/a/i/a/x/h;)V

    :cond_3
    return-void
.end method

.method private d()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    rsub-int/lit8 v2, v0, 0x0

    iget-object v3, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v3, v1, v0, v1, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/x/g;->b(I)V

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1, v1}, Lcom/apicloud/a/i/a/x/g;->a(I)V

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/x/c;->h(I)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    if-le p1, v0, :cond_2

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/x/c;->i(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1, v2}, Lcom/apicloud/a/i/a/x/g;->a(I)V

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->h(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/x/g;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/x/d;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->x:Lcom/apicloud/a/d;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/apicloud/a/i/a/x/d;-><init>(Lcom/apicloud/a/d;I)V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/x/g;->j()I

    move-result p1

    if-gtz p1, :cond_1

    sget p1, Lcom/apicloud/a/i/a/x/g;->b:I

    :cond_1
    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/g;->g()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->k:I

    new-instance p1, Lcom/apicloud/a/i/a/x/b$a;

    const/4 v0, -0x1

    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->k:I

    invoke-direct {p1, v0, v1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(II)V

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->k:I

    neg-int v0, v0

    iput v0, p1, Lcom/apicloud/a/i/a/x/b$a;->bottomMargin:I

    const/16 v0, 0x50

    iput v0, p1, Lcom/apicloud/a/i/a/x/b$a;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    check-cast v0, Landroid/view/View;

    invoke-super {p0, v0, p1}, Lcom/apicloud/a/i/a/x/b;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    new-instance v0, Lcom/apicloud/a/i/a/x/c$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/x/c$2;-><init>(Lcom/apicloud/a/i/a/x/c;)V

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/x/g;->a(Lcom/apicloud/a/i/a/x/h;)V

    :cond_3
    return-void
.end method

.method private e()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    neg-int v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/g;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->d()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->h()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->D()V

    :cond_1
    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->t:I

    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/g;->a()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->e()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->h()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->E()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(I)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->t:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    return-void
.end method

.method private h(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->u:I

    return-void
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private i(I)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->u:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected abstract A()Z
.end method

.method protected B()V
    .locals 0

    return-void
.end method

.method protected C()V
    .locals 0

    return-void
.end method

.method protected D()V
    .locals 0

    return-void
.end method

.method protected E()V
    .locals 0

    return-void
.end method

.method public G()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->v:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected H()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->x:Lcom/apicloud/a/d;

    return-object v0
.end method

.method protected final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->n:Z

    return v0
.end method

.method public K()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->c(Lcom/apicloud/a/i/a/x/g;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->q:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->q:Z

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/x/c;->i(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/x/g;->c()V

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->h:Z

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public L()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;->d(Lcom/apicloud/a/i/a/x/g;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->r:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->r:Z

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/x/c;->i(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/x/c;->i:Lcom/apicloud/a/i/a/x/g;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/x/g;->c()V

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->l:Z

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    iget v1, p0, Lcom/apicloud/a/i/a/x/c;->j:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected M()V
    .locals 0

    return-void
.end method

.method protected N()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/x/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->c(Lcom/apicloud/a/i/a/x/g;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->a(Z)V

    return-void
.end method

.method public final b(Lcom/apicloud/a/i/a/x/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->d(Lcom/apicloud/a/i/a/x/g;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->b(Z)V

    return-void
.end method

.method public computeScroll()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/x/c;->scrollTo(II)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    if-eqz v2, :cond_1

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/apicloud/a/i/a/x/c;->scrollTo(II)V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->q:Z

    if-eqz v2, :cond_2

    neg-int v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/apicloud/a/i/a/x/c;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->c(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->r:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/x/c;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->getScrollY()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/x/c;->d(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->postInvalidate()V

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->q:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->q:Z

    iput-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->a()V

    :cond_5
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->r:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/x/c;->r:Z

    iput-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->a()V

    :cond_6
    :goto_1
    return-void
.end method

.method protected abstract d(II)V
.end method

.method protected abstract e(I)V
.end method

.method protected abstract e(II)V
.end method

.method protected i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->m:Z

    return-void
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/c;->n:Z

    return-void
.end method

.method public final k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/x/a;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->x:Lcom/apicloud/a/d;

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/x/a;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->c(Lcom/apicloud/a/i/a/x/g;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->a(Z)V

    return-void
.end method

.method public final l(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->K()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/c;->q(I)V

    :goto_0
    return-void
.end method

.method public final n(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->v:I

    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->v:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/c;->e(I)V

    :cond_0
    return-void
.end method

.method public final o(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->e:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/apicloud/a/i/a/x/b;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->i()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/x/b;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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
    iget v0, p0, Lcom/apicloud/a/i/a/x/c;->a:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/apicloud/a/i/a/x/c;->w:I

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-lez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->N()V

    return v4

    :cond_3
    if-gez v0, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/c;->s:Z

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->M()V

    return v4

    :cond_4
    iput p1, p0, Lcom/apicloud/a/i/a/x/c;->a:I

    :goto_1
    return v1
.end method

.method protected final onScrollChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/x/b;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_1
    sub-int p1, p2, p4

    :goto_1
    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/x/c;->a(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/c;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/x/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    iget p1, p0, Lcom/apicloud/a/i/a/x/c;->a:I

    sub-int p1, v0, p1

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->o:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->a(I)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/x/c;->p:Z

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;->b(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->a()V

    goto :goto_1

    :cond_4
    :goto_0
    iput v0, p0, Lcom/apicloud/a/i/a/x/c;->a:I

    :goto_1
    return v1
.end method

.method public final p(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/x/c;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/c;->d:Lcom/apicloud/a/i/a/x/g;

    instance-of v1, v0, Lcom/apicloud/a/i/a/x/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/a/i/a/x/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/x/a;->c(I)V

    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->f()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/x/c;->g()V

    :goto_0
    return-void
.end method

.method protected abstract z()Z
.end method
