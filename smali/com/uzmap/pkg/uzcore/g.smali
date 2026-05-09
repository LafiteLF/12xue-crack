.class public final Lcom/uzmap/pkg/uzcore/g;
.super Lcom/uzmap/pkg/uzcore/h/w;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/uzmap/pkg/uzcore/b/d;

.field private d:Lcom/uzmap/pkg/uzcore/d/c;

.field private e:Lcom/uzmap/pkg/uzcore/k;

.field private f:Lcom/uzmap/pkg/uzcore/af;

.field private g:Lcom/uzmap/pkg/uzcore/e;

.field private h:Lcom/uzmap/pkg/uzcore/y;

.field private i:Lcom/uzmap/pkg/uzcore/e$a;

.field private j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/w;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/g$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/g$1;-><init>(Lcom/uzmap/pkg/uzcore/g;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->j:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    new-instance p1, Lcom/uzmap/pkg/uzcore/k;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzcore/k;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    new-instance p1, Lcom/uzmap/pkg/uzcore/y;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzcore/y;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 4

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->A()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eq p2, v2, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p2

    if-eqz p2, :cond_2

    move-object p1, p2

    :cond_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    new-instance v2, Lcom/uzmap/pkg/uzcore/g$7;

    invoke-direct {v2, p0, p1, p3}, Lcom/uzmap/pkg/uzcore/g$7;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/af;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/c;->b()Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_0

    :cond_3
    iget-object p1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void

    :cond_4
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p2

    if-eqz p2, :cond_5

    move-object p1, p2

    :cond_5
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    new-instance p3, Lcom/uzmap/pkg/uzcore/g$6;

    invoke-direct {p3, p0, p1}, Lcom/uzmap/pkg/uzcore/g$6;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/af;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/c;->b()Z

    move-result p3

    if-eqz p3, :cond_6

    :goto_0
    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/c;->bringToFront()V

    :cond_6
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->p()V

    iget-object p3, v0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    iget-object p1, v0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {p2, v3}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/k;->b(Lcom/uzmap/pkg/uzcore/d/c;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void

    :cond_8
    new-instance v2, Lcom/uzmap/pkg/uzcore/g$5;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/uzmap/pkg/uzcore/g$5;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-interface {p2, v2}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/af;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/c;->b()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->bringToFront()V

    :cond_9
    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/c;->p()V

    iget-object p3, v0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-interface {p2, p3}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {p2, v1}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    iget-object p2, v0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {p1, v3}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    goto :goto_1

    :cond_a
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-ne p1, p2, :cond_b

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void

    :cond_b
    new-instance p3, Lcom/uzmap/pkg/uzcore/g$4;

    invoke-direct {p3, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/g$4;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/d/c;)V

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/af;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/c;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/c;->bringToFront()V

    :cond_c
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->p()V

    iget-object p3, v0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    iget-object p1, v0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzcore/d/c;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 p1, 0x8

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->invalidate()V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/c;Z)V
    .locals 1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->d(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/k;->e(Lcom/uzmap/pkg/uzcore/d/c;)V

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void

    :cond_1
    move-object p2, p1

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/g;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/g;->u()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/g;)Lcom/uzmap/pkg/uzcore/k;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    return-object p0
.end method

.method private b(Lcom/uzmap/pkg/uzcore/d/c;Z)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->b_(I)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/k;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/k;->d(Lcom/uzmap/pkg/uzcore/d/c;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->H()V

    return-void
.end method

.method private d(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)Z
    .locals 5

    iget-object p2, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-interface {p2, p0}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/g;)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-interface {p2, v1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/b;)V

    iget v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->M:I

    invoke-interface {p2, v1}, Lcom/uzmap/pkg/uzcore/d/c;->f(I)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {p2, v1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_0
    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/c;->q()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->L:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    new-array v1, v4, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object p3, v1, v0

    invoke-interface {p2, v1}, Lcom/uzmap/pkg/uzcore/d/c;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :cond_2
    iget-boolean p3, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->z:Z

    if-eqz p3, :cond_3

    invoke-direct {p0, p2, v4}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    return v4

    :cond_3
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {p3, p2}, Lcom/uzmap/pkg/uzcore/k;->c(Lcom/uzmap/pkg/uzcore/d/c;)V

    move-object p3, p2

    check-cast p3, Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-eq v1, p0, :cond_4

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    move-object v1, v2

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzcore/g;->addView(Landroid/view/View;)V

    :cond_5
    invoke-direct {p0, p2, v0, v2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzcore/d/c;->h(Ljava/lang/String;)V

    return v4

    :cond_6
    return v0
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->f:Lcom/uzmap/pkg/uzcore/af;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/af;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/af;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->c()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    move-result-object v0

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzcore/j;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/uzmap/pkg/uzcore/j;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/uzmap/pkg/uzcore/ak;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/uzmap/pkg/uzcore/ak;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    :goto_0
    const-string v2, "root"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->e(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->b(I)V

    const/4 v2, -0x1

    invoke-static {v2, v2, v3, v3}, Lcom/deepe/c/b/e;->b(IIII)Lcom/uzmap/pkg/uzcore/h/w$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->k()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/b/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v1, v3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iget-boolean v2, v2, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->c(Z)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iget-boolean v2, v2, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/j;->b_(Z)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v2, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/e;->r()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_4
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Landroid/content/Intent;)V

    return-void
.end method

.method final a(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->a()Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/y;->a(Landroid/view/View;)Z

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/a;I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/a;I)V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->c(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->i:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e$a;->deliverPageStarted(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/af;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->f:Lcom/uzmap/pkg/uzcore/af;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/b/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->a()Lcom/uzmap/pkg/uzcore/h/t;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/q;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/t;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/uzmap/pkg/uzcore/y;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/g$2;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/g$2;-><init>(Lcom/uzmap/pkg/uzcore/g;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/t;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 4

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/c;->c(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->F()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->B()I

    move-result p1

    if-lez p1, :cond_3

    new-instance v1, Lcom/uzmap/pkg/uzcore/g$3;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/g$3;-><init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :goto_1
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->b()V

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->n()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/g;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->x()V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->l()V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->b()V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/d;)V
    .locals 4

    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    new-instance p2, Lcom/uzmap/pkg/uzcore/n;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0, p3}, Lcom/uzmap/pkg/uzcore/n;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/n;->h(I)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/n;->a(Lcom/uzmap/pkg/uzcore/b;)V

    iget v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->M:I

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/n;->f(I)V

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/n;->c_(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/n;->i(I)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v2, v2, v3, v3}, Lcom/deepe/c/b/e;->b(IIII)Lcom/uzmap/pkg/uzcore/h/w$a;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/n;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Lcom/uzmap/pkg/uzcore/n;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/n;->b_(I)V

    iget-boolean v2, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->J:Z

    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/n;->c(Z)V

    iget-boolean v2, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->I:Z

    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/n;->b_(Z)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/n;->h(Ljava/lang/String;)V

    invoke-direct {p0, p2, v3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object p3, p1, v3

    iget-object v2, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v2, :cond_0

    iget-object v2, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object v2, p1, v1

    :cond_0
    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v1, :cond_1

    iget-object p3, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object p3, p1, v0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/n;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/n;->F()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/r;)V
    .locals 4

    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    new-instance p2, Lcom/uzmap/pkg/uzcore/ai;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p0, p3}, Lcom/uzmap/pkg/uzcore/ai;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/ai;->g(I)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/ai;->a(Lcom/uzmap/pkg/uzcore/b;)V

    iget v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->M:I

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/ai;->f(I)V

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/ai;->h(I)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v1, v2, v2}, Lcom/deepe/c/b/e;->b(IIII)Lcom/uzmap/pkg/uzcore/h/w$a;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/ai;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p3}, Lcom/uzmap/pkg/uzcore/ai;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/ai;->b_(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->n()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    iget-boolean v3, v1, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {p3, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->d(Z)Z

    move-result v3

    invoke-virtual {p2, v3}, Lcom/uzmap/pkg/uzcore/ai;->c(Z)V

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {p3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e(Z)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/ai;->b_(Z)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/ai;->h(Ljava/lang/String;)V

    iget p1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->b:I

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/ai;->e_(I)V

    invoke-direct {p0, p2, v2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->f:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object v1, p1, v2

    iget-object p3, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object p3, p1, v0

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/ai;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/ai;->F()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 3

    new-instance v0, Lcom/deepe/sdk/ViewEntity;

    invoke-direct {v0, p3}, Lcom/deepe/sdk/ViewEntity;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    iput-object v1, v0, Lcom/deepe/sdk/ViewEntity;->url:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/am;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)Lcom/deepe/sdk/OptResult;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/deepe/sdk/ViewEntity;Lcom/deepe/sdk/OptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 2

    new-instance v0, Lcom/deepe/sdk/ViewEntity;

    invoke-direct {v0, p2}, Lcom/deepe/sdk/ViewEntity;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    if-eqz p2, :cond_0

    const-string v1, "delta"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/deepe/sdk/ViewEntity;->delta:I

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/deepe/sdk/ViewEntity;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->i:Lcom/uzmap/pkg/uzcore/e$a;

    return-void
.end method

.method a(Lcom/uzmap/pkg/uzcore/h/n$a;)V
    .locals 2

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/h/n$a;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/h/n$a;Z)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/p$a;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/p$a;Z)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    :cond_0
    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Z)V

    return-void
.end method

.method public final a(ZLcom/deepe/b/b/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/k;->a(ZLcom/deepe/b/b/c;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/k;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/g;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    return p1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/y;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/g;->a:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/g;->a:I

    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/g;->a:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/g;->a:I

    return-void
.end method

.method final b(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->i:Lcom/uzmap/pkg/uzcore/e$a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->i()Lcom/uzmap/pkg/openapi/WebViewProvider;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e$a;->deliverPageFinished(Lcom/uzmap/pkg/openapi/WebViewProvider;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    return-void
.end method

.method final b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 4

    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->d(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->n()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p2

    iget-boolean v0, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/j;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/uzmap/pkg/uzcore/j;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/ak;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/uzmap/pkg/uzcore/ak;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V

    :goto_0
    iget-boolean v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/j;->b(I)V

    iget-object v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/b;)V

    iget v1, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->M:I

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/j;->f(I)V

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p3, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/b/d;->g()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/j;->d(I)V

    const/4 v3, -0x1

    invoke-static {v3, v3, v2, v2}, Lcom/deepe/c/b/e;->b(IIII)Lcom/uzmap/pkg/uzcore/h/w$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/j;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p3}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/j;->b_(I)V

    iget-boolean v3, p2, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {p3, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d(Z)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/j;->c(Z)V

    iget-boolean p2, p2, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {p3, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->e(Z)Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/j;->b_(Z)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/j;->h(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/j;->t()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    new-array p1, v1, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    aput-object p3, p1, v2

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/j;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/j;->F()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/j;->t()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_4
    return-void
.end method

.method final b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object p1, v0

    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-eq v0, p1, :cond_6

    if-eqz p2, :cond_5

    iget-boolean v2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->T:Z

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    return-void

    :cond_6
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/g;->g:Lcom/uzmap/pkg/uzcore/e;

    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/e;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;Z)V

    return-void

    :cond_7
    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->A()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    :cond_8
    if-eqz p2, :cond_9

    iget-object v3, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d:Lcom/uzmap/pkg/uzcore/b;

    :cond_9
    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    :cond_0
    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->b(Z)V

    return-void
.end method

.method final b(Lcom/uzmap/pkg/uzcore/d/c;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/y;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method final c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method final c(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->b(Z)V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->W:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method final c(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 2

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->A()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d:Lcom/uzmap/pkg/uzcore/b;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/g;->b:Z

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->c()Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/d/c;->a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    :cond_0
    return-void
.end method

.method final d(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 2

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/deepe/c/k/h;->a()V

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->A()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/b;->e()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->d:Lcom/uzmap/pkg/uzcore/b;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :cond_3
    :goto_1
    return-void
.end method

.method final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/k;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->l()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->m()V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/g;->i()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, v2, v2}, Lcom/uzmap/pkg/uzcore/d/c;->b(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/uzmap/pkg/uzcore/d/c;->d(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->r()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/k;->a()V

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/k;->b()V

    return-void
.end method

.method protected m()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/k;->c()V

    return-void
.end method

.method final n()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    return-object v0
.end method

.method public o()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->i()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    return-object v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/h/w;->onAnimationEnd()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/g;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/g;->u()V

    :cond_0
    return-void
.end method

.method public final p()Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    return-object v0
.end method

.method final q()Lcom/uzmap/pkg/uzcore/uzmodule/f;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->w:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->f:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/g;->b:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->d:Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->e:Lcom/uzmap/pkg/uzcore/k;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/k;->d()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g;->h:Lcom/uzmap/pkg/uzcore/y;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/y;->a()V

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "widget@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g;->c:Lcom/uzmap/pkg/uzcore/b/d;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
