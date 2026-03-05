.class final Lcom/apicloud/a/i/a/e/b/bj;
.super Lcom/apicloud/a/i/a/e/b/ar;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const-string v0, "textBaseline"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/ar;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/text/StaticLayout;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result p0

    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0
.end method

.method private static a(Landroid/text/StaticLayout;Ljava/lang/String;)F
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "hanging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->a(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :sswitch_1
    const-string v0, "ideographic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->d(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :sswitch_2
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->a(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :sswitch_3
    const-string v0, "middle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->c(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :sswitch_4
    const-string v0, "alphabetic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->d(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :sswitch_5
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->b(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    :goto_0
    invoke-static {p0}, Lcom/apicloud/a/i/a/e/b/bj;->d(Landroid/text/StaticLayout;)F

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_5
        -0x4826dd33 -> :sswitch_4
        -0x4009266b -> :sswitch_3
        0x1c155 -> :sswitch_2
        0x18d57443 -> :sswitch_1
        0x294caa30 -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FF)V
    .locals 0

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLjava/lang/String;)V
    .locals 0

    if-nez p4, :cond_0

    const-string p4, "alphabetic"

    :cond_0
    invoke-static {p1, p4}, Lcom/apicloud/a/i/a/e/b/bj;->a(Landroid/text/StaticLayout;Ljava/lang/String;)F

    move-result p1

    sub-float/2addr p3, p1

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/StaticLayout;)V
    .locals 2

    invoke-virtual {p4}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p4, p2, p3, p0}, Lcom/apicloud/a/i/a/e/b/bj;->a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FFLjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    invoke-static {p1, p4, p2, p3}, Lcom/apicloud/a/i/a/e/b/bj;->a(Landroid/graphics/Canvas;Landroid/text/StaticLayout;FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Landroid/text/StaticLayout;)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result p0

    add-int/2addr v1, p0

    int-to-float p0, v1

    return p0
.end method

.method private static c(Landroid/text/StaticLayout;)F
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private static d(Landroid/text/StaticLayout;)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/e/b/x;->b(Ljava/lang/String;)V

    return-void
.end method
