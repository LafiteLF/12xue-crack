.class public Lcom/apicloud/a/g/e/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/apicloud/a/g/j;
    .locals 4

    new-instance v0, Lcom/apicloud/a/g/j;

    invoke-direct {v0}, Lcom/apicloud/a/g/j;-><init>()V

    invoke-static {p0}, Lcom/apicloud/a/g/m;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\)"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/apicloud/a/g/e/g;->a(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 3

    if-eqz p0, :cond_0

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "rotateZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->e(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "rotateY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->d(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "rotateX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->c(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "translate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->m(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "skewY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->l(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "skewX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->k(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "scale"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_8
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->f(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "skew"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->j(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "scaleZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1

    :cond_a
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->i(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_9
    const-string v0, "scaleY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->h(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_a
    const-string v0, "scaleX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->g(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_b
    const-string v0, "rotate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_c
    const-string v0, "matrix"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->q(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_d
    const-string v0, "translateZ"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_1

    :cond_f
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->p(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_e
    const-string v0, "translateY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_1

    :cond_10
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->o(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    goto :goto_1

    :sswitch_f
    const-string v0, "translateX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1

    :cond_11
    invoke-static {p0, p1}, Lcom/apicloud/a/g/e/g;->n(Ljava/lang/String;Lcom/apicloud/a/g/j;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x66a2c736 -> :sswitch_f
        -0x66a2c735 -> :sswitch_e
        -0x66a2c734 -> :sswitch_d
        -0x4072683f -> :sswitch_c
        -0x372522a5 -> :sswitch_b
        -0x3621dfb2 -> :sswitch_a
        -0x3621dfb1 -> :sswitch_9
        -0x3621dfb0 -> :sswitch_8
        0x35e50a -> :sswitch_7
        0x683094a -> :sswitch_6
        0x686bc8e -> :sswitch_5
        0x686bc8f -> :sswitch_4
        0x3ec0f14e -> :sswitch_3
        0x5280ce5d -> :sswitch_2
        0x5280ce5e -> :sswitch_1
        0x5280ce5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;)Lcom/apicloud/a/g/l;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->e(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static c(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->c(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->d(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static e(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->e(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static f(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 4

    invoke-static {p0}, Lcom/apicloud/a/g/m;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    array-length v2, p0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget-object v1, p0, v3

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/g/j;->b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static g(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    sget-object v0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    invoke-virtual {p1, p0, v0}, Lcom/apicloud/a/g/j;->b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static h(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    sget-object v0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    invoke-virtual {p1, v0, p0}, Lcom/apicloud/a/g/j;->b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static i(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->b(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static j(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 5

    invoke-static {p0}, Lcom/apicloud/a/g/m;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    array-length v3, p0

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    aget-object v2, p0, v4

    :cond_0
    const/16 p0, 0x9

    new-array p0, p0, [Lcom/apicloud/a/g/l;

    sget-object v3, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    aput-object v3, p0, v0

    aput-object v2, p0, v4

    const/4 v0, 0x2

    sget-object v2, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object v2, p0, v0

    const/4 v0, 0x3

    aput-object v1, p0, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    aput-object v1, p0, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object v1, p0, v0

    const/4 v0, 0x6

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object v1, p0, v0

    const/4 v0, 0x7

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object v1, p0, v0

    const/16 v0, 0x8

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    aput-object v1, p0, v0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->a([Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static k(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/apicloud/a/g/l;

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x7

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/j;->a([Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static l(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/apicloud/a/g/l;

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x7

    aput-object p0, v0, v1

    sget-object p0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/j;->a([Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static m(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/m;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->a()[Lcom/apicloud/a/g/l;

    move-result-object p0

    const/4 v0, 0x0

    aget-object v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    aget-object p0, p0, v2

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p0}, Lcom/apicloud/a/g/j;->a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static n(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    sget-object v0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    invoke-virtual {p1, p0, v0}, Lcom/apicloud/a/g/j;->a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static o(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    sget-object v0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    invoke-virtual {p1, v0, p0}, Lcom/apicloud/a/g/j;->a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static p(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/e/g;->b(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/apicloud/a/g/j;->a(Lcom/apicloud/a/g/l;)V

    return-void
.end method

.method private static q(Ljava/lang/String;Lcom/apicloud/a/g/j;)V
    .locals 6

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/apicloud/a/g/l;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x4

    aget-object v5, p0, v3

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object v5

    aput-object v5, v0, v2

    aget-object v2, p0, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    aget-object v2, p0, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x5

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p0}, Lcom/apicloud/a/g/l;->b(Ljava/lang/Number;)Lcom/apicloud/a/g/l;

    move-result-object p0

    aput-object p0, v0, v2

    sget-object p0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object p0, v0, v1

    const/4 p0, 0x7

    sget-object v1, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    aput-object v1, v0, p0

    const/16 p0, 0x8

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    aput-object v1, v0, p0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/j;->a([Lcom/apicloud/a/g/l;)V

    :cond_1
    :goto_0
    return-void
.end method
