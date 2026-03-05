.class public Lcom/apicloud/a/i/a/s/f;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/s/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "direction"

    const-string v1, "none"

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/i/a/s/f;->c(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->c(I)V

    return-void
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7643988a

    if-eq v0, v1, :cond_4

    const v1, 0x179a1

    if-eq v0, v1, :cond_2

    const v1, 0x52b58c24

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "horizontal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    const-string v0, "vertical"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private c(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "inertia"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->c(Z)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "out-of-bounds"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->a(Z)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "x"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->d(I)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "y"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->e(I)V

    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "damping"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->f(I)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "friction"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->g(I)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->setEnabled(Z)V

    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scale"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->e(Z)V

    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scale-min"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->a(F)V

    :cond_0
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scale-max"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->b(F)V

    :cond_0
    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scale-value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->c(F)V

    :cond_0
    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "animation"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/e;->f(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->a(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

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
    const-string v2, "inertia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->c(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "damping"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->g(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "animation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->n(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "disabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->i(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "scale"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->j(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->f(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->e(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "out-of-bounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->d(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_8
    const-string v2, "direction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->b(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "friction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->h(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "scale-min"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->k(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "scale-max"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->l(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "scale-value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/f;->m(Lcom/apicloud/a/i/a/s/e;Lcom/apicloud/a/c;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71a3f0d2 -> :sswitch_c
        -0x7000919f -> :sswitch_b
        -0x700090b1 -> :sswitch_a
        -0x54eb7906 -> :sswitch_9
        -0x395ff881 -> :sswitch_8
        -0x10b5454 -> :sswitch_7
        0x78 -> :sswitch_6
        0x79 -> :sswitch_5
        0x683094a -> :sswitch_4
        0x10263a7c -> :sswitch_3
        0x42ab1b84 -> :sswitch_2
        0x55a9bd02 -> :sswitch_1
        0x73e83aba -> :sswitch_0
    .end sparse-switch
.end method
