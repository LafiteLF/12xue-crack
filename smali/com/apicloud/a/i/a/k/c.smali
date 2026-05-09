.class public Lcom/apicloud/a/i/a/k/c;
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

.method private a(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/e;->a(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "scrollEnabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/e;->a(Z)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "preload"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/k/e;->b(I)V

    :cond_0
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

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, v1, p2}, Lcom/apicloud/a/i/a/k/c;->b(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, v1, p2}, Lcom/apicloud/a/i/a/k/c;->a(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "preload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, v1, p2}, Lcom/apicloud/a/i/a/k/c;->d(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "scrollEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/a/k/e;

    invoke-direct {p0, v1, p2}, Lcom/apicloud/a/i/a/k/c;->c(Lcom/apicloud/a/i/a/k/e;Lcom/apicloud/a/c;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x449b944c -> :sswitch_3
        -0x12fb91f7 -> :sswitch_2
        0x337a8b -> :sswitch_1
        0x5fb28d2 -> :sswitch_0
    .end sparse-switch
.end method
