.class public Lcom/apicloud/a/i/a/aa/f;
.super Lcom/apicloud/a/i/a/x/c;

# interfaces
.implements Lcom/apicloud/a/i/a/aa/b;
.implements Lcom/apicloud/a/i/a/g/f;
.implements Lcom/deepe/c/h/b;


# instance fields
.field private a:Lcom/apicloud/a/i/a/aa/e;

.field private b:Lcom/apicloud/a/i/a/aa/d;

.field private d:Lcom/apicloud/a/i/a/aa/c;

.field private e:Lcom/apicloud/a/i/a/aa/k;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/apicloud/a/i/a/aa/a;

.field private j:Lcom/apicloud/a/i/a/aa/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/aa/g;)V
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/g;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/x/c;-><init>(Lcom/apicloud/a/d;)V

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    iput v1, p0, Lcom/apicloud/a/i/a/aa/f;->f:I

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/aa/f;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/aa/f;->h:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->j:Lcom/apicloud/a/i/a/aa/g;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/g;->a()Lcom/apicloud/a/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/d;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    return-object p0
.end method

.method private a(Lcom/apicloud/a/d;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/aa/e;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/aa/e;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->n(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/aa/e;->e(F)V

    new-instance v0, Lcom/apicloud/a/i/a/aa/a;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/aa/a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->k(I)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/x/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/f;->i(Z)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/x/d;->d()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/x/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->b(Lcom/apicloud/a/i/a/x/g;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/g;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/aa/f;->j:Lcom/apicloud/a/i/a/aa/g;

    return-object p0
.end method

.method private k(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/d;->a()Z

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    check-cast v1, Landroid/view/View;

    invoke-super {p0, v1}, Lcom/apicloud/a/i/a/x/c;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez p1, :cond_1

    new-instance v1, Lcom/apicloud/a/i/a/aa/h;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/a/aa/h;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/apicloud/a/i/a/aa/j;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/a/aa/j;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v1, v0}, Lcom/apicloud/a/i/a/aa/d;->c(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/aa/d;->a(Lcom/apicloud/a/i/a/aa/k;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p0}, Lcom/apicloud/a/i/a/aa/d;->a(Lcom/apicloud/a/i/a/aa/b;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/aa/f;->m()Lcom/apicloud/a/i/a/aa/e;

    move-result-object v0

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->h(I)V

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->k(I)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->h(I)V

    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/aa/d;->a(Lcom/apicloud/a/i/a/aa/e;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->j:Lcom/apicloud/a/i/a/aa/g;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/g;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->d(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->j:Lcom/apicloud/a/i/a/aa/g;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/g;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->c(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    check-cast p1, Landroid/view/View;

    const/4 v0, -0x1

    invoke-super {p0, p1, v0, v0}, Lcom/apicloud/a/i/a/x/c;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private m()Lcom/apicloud/a/i/a/aa/e;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/e;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    return-object v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/aa/f$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/aa/f$1;-><init>(Lcom/apicloud/a/i/a/aa/f;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/aa/d;->c(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method protected B()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->a()V

    :cond_0
    return-void
.end method

.method protected C()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->b()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->c()V

    :cond_0
    return-void
.end method

.method protected E()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->d()V

    :cond_0
    return-void
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/e;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/aa/f;->f:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/k;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/i/a/aa/d;->a(II)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/k;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->a(Lcom/apicloud/a/i/a/aa/k;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/aa/f;->f:I

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/aa/k;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    iget v0, p0, Lcom/apicloud/a/i/a/aa/f;->g:I

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/aa/k;->b(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->setSmoothScrollingEnabled(Z)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/x/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/x/d;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/x/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/aa/e;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->performClick()Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/aa/f;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/k;->b(I)V

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/i/a/aa/d;->scrollTo(II)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/f;->h:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->d(Z)V

    return-void
.end method

.method public c()Lcom/apicloud/a/i/a/aa/k;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->a(I)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->a(Z)V

    return-void
.end method

.method public d()Lcom/apicloud/a/i/a/aa/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->d:Lcom/apicloud/a/i/a/aa/c;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->setOverScrollMode(I)V

    return-void
.end method

.method protected d(II)V
    .locals 1

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    invoke-virtual {p2, p1, v0}, Lcom/apicloud/a/i/a/aa/k;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    invoke-virtual {p2, v0, p1}, Lcom/apicloud/a/i/a/aa/k;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->b(Z)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/d;->b()I

    move-result v0

    return v0
.end method

.method public e(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->k(I)V

    return-void
.end method

.method protected e(II)V
    .locals 2

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/aa/d;->c()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/a/aa/k;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/f;->e:Lcom/apicloud/a/i/a/aa/k;

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v1}, Lcom/apicloud/a/i/a/aa/d;->c()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/i/a/aa/k;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->k(Z)V

    return-void
.end method

.method public final f()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->b(I)Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->l(Z)V

    return-void
.end method

.method public final g()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->e()I

    move-result v0

    :goto_0
    return v0
.end method

.method public g(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->o(I)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/aa/d;->c(Z)V

    return-void
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public h(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->p(I)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/aa/f;->i(Z)V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/a;->a(I)V

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/f;->f(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/d;->c()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->i:Lcom/apicloud/a/i/a/aa/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/a;->b(I)V

    return-void
.end method

.method public final k()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/d;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/f;->h:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Lcom/apicloud/a/i/a/x/c;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/aa/f;->n()V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->a:Lcom/apicloud/a/i/a/aa/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/aa/e;->removeViewAt(I)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/x/c;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[scroll-view]"

    return-object v0
.end method

.method protected z()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f;->b:Lcom/apicloud/a/i/a/aa/d;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/aa/d;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
