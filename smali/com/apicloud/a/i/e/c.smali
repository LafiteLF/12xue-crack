.class Lcom/apicloud/a/i/e/c;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "column-reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const-string v0, "row"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :sswitch_2
    const-string v0, "column"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :sswitch_3
    const-string v0, "row-reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x565d8a11 -> :sswitch_3
        -0x50c12caa -> :sswitch_2
        0x1b9da -> :sswitch_1
        0x4bdc536b -> :sswitch_0
    .end sparse-switch
.end method

.method private static a(Landroid/view/View;FLcom/apicloud/c/b/b;)V
    .locals 0

    invoke-interface {p2, p1}, Lcom/apicloud/c/b/b;->d(F)V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/c/b/b;)V
    .locals 8

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p1

    array-length v0, p1

    const/high16 v1, -0x40000000    # -2.0f

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v0, v6, :cond_3

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v6, v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p1

    move v1, v5

    move v5, p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    :cond_1
    move v5, v7

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v4, v0, :cond_6

    const/16 v0, -0xc

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    move v7, v5

    goto :goto_1

    :cond_3
    array-length v0, p1

    if-ne v0, v4, :cond_5

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    aget-object v1, p1, v6

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v1

    if-ne v6, v1, :cond_4

    aget-object p1, p1, v6

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p1

    move v7, p1

    move v1, v5

    goto :goto_0

    :cond_4
    aget-object p1, p1, v6

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_5
    array-length v0, p1

    if-lt v0, v2, :cond_6

    aget-object v0, p1, v3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v5

    aget-object v0, p1, v6

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    move v7, v0

    goto :goto_1

    :cond_6
    move v1, v5

    :goto_1
    invoke-static {p0, v5, p2}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    invoke-static {p0, v7, p2}, Lcom/apicloud/a/i/e/c;->b(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    invoke-static {p0, v1, p2}, Lcom/apicloud/a/i/e/c;->c(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    :cond_7
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {p1}, Lcom/apicloud/a/i/e/c;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "flexWrap"

    const-string v3, "flexDirection"

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "justifyContent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->e(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->i(I)V

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "alignSelf"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->h(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->l(I)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->d(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->m(I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "flexGrow"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {p3}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "flexFlow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {p3}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_d

    array-length p3, p2

    if-nez p3, :cond_5

    goto/16 :goto_0

    :cond_5
    aget-object p3, p2, v4

    invoke-direct {p0, p1, v3, p3}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    array-length p3, p2

    if-le p3, v5, :cond_d

    aget-object p2, p2, v5

    invoke-direct {p0, p1, v2, p2}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "flexShrink"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-static {p3}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/apicloud/a/i/e/c;->b(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "order"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->s(I)V

    goto :goto_0

    :sswitch_7
    const-string v1, "flex"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {p1, p3, v0}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/c/b/b;)V

    goto :goto_0

    :sswitch_8
    const-string p1, "alignContent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->f(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->j(I)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->a(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->h(I)V

    goto :goto_0

    :sswitch_a
    const-string p1, "alignItems"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {p3}, Lcom/apicloud/a/i/e/c;->g(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/apicloud/c/b/b;->k(I)V

    goto :goto_0

    :sswitch_b
    const-string v1, "flexBasis"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {p3}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/apicloud/a/i/e/c;->c(Landroid/view/View;FLcom/apicloud/c/b/b;)V

    :cond_d
    :goto_0
    return v5

    :goto_1
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x6a52083b -> :sswitch_b
        -0x3f600445 -> :sswitch_a
        -0x3a1ff07a -> :sswitch_9
        -0x2cdbca4c -> :sswitch_8
        0x2ffff9 -> :sswitch_7
        0x651874e -> :sswitch_6
        0x3d759362 -> :sswitch_5
        0x67eed0c7 -> :sswitch_4
        0x67ef5bac -> :sswitch_3
        0x67f69fe3 -> :sswitch_2
        0x6953cff1 -> :sswitch_1
        0x6ee75fc9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static b(Landroid/view/View;FLcom/apicloud/c/b/b;)V
    .locals 0

    invoke-interface {p2, p1}, Lcom/apicloud/c/b/b;->e(F)V

    return-void
.end method

.method private static c(Landroid/view/View;FLcom/apicloud/c/b/b;)V
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    invoke-interface {p2, p1}, Lcom/apicloud/c/b/b;->C(F)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    invoke-interface {p2}, Lcom/apicloud/c/b/b;->w()V

    goto :goto_0

    :cond_1
    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    invoke-interface {p2, p1}, Lcom/apicloud/c/b/b;->D(F)V

    :goto_0
    return-void
.end method

.method private static d(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df6ea75

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const v1, -0x2cace3a1

    if-eq v0, v1, :cond_2

    const v1, 0x37d04a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "wrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string v0, "wrap-reverse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const-string v0, "nowrap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_5
    :goto_0
    return v2
.end method

.method private static e(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "space-around"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :sswitch_1
    const-string v0, "flex-end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :sswitch_2
    const-string v0, "space-between"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0

    :sswitch_3
    const-string v0, "flex-start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    return p0

    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        -0x2c6c672 -> :sswitch_3
        0x1a4dda41 -> :sswitch_2
        0x67e35907 -> :sswitch_1
        0x73762c74 -> :sswitch_0
    .end sparse-switch
.end method

.method private static f(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "space-around"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    :sswitch_1
    const-string v0, "flex-end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :sswitch_2
    const-string v0, "space-between"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    return p0

    :sswitch_3
    const-string v0, "flex-start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :sswitch_4
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x2

    return p0

    :sswitch_5
    const-string v0, "stretch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    nop

    :cond_5
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_5
        -0x514d33ab -> :sswitch_4
        -0x2c6c672 -> :sswitch_3
        0x1a4dda41 -> :sswitch_2
        0x67e35907 -> :sswitch_1
        0x73762c74 -> :sswitch_0
    .end sparse-switch
.end method

.method private static g(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "flex-end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :sswitch_1
    const-string v0, "flex-start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :sswitch_2
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    return p0

    :sswitch_3
    const-string v0, "baseline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    return p0

    :sswitch_4
    const-string v0, "stretch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    nop

    :cond_4
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_4
        -0x669119bb -> :sswitch_3
        -0x514d33ab -> :sswitch_2
        -0x2c6c672 -> :sswitch_1
        0x67e35907 -> :sswitch_0
    .end sparse-switch
.end method

.method private static h(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "flex-end"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :sswitch_1
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :sswitch_2
    const-string v0, "flex-start"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :sswitch_3
    const-string v0, "center"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x2

    return p0

    :sswitch_4
    const-string v0, "baseline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    return p0

    :sswitch_5
    const-string v0, "stretch"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x4

    return p0

    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_5
        -0x669119bb -> :sswitch_4
        -0x514d33ab -> :sswitch_3
        -0x2c6c672 -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x67e35907 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e/c;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 5

    invoke-virtual {p2}, Lcom/apicloud/a/c;->e()Lcom/apicloud/a/c;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/apicloud/a/i/e/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
