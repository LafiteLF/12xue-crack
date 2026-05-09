.class public Lcom/apicloud/a/i/a/u/h;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/u/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "multiSelector"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "date"

    const-string v2, "time"

    if-nez v0, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/g;->a(Z)V

    invoke-static {v2, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->b(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "header-text"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "range"

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/u/a/b;->a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/apicloud/a/i/a/u/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "range-key"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "start"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "end"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/g;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_2
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->f(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "fields"

    const-string v1, "day"

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->g(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/u/g;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->a(Lcom/apicloud/a/i/a/u/g;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/u/g;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x6ac9171

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/g;->d()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/u/g;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->a(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
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
    const-string v2, "header-text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->d(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->i(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->g(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "range"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->e(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->c(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->h(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "range-key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->f(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "fields"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/h;->j(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bfa8147 -> :sswitch_7
        -0x2cde9a31 -> :sswitch_6
        0x188db -> :sswitch_5
        0x3339a3 -> :sswitch_4
        0x674393d -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x6ac9171 -> :sswitch_1
        0x43d4146d -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/apicloud/a/i/a/u/g;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/u/a/b;->a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/apicloud/a/i/a/u/a/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/g;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    return-void
.end method
