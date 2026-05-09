.class public Lcom/uzmap/pkg/uzcore/j;
.super Lcom/uzmap/pkg/uzcore/h/y;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/d/i;


# instance fields
.field protected a:Lcom/uzmap/pkg/uzcore/g;

.field private b:Lcom/uzmap/pkg/uzcore/af;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/uzmap/pkg/uzcore/d/a;

.field private g:Lcom/uzmap/pkg/uzcore/t;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/uzmap/pkg/uzcore/d/c;

.field private n:Ljava/lang/String;

.field private o:Lcom/uzmap/pkg/uzcore/b;

.field private p:I

.field private q:Lcom/uzmap/pkg/uzcore/ah;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/g;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/j;->h:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/j;->i:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/j;->j:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/j;->k:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/j;->l:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/j;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->q:Lcom/uzmap/pkg/uzcore/ah;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    new-instance p2, Lcom/uzmap/pkg/uzcore/t;

    invoke-direct {p2}, Lcom/uzmap/pkg/uzcore/t;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->setFocusable(Z)V

    return-void
.end method

.method private L()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->d()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "pause"

    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private M()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->e()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->c()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "resume"

    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private N()Z
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->r()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->o()V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/a;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(I)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/a;Landroid/webkit/ValueCallback;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->k()Lcom/uzmap/pkg/uzcore/aa;

    move-result-object v0

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/aa;->b:Ljava/lang/String;

    iget v2, v0, Lcom/uzmap/pkg/uzcore/aa;->c:I

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/aa;->d:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Lcom/uzmap/pkg/uzcore/c/d;->a(Ljava/lang/String;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/deepe/sdk/WebShare;->makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->a()Lcom/uzmap/pkg/uzcore/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->k:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/c/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-interface {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->c(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->d(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/a;->stopLoading()V

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/a;->destroy()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->e(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/j;Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)Z
    .locals 5

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/d/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b;->h()Lcom/uzmap/pkg/uzcore/q;

    move-result-object v4

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v4, p1}, Lcom/uzmap/pkg/uzcore/q;->a(Lcom/uzmap/pkg/uzcore/q;)Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v4, v2, v3}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2, v3}, Lcom/uzmap/pkg/uzcore/q;->a(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b;->isShown()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b;->bringToFront()V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b;->isShown()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/uzmap/pkg/uzcore/d/a;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->isShown()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/j$3;

    invoke-direct {v0, p0, p1, p2, p1}, Lcom/uzmap/pkg/uzcore/j$3;-><init>(Lcom/uzmap/pkg/uzcore/j;Lcom/uzmap/pkg/uzcore/d/a;ZLcom/uzmap/pkg/uzcore/d/a;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/external/a;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->u()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    if-nez p2, :cond_2

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d/a;->startAnimation(Landroid/view/animation/Animation;)V

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->isShown()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)Z
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v3

    iget-object v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_2
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->bringToFront()V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->isShown()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_3
    return v1

    :cond_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->n()Lcom/uzmap/pkg/uzcore/q;

    move-result-object v3

    iget-object v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/q;->a(Lcom/uzmap/pkg/uzcore/q;)Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->bringToFront()V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->isShown()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/b;)V

    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/j;->b(Lcom/uzmap/pkg/uzcore/d/a;Z)V

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    const-string v3, ""

    :goto_0
    iget-boolean v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->L:Z

    if-nez v4, :cond_9

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    :cond_9
    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    :cond_a
    move-object v2, v3

    :goto_1
    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->Q:Lcom/deepe/c/i/t;

    invoke-virtual {v0, v2, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_b
    return v1
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->o:Lcom/uzmap/pkg/uzcore/b;

    return-object v0
.end method

.method public B()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->d:I

    return v0
.end method

.method public C()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->f()V

    return-void
.end method

.method public D()Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->m:Lcom/uzmap/pkg/uzcore/d/c;

    return-object v0
.end method

.method public E()Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    return-object v0
.end method

.method public F()Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->n:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/j;->l:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/j;->h:Z

    return v0
.end method

.method public H()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/j;->h:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->C()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->g()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->removeAllViews()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Lcom/uzmap/pkg/uzcore/a;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    return-object p2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;

    move-result-object p1

    return-object p1
.end method

.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->b:Lcom/uzmap/pkg/uzcore/af;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/af;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/af;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    check-cast p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {p1, p0, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    check-cast p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/r;

    invoke-virtual {p1, p0, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/r;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    check-cast p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/d;

    invoke-virtual {p1, p0, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/d;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    check-cast p3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-virtual {p1, p0, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->c(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/j;->b(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v3, "mimeType"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Lcom/deepe/c/i/i;

    invoke-direct {v6}, Lcom/deepe/c/i/i;-><init>()V

    invoke-virtual {v6, v2, v0, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;J)V

    invoke-virtual {v6, v3, v4}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v5, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "sysdownloadcomplete"

    invoke-virtual {p0, v1, p1, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/deepe/c/b/e;->b(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "ui_window"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    invoke-static {p2}, Lcom/deepe/c/b/e;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 p4, 0x1

    :cond_2
    invoke-static {p3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez p3, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;)V

    return-void

    :cond_6
    if-eqz p2, :cond_a

    invoke-static {p2}, Lcom/deepe/c/b/e;->d(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_7
    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p3

    if-nez p3, :cond_8

    return-void

    :cond_8
    if-eqz p2, :cond_a

    if-eqz p4, :cond_9

    invoke-static {p2}, Lcom/deepe/c/b/e;->c(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    goto :goto_0

    :cond_9
    invoke-static {p2}, Lcom/deepe/c/b/e;->d(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/AbsoluteLayout$LayoutParams;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    invoke-virtual {p3, p1, p4, p5}, Lcom/uzmap/pkg/uzcore/d/a;->a(Landroid/view/View;ZZ)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_b

    new-instance p3, Lcom/uzmap/pkg/uzcore/j$1;

    invoke-direct {p3, p0, p1}, Lcom/uzmap/pkg/uzcore/j$1;-><init>(Lcom/uzmap/pkg/uzcore/j;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p2}, Landroid/view/animation/Animation;->start()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->invalidate()V

    :cond_b
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/ai;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/ai;->c()Z

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/f;)V
    .locals 1

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->w:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->u()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/f;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->c(Z)Z

    move-result v0

    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v1, p0, v2, v3, v0}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;ILjava/lang/String;Z)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->E:Z

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->k:Z

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->d(Z)V

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d(Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->setHorizontalScrollBarEnabled(Z)V

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e(Z)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->setVerticalScrollBarEnabled(Z)V

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->S:I

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->setOverScrollMode(I)V

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v2

    iget-object v3, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e:Lcom/uzmap/pkg/uzcore/q;

    iget-object v4, p1, Lcom/uzmap/pkg/uzcore/b/d;->u:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0, v4}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v4

    invoke-virtual {v3, v1, v2}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/q;)V

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->P:Lcom/uzmap/pkg/uzcore/ad;

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/ad;)V

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->F:Z

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->g(Z)V

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    const-string v2, "bounces"

    invoke-virtual {p2, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->A:Z

    :cond_2
    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/b/d;->f()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {v4, p1}, Lcom/uzmap/pkg/uzcore/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p1, v4, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;)V

    :goto_1
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->f()V

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->C:Z

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->D:Z

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->c(Z)V

    iget-object p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V

    iget-object p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->Q:Lcom/deepe/c/i/t;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    goto :goto_2

    :cond_6
    const/4 p2, 0x0

    invoke-interface {v0, p1, v1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->a()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;Z)V

    :cond_7
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/f;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/uzmap/pkg/uzcore/f;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->b(Ljava/lang/String;)V

    iget-boolean v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->l:Z

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->a(Z)V

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->a(Lcom/uzmap/pkg/uzcore/q;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->n:Lcom/uzmap/pkg/b/c/i$a;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->n:Lcom/uzmap/pkg/b/c/i$a;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f;->a(Lcom/uzmap/pkg/b/c/i$a;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/f;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/b;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/f;->i()V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/ai;

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/ai;->d(I)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/t;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/o;

    iget-object v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/i/o;-><init>(Ljava/lang/String;)V

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->a:I

    iput v1, v0, Lcom/uzmap/pkg/uzcore/i/o;->b:I

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->b:I

    iput v1, v0, Lcom/uzmap/pkg/uzcore/i/o;->c:I

    iget v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->c:I

    iput v1, v0, Lcom/uzmap/pkg/uzcore/i/o;->d:I

    iget p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/t;->d:I

    iput p2, v0, Lcom/uzmap/pkg/uzcore/i/o;->e:I

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/i/o;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 2

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "bounces"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    :cond_2
    const-string v0, "allowEdit"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->E:Z

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    :cond_3
    const-string v0, "scaleEnabled"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    iget-boolean v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->C:Z

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    :cond_4
    const-string p1, "hScrollBarEnabled"

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Z)V

    :cond_5
    const-string p1, "vScrollBarEnabled"

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->b_(Z)V

    :cond_6
    const-string p1, "statusBarAppearance"

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->K:Z

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->e(Z)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz p4, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->r()Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "\u52a0\u8f7d\u4e2d"

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->r()Lcom/uzmap/pkg/uzcore/ad;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/uzmap/pkg/uzcore/ad;->d:Ljava/lang/String;

    iget-object v3, v2, Lcom/uzmap/pkg/uzcore/ad;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object p4, v2, Lcom/uzmap/pkg/uzcore/ad;->e:Ljava/lang/String;

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p4, v1, v3}, Lcom/uzmap/pkg/uzcore/j;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->p()V

    iget-object p4, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p4, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/r;)V
    .locals 0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->w()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/r;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->y()V

    :cond_0
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->q()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;Landroid/webkit/ValueCallback;)V

    invoke-virtual {p0, v0, p3}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;Z)V

    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p3, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/a;->requestFocus()Z

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/a;->clearFocus()V

    :goto_1
    invoke-static {p4}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->H()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->d(Landroid/view/View;)V

    invoke-static {p4}, Lcom/uzmap/pkg/uzcore/c/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/ai;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/ai;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/af;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->b:Lcom/uzmap/pkg/uzcore/af;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->o:Lcom/uzmap/pkg/uzcore/b;

    return-void
.end method

.method a(Lcom/uzmap/pkg/uzcore/d/a;Z)V
    .locals 2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->r()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {p2, p0}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->u()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->b(Lcom/uzmap/pkg/uzcore/d/a;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->v()Z

    :cond_3
    :goto_0
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->w()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->u()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;)V

    :cond_5
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->m:Lcom/uzmap/pkg/uzcore/d/c;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/n$a;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/h/n$a;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget v1, p1, Lcom/uzmap/pkg/uzcore/p$a;->h:I

    const-string v2, "keyCode"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    const-string v1, "longPress"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/p$a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->T:Z

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->i:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->z:Z

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->j:Z

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->U:Z

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->l:Z

    if-eqz p1, :cond_3

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->V:Z

    if-nez v1, :cond_4

    :cond_3
    invoke-static {}, Lcom/deepe/d/a;->a()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/j;->k:Z

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->e(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/view/View;)Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    iget-boolean v3, v1, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    if-eqz p1, :cond_6

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->c(Z)Z

    move-result v3

    :cond_6
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "main"

    invoke-static {v4, p0, v0, v5, v3}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;ILjava/lang/String;Z)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v3

    iget-boolean v4, p0, Lcom/uzmap/pkg/uzcore/j;->k:Z

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/a;->d(Z)V

    if-eqz p1, :cond_7

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->E:Z

    :cond_7
    invoke-interface {v3, v0}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    iget-object v0, v1, Lcom/uzmap/pkg/uzcore/b/d;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    const-string v4, "bounces"

    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    if-eqz v4, :cond_9

    :cond_8
    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    :cond_9
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->j()Z

    iget-object v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/uzmap/pkg/uzcore/j;->e(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    iget v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->S:I

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/a;->setOverScrollMode(I)V

    iget-boolean v4, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->C:Z

    invoke-interface {v3, v4}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v0}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    if-eqz p1, :cond_a

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->P:Lcom/uzmap/pkg/uzcore/ad;

    :cond_a
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/ad;)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    iget-boolean v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->F:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->g(Z)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/deepe/c/b/e;->c()Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a;->f()V

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->D:Z

    invoke-interface {v3, p1}, Lcom/uzmap/pkg/uzcore/a;->c(Z)V

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/j;->q:Lcom/uzmap/pkg/uzcore/ah;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 2

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V

    goto :goto_2

    :cond_1
    :goto_0
    const-string v0, "frameName"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/o;)V
    .locals 3

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/o;->b:I

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/o;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/o;->c:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/o;->e:Z

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/uzmap/pkg/uzcore/j;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V
    .locals 2

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/q;->d:Landroid/webkit/ValueCallback;

    invoke-interface {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "launchviewclicked"

    invoke-virtual {p0, v1, p1, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/t;->e(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "noticeclicked"

    const-string v1, "api_arguments"

    if-ne p3, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    const-string v2, "appintent"

    const-string v3, "sourceAppId"

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/w;->a(Landroid/net/Uri;)Lcom/deepe/c/i/i;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v4}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    :catch_0
    invoke-virtual {p0, v0, p1, v4}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseAppParam(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v0

    :catch_1
    :cond_4
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "iosUrl"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "appParam"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "data"

    invoke-virtual {v0, p2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v4}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/b;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/b;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {p3, p1, p2}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLcom/deepe/b/b/c;)V
    .locals 3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p2, Lcom/deepe/b/b/c;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v0

    :catch_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string p2, "value"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_0
    const/4 p2, 0x0

    const-string v0, "smartupdatefinish"

    invoke-virtual {p0, v0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "connectionType"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    const-string p1, "online"

    goto :goto_0

    :cond_0
    const-string p1, "offline"

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public varargs a([Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->y:Ljava/lang/String;

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    const/4 v0, 0x0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/d/a;->setBackgroundColor(I)V

    invoke-static {}, Lcom/uzmap/pkg/b/a/b;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    :cond_4
    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/j;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Q:Lcom/deepe/c/i/t;

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->e:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a(Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;I)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-static {p1, v0, p0, p2}, Lcom/uzmap/pkg/uzcore/i/o;->a(Lcom/uzmap/pkg/uzcore/ah;Lcom/uzmap/pkg/uzcore/ah;Landroid/view/ViewGroup;I)Lcom/uzmap/pkg/uzcore/ah;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/j;->q:Lcom/uzmap/pkg/uzcore/ah;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v3, p1}, Lcom/uzmap/pkg/uzcore/t;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->h(Z)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/t;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    and-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/j;->e:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/uzmap/pkg/uzcore/j$2;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/j$2;-><init>(Lcom/uzmap/pkg/uzcore/j;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->invalidate()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->e(Landroid/view/View;)V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/n;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/n;->h_()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/uzmap/pkg/uzcore/a;I)V
    .locals 1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/d/a;->a(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/a;I)V

    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 2

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->v()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->u()Lcom/uzmap/pkg/uzcore/b;

    move-result-object v0

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d:Lcom/uzmap/pkg/uzcore/b;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/b;->a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/b;

    move-result-object p2

    :cond_4
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->b(Lcom/uzmap/pkg/uzcore/d/a;Z)V

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 6

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/d/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/b;->h()Lcom/uzmap/pkg/uzcore/q;

    move-result-object v4

    iget-object v5, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v4, v5}, Lcom/uzmap/pkg/uzcore/q;->a(Lcom/uzmap/pkg/uzcore/q;)Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v4, v0, v3}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/d/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0, v3}, Lcom/uzmap/pkg/uzcore/q;->a(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    :cond_3
    :goto_0
    const-string v0, "hidden"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->a:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/b;->isShown()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/d/b;->setVisibility(I)V

    :cond_5
    :goto_1
    const-string v0, "scrollEnabled"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->l:Z

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/b;->a(Z)V

    :cond_6
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->D()Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/d/c;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/uzmap/pkg/uzcore/n;

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/n;->g(I)Z

    :cond_0
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/g;->c(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->i(Z)V

    :cond_0
    return-void
.end method

.method public b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->goBack()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method public b_(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;->setVisibility(I)V

    return-void
.end method

.method public b_(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public bringToFront()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/h/y;->bringToFront()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/t;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 6

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->h()Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "vScrollBarEnabled"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->I:Z

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/a;->setVerticalScrollBarEnabled(Z)V

    :cond_2
    const-string v1, "hScrollBarEnabled"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->J:Z

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/a;->setHorizontalScrollBarEnabled(Z)V

    :cond_3
    const-string v1, "bounces"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->A:Z

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    :cond_4
    const-string v1, "allowEdit"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->E:Z

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    :cond_5
    const-string v1, "scaleEnabled"

    invoke-virtual {p2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->C:Z

    invoke-interface {p1, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    :cond_6
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->k()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->v()Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a()Z

    move-result p1

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getRight()I

    move-result p1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->n()Lcom/uzmap/pkg/uzcore/q;

    move-result-object v4

    iget-object v5, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e:Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v4, v5}, Lcom/uzmap/pkg/uzcore/q;->a(Lcom/uzmap/pkg/uzcore/q;)Lcom/uzmap/pkg/uzcore/q;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne p0, v5, :cond_9

    invoke-virtual {v4, p1, v3}, Lcom/uzmap/pkg/uzcore/q;->b(II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    goto :goto_1

    :cond_9
    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/q;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    :goto_1
    invoke-virtual {v0, v5}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, p1, v3}, Lcom/uzmap/pkg/uzcore/q;->a(II)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_b
    :goto_2
    const-string p1, "hidden"

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-boolean p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a:Z

    if-eqz p1, :cond_c

    invoke-direct {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;I)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->isShown()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Lcom/uzmap/pkg/uzcore/d/a;I)V

    :cond_d
    :goto_3
    return-void
.end method

.method public c(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 3

    iget-object v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    iget-boolean v1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->h:Z

    iget-boolean v2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->k:Z

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->x:Ljava/lang/String;

    invoke-virtual {p1, v0, p2, v1, v2}, Lcom/uzmap/pkg/uzcore/d/b;->b(ILjava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method public c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->e()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "value"

    invoke-virtual {v1, v2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public c(Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/g;->d(Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->setHorizontalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->goForward()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return p2
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/j;->c:I

    return-void
.end method

.method public d(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 1

    iget-object p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->bringChildToFront(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->indexOfChild(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;I)V

    :cond_4
    return-void
.end method

.method public d(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 0

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->g:Ljava/lang/String;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/b;->v()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/t;->d(Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Lcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)V
    .locals 1

    iget-object p1, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->c:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/j;->indexOfChild(Landroid/view/View;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;I)V

    return-void

    :cond_3
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/j;->indexOfChild(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->i(Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Ljava/lang/String;)Landroid/view/View;
    .locals 1

    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/a/i;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Lcom/uzmap/pkg/uzcore/h/u;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/j;->d:I

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/t;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lcom/uzmap/pkg/uzcore/d/a;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/a;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/j;->j(Ljava/lang/String;)V

    return-void
.end method

.method public i()V
    .locals 3

    const-string v0, "appidle"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public j()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->clearAnimation()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->onAnimationEnd()V

    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/j;->L()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;)Z

    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/j;->M()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/d/c;)Z

    return-void
.end method

.method public l()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->a(I)V

    :cond_1
    const/4 v0, 0x0

    const-string v2, "viewappear"

    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->q:Lcom/uzmap/pkg/uzcore/ah;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/ah;->requestFocus()Z

    :cond_2
    return-void
.end method

.method public m()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->a(I)V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "viewdisappear"

    invoke-virtual {p0, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/j;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->clearHistory()V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/j;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->d()V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->d()V

    return-void
.end method

.method public p()V
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/j;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->e()V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->g:Lcom/uzmap/pkg/uzcore/t;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/t;->e()V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->f:Lcom/uzmap/pkg/uzcore/d/a;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Z
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v0

    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/j;->i:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->clearAnimation()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/j;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "win["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/uzmap/pkg/uzcore/b/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->n()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->J()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->d(Z)I

    move-result v0

    return v0
.end method

.method public x()I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->e(Z)I

    move-result v0

    return v0
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/j;->K()V

    return-void
.end method

.method public z()Lcom/uzmap/pkg/uzcore/uzmodule/f;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/j;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->q()Lcom/uzmap/pkg/uzcore/uzmodule/f;

    move-result-object v0

    return-object v0
.end method
