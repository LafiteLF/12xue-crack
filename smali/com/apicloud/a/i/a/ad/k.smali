.class public Lcom/apicloud/a/i/a/ad/k;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/ad/j;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "indicator-dots"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "indicatorDots"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->f(Z)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "indicator-active-color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "indicatorActiveColor"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->c(I)V
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/apicloud/a/g/n;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "autoplay"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->a(Z)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "current"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->a(I)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "interval"

    const/16 v1, 0x1388

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->d(I)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "duration"

    const/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->e(I)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "circular"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->b(Z)V

    :cond_0
    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "vertical"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->c(Z)V

    :cond_0
    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "swip-enabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->d(Z)V

    :cond_0
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "previous-margin"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/k;->b(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->f(I)V

    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "next-margin"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/k;->b(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->g(I)V

    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "easing-function"

    const-string v1, "default"

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method private o(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "snap-to-edge"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->e(Z)V

    :cond_0
    return-void
.end method

.method private p(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "display-multiple-items"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ad/j;->h(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->a(Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ad/j;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->a(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V
    .locals 3

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

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "indicator-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :sswitch_1
    const-string v2, "autoplay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->e(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v2, "current"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->f(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v2, "interval"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->g(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v2, "previous-margin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->l(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v2, "easing-function"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->n(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v2, "next-margin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->m(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v2, "indicatorDots"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :sswitch_8
    const-string v2, "indicatorActiveColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :sswitch_9
    const-string v2, "snap-to-edge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->o(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_a
    const-string v2, "indicator-active-color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->d(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_b
    const-string v2, "circular"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->i(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_c
    const-string v2, "indicatorColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->c(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_d
    const-string v2, "indicator-dots"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->b(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_e
    const-string v2, "display-multiple-items"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->p(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_f
    const-string v2, "swip-enabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->k(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_10
    const-string v2, "vertical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->j(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_11
    const-string v2, "duration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/k;->h(Lcom/apicloud/a/i/a/ad/j;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76bbb26c -> :sswitch_11
        -0x7643988a -> :sswitch_10
        -0x622f3a01 -> :sswitch_f
        -0x60cc71d2 -> :sswitch_e
        -0x5f2706b8 -> :sswitch_d
        -0x5dec0d6c -> :sswitch_c
        -0x594af961 -> :sswitch_b
        -0x3d592326 -> :sswitch_a
        -0x282e4134 -> :sswitch_9
        -0x2596f192 -> :sswitch_8
        -0x138b4907 -> :sswitch_7
        -0x6a04238 -> :sswitch_6
        -0x484a5c6 -> :sswitch_5
        0x16e4144 -> :sswitch_4
        0x21ffe4c5 -> :sswitch_3
        0x432bbd79 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x7a37fa25 -> :sswitch_0
    .end sparse-switch
.end method
