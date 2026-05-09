.class public Lcom/apicloud/a/i/a/t/b;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/t/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "target"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "url"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "open-type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "delta"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->a(I)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "app-id"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "path"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "extra-data"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "version"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "short-link"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->g(Ljava/lang/String;)V

    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "hover-class"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "hover-stop-propagation"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/a;->a(Z)V

    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "hover-start-time"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/t/a;->a(J)V

    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "hover-stay-time"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->t(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/t/a;->b(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->a(Lcom/apicloud/a/i/a/t/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/t/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->a(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V
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
    const-string v2, "short-link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->j(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "open-type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->d(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "hover-stay-time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->n(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "extra-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->h(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->i(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "hover-start-time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->m(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "delta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->e(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->g(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_8
    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->c(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "hover-stop-propagation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->l(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "target"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->b(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "app-id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->f(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "hover-class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/t/b;->k(Lcom/apicloud/a/i/a/t/a;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x62e75659 -> :sswitch_c
        -0x541c03b9 -> :sswitch_b
        -0x34818e6f -> :sswitch_a
        -0x2b8c4f0e -> :sswitch_9
        0x1c56f -> :sswitch_8
        0x346425 -> :sswitch_7
        0x5b0bbb8 -> :sswitch_6
        0x81be289 -> :sswitch_5
        0x14f51cd8 -> :sswitch_4
        0x29cb8747 -> :sswitch_3
        0x31b6ce70 -> :sswitch_2
        0x596ae8dd -> :sswitch_1
        0x5a92baab -> :sswitch_0
    .end sparse-switch
.end method
