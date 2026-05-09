.class public Lcom/apicloud/a/i/a/k/f;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/apicloud/a/i/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/k/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->isRelative()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/f;->a()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private c(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "headers"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->a(Lcom/apicloud/b/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "avm"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->a(Z)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "pageParam"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->b(Lcom/apicloud/b/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "historyGestureEnabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->b(Z)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "bounces"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->c(Z)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "vScrollBarEnabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->d(Z)V

    :cond_0
    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "hScrollBarEnabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->e(Z)V

    :cond_0
    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scaleEnabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->f(Z)V

    :cond_0
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "progress"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->c(Lcom/apicloud/b/a/b;)V

    :cond_0
    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "reload"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->g(Z)V

    :cond_0
    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "allowEdit"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->h(Z)V

    :cond_0
    return-void
.end method

.method private o(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "overScrollMode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->d(Ljava/lang/String;)V

    return-void
.end method

.method private p(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "customRefreshHeader"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/h;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

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

    move-object v2, p1

    check-cast v2, Lcom/apicloud/a/i/a/k/h;

    invoke-virtual {p0, v1, p2, v2}, Lcom/apicloud/a/i/a/k/f;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/k/h;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/k/h;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "pageParam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->f(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "headers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->d(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "scaleEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->k(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "hScrollBarEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->j(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "allowEdit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->n(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "bounces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->h(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->a(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v0, "data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->c(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_8
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->b(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_9
    const-string v0, "avm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->e(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_a
    const-string v0, "historyGestureEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->g(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_b
    const-string v0, "reload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->m(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_c
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_0

    :cond_c
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->l(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_d
    const-string v0, "overScrollMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_0

    :cond_d
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->o(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_e
    const-string v0, "customRefreshHeader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->p(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_f
    const-string v0, "vScrollBarEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_0

    :cond_f
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/k/f;->i(Lcom/apicloud/a/i/a/k/h;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7222850f -> :sswitch_f
        -0x5a4beaa9 -> :sswitch_e
        -0x4ec079fc -> :sswitch_d
        -0x3bab3dd3 -> :sswitch_c
        -0x37b57e67 -> :sswitch_b
        -0x2fb9f094 -> :sswitch_a
        0x17ad8 -> :sswitch_9
        0x1c56f -> :sswitch_8
        0x2eefaa -> :sswitch_7
        0x337a8b -> :sswitch_6
        0x430daeb -> :sswitch_5
        0x1625b8f3 -> :sswitch_4
        0x249356e3 -> :sswitch_3
        0x250ff297 -> :sswitch_2
        0x2f676f86 -> :sswitch_1
        0x33d3073e -> :sswitch_0
    .end sparse-switch
.end method
