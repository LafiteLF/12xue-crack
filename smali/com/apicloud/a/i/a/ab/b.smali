.class public Lcom/apicloud/a/i/a/ab/b;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/ab/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private b(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "min"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->r(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->c(D)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "max"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->r(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->b(D)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->r(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->a(D)V

    :cond_0
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "step"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->r(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/ab/a;->d(D)V

    :cond_0
    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "block-size"

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/ab/b;->a(Lcom/apicloud/a/c;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->d(I)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "block-color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/ab/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->c(I)V

    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
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

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/ab/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->b(I)V

    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
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

    invoke-static {p2, v0}, Lcom/apicloud/a/i/a/ab/b;->a(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ab/a;->a(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ab/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ab/b;->a(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V
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

    invoke-virtual {p0, v1, p2, p1}, Lcom/apicloud/a/i/a/ab/b;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/ab/a;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/ab/a;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "backgroundColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->h(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "blockColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :sswitch_2
    const-string v0, "block-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v0, "blockSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->f(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->d(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "step"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->e(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "min"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->b(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v0, "max"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->c(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_8
    const-string v0, "block-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->g(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_9
    const-string v0, "activeColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/ab/b;->i(Lcom/apicloud/a/i/a/ab/a;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4036cc03 -> :sswitch_9
        -0xd0b55dd -> :sswitch_8
        0x1a564 -> :sswitch_7
        0x1a652 -> :sswitch_6
        0x3606cc -> :sswitch_5
        0x6ac9171 -> :sswitch_4
        0x34000a2e -> :sswitch_3
        0x49ee0d41 -> :sswitch_2
        0x4b224ad6 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch
.end method
