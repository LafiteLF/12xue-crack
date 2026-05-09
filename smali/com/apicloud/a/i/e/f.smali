.class Lcom/apicloud/a/i/e/f;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "absolute"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :sswitch_1
    const-string v0, "fixed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0

    :sswitch_2
    const-string v0, "relative"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :sswitch_3
    const-string v0, "static"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35323192 -> :sswitch_3
        -0x210c0534 -> :sswitch_2
        0x5cee774 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->r(I)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    if-lez p2, :cond_0

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->s()I

    move-result p2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/f;->a(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->o(I)V

    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->y()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/f;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/f;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->f(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->i(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private c(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/f;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/f;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->g(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->j(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private d(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/f;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/f;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->h(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->k(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private e(Landroid/view/View;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-static {p2}, Lcom/apicloud/a/i/e/f;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/f;->a(Lcom/apicloud/a/g/l;)F

    move-result p2

    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->i(F)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p2}, Lcom/apicloud/c/b/b;->l(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private f(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/apicloud/a/g/e/c;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, -0xd

    if-eq p2, v0, :cond_1

    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/c/b/b;->q(I)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/apicloud/c/b/b;->q(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 2

    const-string v0, "position"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/f;->a(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    const-string v0, "left"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/f;->b(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    const-string v0, "top"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/f;->c(Landroid/view/View;Ljava/lang/String;)V

    :cond_2
    const-string v1, "right"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/f;->d(Landroid/view/View;Ljava/lang/String;)V

    :cond_3
    const-string v1, "bottom"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/f;->e(Landroid/view/View;Ljava/lang/String;)V

    :cond_4
    const-string v1, "zIndex"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/apicloud/a/g/e;->b(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/f;->a(Landroid/view/View;Ljava/lang/Integer;)V

    :cond_5
    const-string v1, "display"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/f;->f(Landroid/view/View;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/f;->c(Landroid/view/View;Ljava/lang/String;)V

    :cond_7
    return-object p2
.end method
