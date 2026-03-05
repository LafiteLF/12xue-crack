.class Lcom/apicloud/a/i/e/e;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->q(F)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->t(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method public static a(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/apicloud/a/i/e/e$1;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/e/e$1;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->r(F)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->u(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->j(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->m(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private c(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->s(F)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->v(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method private d(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->k(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->n(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private d(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->p(F)V

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->s(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method

.method private e(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->n(F)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/o/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/o/a;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/o/a;->setMinWidth(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->q(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private e(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->u(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p3, p2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->x(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private f(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->l(F)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/o/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/o/a;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/o/a;->setMinHeight(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->o(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private f(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->v(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->y(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private g(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->o(F)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/o/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/o/a;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/o/a;->setMaxWidth(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->r(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private g(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->w(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    float-to-int p2, p2

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->z(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private h(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->m(F)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/o/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/o/a;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/o/a;->setMaxHeight(I)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->p(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private h(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/e;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/e;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->z()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->t(F)V

    goto :goto_0

    :cond_1
    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :cond_2
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->w(Ljava/lang/String;)V

    :goto_0
    if-eqz p3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    return-void
.end method

.method private i(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    aget-object p2, p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/a/i/e/e;->d(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    array-length v0, p2

    if-ne v2, v0, :cond_2

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->d(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    array-length v0, p2

    if-ne v3, v0, :cond_3

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v4

    goto :goto_0

    :cond_3
    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v3

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private j(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    aget-object p2, p2, v0

    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/a/i/e/e;->h(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    array-length v0, p2

    if-ne v2, v0, :cond_2

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->h(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v3

    invoke-direct {p0, p1, p2, v4}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    array-length v0, p2

    if-ne v3, v0, :cond_3

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v4

    goto :goto_0

    :cond_3
    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v3

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object v0, p2, v2

    invoke-direct {p0, p1, v0, v4}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;Z)V

    aget-object p2, p2, v3

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x48916256

    if-eq v1, v2, :cond_5

    const v2, -0x361a1933

    if-eq v1, v2, :cond_3

    const v2, 0x1bd1f072

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "visible"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->n(I)V

    invoke-static {p1, p2}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Z)V

    return-void

    :cond_3
    const-string p1, "scroll"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->n(I)V

    return-void

    :cond_5
    const-string v1, "hidden"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_0
    return-void

    :cond_6
    const/4 p2, 0x1

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->n(I)V

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->x()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1, p2}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Z)V

    :cond_7
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "marginLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->d(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_1
    const-string v0, "marginRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_2
    const-string v0, "paddingRight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_3
    const-string v0, "overflow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_4
    const-string v0, "maxWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_5
    const-string v0, "paddingBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->g(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_6
    const-string v0, "width"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_7
    const-string v0, "paddingTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_8
    const-string v0, "minHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->f(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_9
    const-string v0, "marginBottom"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->c(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_a
    const-string v0, "padding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->j(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_b
    const-string v0, "maxHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_0

    :cond_b
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->h(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_c
    const-string v0, "marginTop"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_0

    :cond_c
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :sswitch_d
    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_0

    :cond_d
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    return p1

    :sswitch_e
    const-string v0, "margin"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_0

    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->i(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_f
    const-string v0, "height"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_0

    :cond_f
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->d(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_10
    const-string v0, "minWidth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_0

    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/e;->e(Landroid/view/View;Ljava/lang/String;)V

    return v1

    :sswitch_11
    const-string v0, "paddingLeft"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_0

    :cond_11
    invoke-direct {p0, p1, p3, v1}, Lcom/apicloud/a/i/e/e;->h(Landroid/view/View;Ljava/lang/String;Z)V

    return v1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x597a2048 -> :sswitch_11
        -0x5201456c -> :sswitch_10
        -0x48c76ed9 -> :sswitch_f
        -0x40737a52 -> :sswitch_e
        -0x3f826a28 -> :sswitch_d
        -0x3e464339 -> :sswitch_c
        -0x36017855 -> :sswitch_b
        -0x300fc3ef -> :sswitch_a
        -0x113c6e87 -> :sswitch_9
        -0x7f661e7 -> :sswitch_8
        0x55f4784 -> :sswitch_7
        0x6be2dc6 -> :sswitch_6
        0xc0fb19c -> :sswitch_5
        0x17dd56c2 -> :sswitch_4
        0x1f91b402 -> :sswitch_3
        0x2a8c788b -> :sswitch_2
        0x3a1ea90e -> :sswitch_1
        0x757a12d5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 5

    invoke-virtual {p2}, Lcom/apicloud/a/c;->e()Lcom/apicloud/a/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v2, v4}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Landroid/view/View;Ljava/lang/String;)Z
    .locals 4

    instance-of v0, p1, Lcom/apicloud/a/i/a/q/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x514d33ab

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    const v2, 0x32a007

    if-eq v0, v2, :cond_3

    const v2, 0x677c21c

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Lcom/apicloud/c/b/b;->k(I)V

    return v3

    :cond_3
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1, v1}, Lcom/apicloud/c/b/b;->k(I)V

    return v3

    :cond_5
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    :goto_0
    return v1

    :cond_6
    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/apicloud/c/b/b;->k(I)V

    return v3
.end method
