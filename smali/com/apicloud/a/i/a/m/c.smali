.class public Lcom/apicloud/a/i/a/m/c;
.super Lcom/apicloud/a/i/a/r/o;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/o;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/n;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/m/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/m/a;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "column-count"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "column-width"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->b(I)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "vertical-spacing"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->c(I)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "horizontal-spacing"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->d(I)V

    :cond_0
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "stretch-mode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/i/a/r/v;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/r/v;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->a(Lcom/apicloud/a/i/a/r/v;)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "aspect-ratio"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/m/a;->a(F)V

    :cond_0
    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V
    .locals 6

    const-string v0, "inset"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x4

    array-length v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_1

    aget-object v1, p2, v5

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    aget-object v1, p2, v4

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    aget-object v1, p2, v3

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    :goto_0
    iput p2, v0, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_1
    array-length v1, p2

    if-ne v3, v1, :cond_2

    aget-object v1, p2, v5

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    aget-object p2, p2, v4

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    array-length v1, p2

    if-ne v4, v1, :cond_3

    aget-object p2, p2, v5

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_3
    aget-object v1, p2, v5

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    aget-object v1, p2, v4

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/m/c;->b(Ljava/lang/String;)I

    move-result p2

    int-to-float p2, p2

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    :goto_1
    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/m/a;->a(Landroid/graphics/RectF;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5ca22028

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "column-count"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/r/o;->a(Lcom/apicloud/a/i/a/r/n;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/m/c;->a(Lcom/apicloud/a/i/a/r/n;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/r/n;)V
    .locals 1

    check-cast p3, Lcom/apicloud/a/i/a/m/a;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "stretch-mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->e(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "inset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->g(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "horizontal-spacing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->d(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "vertical-spacing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->c(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "column-width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->b(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "aspect-ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->f(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "column-count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/m/c;->a(Lcom/apicloud/a/i/a/m/a;Lcom/apicloud/a/c;)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/r/o;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/r/n;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ca22028 -> :sswitch_6
        -0x5c2d29aa -> :sswitch_5
        -0x5b8b4371 -> :sswitch_4
        -0x4769a714 -> :sswitch_3
        -0x21511066 -> :sswitch_2
        0x5fb611d -> :sswitch_1
        0x6f590f6b -> :sswitch_0
    .end sparse-switch
.end method
