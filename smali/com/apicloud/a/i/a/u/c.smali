.class public Lcom/apicloud/a/i/a/u/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/u/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Landroid/widget/ArrayAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private a(Lcom/apicloud/a/i/a/u/b;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/c;->a()Lcom/apicloud/a/d;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/u/c$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/a/u/c$1;-><init>(Lcom/apicloud/a/i/a/u/c;Lcom/apicloud/a/i/a/u/b;)V

    invoke-interface {v0, v1}, Lcom/apicloud/a/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/u/b;I)V
    .locals 1

    const/4 v0, 0x0

    if-gez p2, :cond_0

    invoke-virtual {p1, v0, v0}, Lcom/apicloud/a/i/a/u/b;->a(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/u/b;->a(IZ)V

    :goto_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-class v0, Ljava/lang/String;

    const-string v1, "items"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "index"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/b;->e()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/u/b;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;I)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/b;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/b/c;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/b;->d()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/u/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/a;->a(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "fontSize"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->e(Ljava/lang/String;)Lcom/apicloud/a/g/e/f;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/b;->d()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/u/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/u/a;->a(Lcom/apicloud/a/g/e/f;)V

    :cond_0
    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
    .locals 0

    const-string p1, "borderColor"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/b/c;->a(Ljava/lang/String;)Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/u/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V
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
    const-string v2, "borderColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->i(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "fontSize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->h(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "range"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->c(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_3
    const-string v2, "items"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->e(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_4
    const-string v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->f(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->g(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_6
    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->b(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_7
    const-string v2, "range-key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/c;->d(Lcom/apicloud/a/i/a/u/b;Lcom/apicloud/a/c;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2cde9a31 -> :sswitch_7
        0x3339a3 -> :sswitch_6
        0x5a72f63 -> :sswitch_5
        0x5fb28d2 -> :sswitch_4
        0x5fde7c0 -> :sswitch_3
        0x674393d -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x2b158697 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/apicloud/a/i/a/u/b;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/u/b;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/b;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/u/a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/c;->a(Landroid/widget/ArrayAdapter;)V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/c;->a(Lcom/apicloud/a/i/a/u/b;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/u/a;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
