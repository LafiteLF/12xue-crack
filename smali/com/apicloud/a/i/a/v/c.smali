.class public Lcom/apicloud/a/i/a/v/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/v/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "max"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->setMax(I)V

    :cond_0
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "active"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->a(Z)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "active-mode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "activeColor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, -0xff9401

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->b(I)V

    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "backgroundColor"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, -0x141415

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->c(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/v/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/v/c;->a(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
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

    invoke-virtual {p0, v1, p2, p1}, Lcom/apicloud/a/i/a/v/c;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/v/b;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/v/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->h(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->b(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->d(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "percent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->c(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "activeColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->g(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "active-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->f(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/v/c;->e(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d080fa -> :sswitch_6
        -0x416daff6 -> :sswitch_5
        -0x4036cc03 -> :sswitch_4
        -0x28779bbb -> :sswitch_3
        0x1a564 -> :sswitch_2
        0x6ac9171 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->setProgress(I)V

    :cond_0
    return-void
.end method

.method protected c(Lcom/apicloud/a/i/a/v/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "percent"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/v/b;->a(I)V

    :cond_0
    return-void
.end method
