.class public Lcom/apicloud/a/i/a/aa/g;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/aa/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method static a(Lcom/apicloud/a/i/a/aa/f;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v1, p1}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    :goto_0
    return-void
.end method

.method static a(Lcom/apicloud/a/i/a/aa/f;II)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/aa/g$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/apicloud/a/i/a/aa/g$2;-><init>(Lcom/apicloud/a/i/a/aa/f;II)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/apicloud/a/i/a/aa/d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/aa/g;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method static b(Lcom/apicloud/a/i/a/aa/f;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/f;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v1}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    :goto_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "scroll-x"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "scrollX"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->n(I)V

    :cond_2
    return-void
.end method

.method private c(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/apicloud/a/i/a/aa/d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/aa/g;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    :cond_1
    :goto_0
    return p1
.end method

.method static c(Lcom/apicloud/a/i/a/aa/f;I)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/aa/g$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/aa/g$1;-><init>(Lcom/apicloud/a/i/a/aa/f;I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/aa/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "scroll-y"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "scrollY"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->n(I)V

    :cond_2
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scrollXBar"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->setHorizontalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scrollYBar"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->setVerticalScrollBarEnabled(Z)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "show-scrollbar"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->g(Z)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "bounces"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->h(Z)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scroll-top"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->i(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;I)V

    :cond_1
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scroll-left"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->j(I)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/aa/g;->b(Lcom/apicloud/a/i/a/aa/f;I)V

    :cond_1
    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scroll-into-view"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->l()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scroll-with-animation"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->b(Z)V

    :cond_0
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "scroll-enabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "scrollEnabled"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->c(Z)V

    :cond_2
    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "paging-enabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->d(Z)V

    :cond_0
    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "enable-back-to-top"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->j(Z)V

    :cond_0
    return-void
.end method

.method private o(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "refresher-enabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->e(Z)V

    :cond_0
    return-void
.end method

.method private p(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "refresher-threshold"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->g(I)V

    :cond_0
    return-void
.end method

.method private q(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "refresher-background"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget v0, Lcom/apicloud/a/g/b;->d:I

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->h(I)V

    :cond_0
    return-void
.end method

.method private r(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "refresher-triggered"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->f(Z)V

    :cond_0
    return-void
.end method

.method private s(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "upper-threshold"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->a(I)V

    :cond_0
    return-void
.end method

.method private t(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "lower-threshold"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/aa/f;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x3efcc74

    if-eq v0, v1, :cond_2

    const v1, 0x18e6d348

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "scrollTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->k()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "scrollLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->j()I

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V
    .locals 2

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2, p1}, Lcom/apicloud/a/i/a/aa/g;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/aa/f;)V

    goto :goto_0
.end method

.method a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V
    .locals 3

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/aa/f;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/aa/g;->b(Landroid/view/View;)I

    move-result p2

    move v2, v1

    move v1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/aa/g;->c(Landroid/view/View;)I

    move-result p2

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p1, v1, p2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, p2}, Lcom/apicloud/a/i/a/aa/f;->b(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/aa/f;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "scrollToTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "scroll-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->i(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "refresher-threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->p(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "scrollY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "scrollX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "scroll-into-view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->j(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "enable-back-to-top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->n(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v0, "scroll-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "upper-threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "refresher-background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->q(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_a
    const-string v0, "scroll-with-animation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->k(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_b
    const-string v0, "bounces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->g(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_c
    const-string v0, "scrollYBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->e(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_d
    const-string v0, "scrollXBar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->d(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_e
    const-string v0, "scroll-top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->h(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_f
    const-string v0, "show-scrollbar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->f(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_10
    const-string v0, "lowerThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "scroll-y"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->c(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_12
    const-string v0, "scroll-x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->b(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_13
    const-string v0, "paging-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->m(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_14
    const-string v0, "scrollEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->l(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_15
    const-string v0, "refresher-triggered"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->r(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_16
    const-string v0, "lower-threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->t(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_17
    const-string v0, "refresher-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->o(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_18
    const-string v0, "upperThreshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/aa/g;->s(Lcom/apicloud/a/i/a/aa/f;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c54be17 -> :sswitch_18
        -0x5e1f84c4 -> :sswitch_17
        -0x5da41b61 -> :sswitch_16
        -0x55564e6e -> :sswitch_15
        -0x449b944c -> :sswitch_14
        -0x234fc600 -> :sswitch_13
        -0x17f89288 -> :sswitch_12
        -0x17f89287 -> :sswitch_11
        -0x15c85596 -> :sswitch_10
        -0xdfe14aa -> :sswitch_f
        0x3e1ee55 -> :sswitch_e
        0x3f4bce8 -> :sswitch_d
        0x3f53147 -> :sswitch_c
        0x430daeb -> :sswitch_b
        0x903a23d -> :sswitch_a
        0x9df1f53 -> :sswitch_9
        0x275b3d00 -> :sswitch_8
        0x2e113841 -> :sswitch_7
        0x3bddfd5f -> :sswitch_6
        0x3f8b5ef2 -> :sswitch_5
        0x72d6f32b -> :sswitch_4
        0x72d6f32c -> :sswitch_3
        0x7536c1a6 -> :sswitch_2
        0x78581307 -> :sswitch_1
        0x7a7ec60d -> :sswitch_0
    .end sparse-switch
.end method

.method d()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/g;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->p()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/g;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->q()I

    move-result v0

    return v0
.end method
