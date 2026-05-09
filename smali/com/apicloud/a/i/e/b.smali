.class Lcom/apicloud/a/i/e/b;
.super Lcom/apicloud/a/i/e/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/a/g/a;)V
    .locals 8

    invoke-static {p1}, Lcom/apicloud/a/i/e/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->z()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/b;->b(Landroid/view/View;Lcom/apicloud/a/g/a;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/b/a;->b()[F

    move-result-object v2

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->g()Lcom/apicloud/a/g/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v1

    invoke-static {v2, v1}, Lcom/apicloud/a/i/e/b;->a([FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/d/b/a;->a(F)V

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->x(F)V

    :cond_2
    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/d/b/a;->e(I)V

    :cond_3
    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_11

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/d/b/a;->f(I)V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->g()Lcom/apicloud/a/g/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :cond_5
    const/4 v6, 0x0

    if-eqz v5, :cond_6

    aget v7, v2, v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v5

    cmpl-float v7, v5, v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v6, v5}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    invoke-interface {v0, v5}, Lcom/apicloud/c/b/b;->y(F)V

    :cond_6
    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_7
    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->h()Lcom/apicloud/a/g/a$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :cond_8
    if-eqz v5, :cond_9

    aget v6, v2, v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v5

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_9

    invoke-virtual {p1, v1, v5}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    invoke-interface {v0, v5}, Lcom/apicloud/c/b/b;->z(F)V

    :cond_9
    invoke-virtual {v3}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_a
    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->i()Lcom/apicloud/a/g/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :cond_b
    const/4 v5, 0x2

    if-eqz v3, :cond_c

    aget v6, v2, v5

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v3

    cmpl-float v6, v3, v6

    if-eqz v6, :cond_c

    invoke-virtual {p1, v5, v3}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    invoke-interface {v0, v3}, Lcom/apicloud/c/b/b;->A(F)V

    :cond_c
    invoke-virtual {v1}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_d
    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->j()Lcom/apicloud/a/g/a$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_e
    const/4 v3, 0x3

    if-eqz v1, :cond_f

    aget v2, v2, v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v3, v1}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->B(F)V

    :cond_f
    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_10
    invoke-virtual {p2}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/d/b/a;->e()V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/a/g/l;)V
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v3, v2, :cond_0

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/e/b;->a(Lcom/apicloud/a/g/l;)F

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/d/b/a;->b(F)V

    instance-of v1, p1, Lcom/apicloud/a/i/d/b;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/apicloud/a/i/d/b;

    invoke-interface {v1, v2, v2, v2, v2}, Lcom/apicloud/a/i/d/b;->a(FFFF)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_2

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-static {v2}, Lcom/apicloud/a/i/d/c;->a(F)Landroid/view/ViewOutlineProvider;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->f(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/apicloud/a/g/b;->a:I

    array-length v2, p2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le v2, v3, :cond_1

    aget-object v2, p2, v5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v6

    aget-object v2, p2, v7

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v2

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v1

    aget-object v4, p2, v4

    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v4

    aget-object p2, p2, v3

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    move v3, v2

    goto :goto_2

    :cond_1
    array-length v2, p2

    if-le v2, v4, :cond_2

    aget-object v2, p2, v5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v2

    aget-object v3, p2, v7

    invoke-virtual {p0, v3}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v3

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v1

    aget-object p2, p2, v4

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    move v4, v6

    :goto_1
    move v6, v2

    goto :goto_2

    :cond_2
    array-length v2, p2

    if-le v2, v1, :cond_4

    aget-object v2, p2, v5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v2

    aget-object v3, p2, v7

    invoke-virtual {p0, v3}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result v3

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/apicloud/a/g/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    move v1, v6

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/e/b;->c(Ljava/lang/String;)F

    move-result p2

    move v1, p2

    goto :goto_0

    :cond_4
    move v1, v6

    move v3, v1

    move v4, v3

    :goto_2
    invoke-static {p1, v7}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object p2

    invoke-virtual {p2, v6, v3, v1, v0}, Lcom/apicloud/a/i/d/b/f;->a(FFFI)V

    invoke-virtual {p2, v4}, Lcom/apicloud/a/i/d/b/f;->d(F)V

    invoke-static {p1}, Lcom/apicloud/a/i/e/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    invoke-interface {p2, v7}, Lcom/apicloud/c/b/b;->h(Z)V

    invoke-static {p1, v5}, Lcom/apicloud/a/i/e/e;->a(Landroid/view/View;Z)V

    return-void
.end method

.method private static a([FF)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget v3, p0, v2

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private b(Landroid/view/View;Lcom/apicloud/a/g/a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/b/a;->b()[F

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->d()Z

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    if-eqz v9, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->g()Lcom/apicloud/a/g/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_0

    :cond_0
    move-object v12, v14

    :goto_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v0, v12}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v12

    invoke-static {v8, v12}, Lcom/apicloud/a/i/e/b;->a([FF)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v3, v12}, Lcom/apicloud/a/i/d/b/a;->a(F)V

    int-to-float v4, v4

    aget v13, v8, v13

    sub-float/2addr v4, v13

    float-to-int v4, v4

    int-to-float v5, v5

    aget v13, v8, v2

    sub-float/2addr v5, v13

    float-to-int v5, v5

    int-to-float v6, v6

    aget v11, v8, v11

    sub-float/2addr v6, v11

    float-to-int v6, v6

    int-to-float v7, v7

    aget v8, v8, v10

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v4, v4

    add-float/2addr v4, v12

    float-to-int v4, v4

    int-to-float v5, v5

    add-float/2addr v5, v12

    float-to-int v5, v5

    int-to-float v6, v6

    add-float/2addr v6, v12

    float-to-int v6, v6

    int-to-float v7, v7

    add-float/2addr v7, v12

    float-to-int v7, v7

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/apicloud/a/i/d/b/a;->e(I)V

    :cond_2
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->b()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/apicloud/a/i/d/b/a;->f(I)V

    goto/16 :goto_5

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->g()Lcom/apicloud/a/g/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v15

    if-eqz v15, :cond_4

    move-object v14, v12

    :cond_4
    if-eqz v14, :cond_5

    aget v15, v8, v13

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-virtual {v0, v14}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v14

    cmpl-float v16, v14, v15

    if-eqz v16, :cond_5

    invoke-virtual {v3, v13, v14}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    int-to-float v4, v4

    sub-float/2addr v4, v15

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v14

    float-to-int v4, v4

    move v14, v2

    goto :goto_2

    :cond_5
    move v14, v13

    :goto_2
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v13, v9}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->h()Lcom/apicloud/a/g/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v15

    if-eqz v15, :cond_7

    move-object v13, v12

    :cond_7
    if-eqz v13, :cond_8

    aget v15, v8, v2

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v0, v13}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v13

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_8

    invoke-virtual {v3, v2, v13}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    int-to-float v5, v5

    sub-float/2addr v5, v15

    float-to-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v13

    float-to-int v5, v5

    move v14, v2

    :cond_8
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v2, v9}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->i()Lcom/apicloud/a/g/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v15

    if-eqz v15, :cond_a

    move-object v13, v12

    :cond_a
    if-eqz v13, :cond_b

    aget v15, v8, v11

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v0, v13}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v13

    cmpl-float v16, v13, v15

    if-eqz v16, :cond_b

    invoke-virtual {v3, v11, v13}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    int-to-float v6, v6

    sub-float/2addr v6, v15

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v6, v13

    float-to-int v6, v6

    move v14, v2

    :cond_b
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v11, v9}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/apicloud/a/g/a;->j()Lcom/apicloud/a/g/a$a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->a()Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->e()Z

    move-result v13

    if-eqz v13, :cond_d

    goto :goto_3

    :cond_d
    move-object v12, v11

    :goto_3
    if-eqz v12, :cond_e

    aget v8, v8, v10

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v0, v11}, Lcom/apicloud/a/i/e/b;->a(F)F

    move-result v11

    cmpl-float v12, v11, v8

    if-eqz v12, :cond_e

    invoke-virtual {v3, v10, v11}, Lcom/apicloud/a/i/d/b/a;->a(IF)V

    int-to-float v7, v7

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    add-float/2addr v7, v11

    float-to-int v7, v7

    goto :goto_4

    :cond_e
    move v2, v14

    :goto_4
    invoke-virtual {v9}, Lcom/apicloud/a/g/a$a;->c()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3, v10, v8}, Lcom/apicloud/a/i/d/b/a;->a(II)V

    :cond_f
    :goto_5
    if-eqz v2, :cond_10

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_10
    invoke-virtual {v3}, Lcom/apicloud/a/i/d/b/a;->e()V

    return-void
.end method

.method private c(Landroid/view/View;Lcom/apicloud/a/g/a;)V
    .locals 7

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/g/e/a;->a(Landroid/view/View;Z)Lcom/apicloud/a/i/d/b/f;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->k()Lcom/apicloud/a/g/l;

    move-result-object v1

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->l()Lcom/apicloud/a/g/l;

    move-result-object v2

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->n()Lcom/apicloud/a/g/l;

    move-result-object v3

    invoke-virtual {p2}, Lcom/apicloud/a/g/a;->m()Lcom/apicloud/a/g/l;

    move-result-object p2

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->c()I

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/e/b;->a(Lcom/apicloud/a/g/l;)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/e/b;->a(Lcom/apicloud/a/g/l;)F

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/apicloud/a/g/l;->c()I

    move-result v6

    if-ne v4, v6, :cond_4

    invoke-virtual {v3}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v3

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v3}, Lcom/apicloud/a/i/e/b;->a(Lcom/apicloud/a/g/l;)F

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v5

    :goto_2
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->c()I

    move-result v5

    if-ne v4, v5, :cond_6

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v5

    goto :goto_3

    :cond_6
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/e/b;->a(Lcom/apicloud/a/g/l;)F

    move-result v5

    :cond_7
    :goto_3
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/apicloud/a/i/d/b/a;->a(FFFF)V

    instance-of p2, p1, Lcom/apicloud/a/i/d/b;

    if-eqz p2, :cond_8

    check-cast p1, Lcom/apicloud/a/i/d/b;

    invoke-interface {p1, v1, v2, v5, v3}, Lcom/apicloud/a/i/d/b;->a(FFFF)V

    :cond_8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e/b;->b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 5

    const-string v0, "boxShadow"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/e/b;->a(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/apicloud/a/c;->e()Lcom/apicloud/a/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/apicloud/a/g/a;->e()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/apicloud/a/g/a;->f()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/b;->c(Landroid/view/View;Lcom/apicloud/a/g/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/apicloud/a/g/a;->a()Lcom/apicloud/a/g/l;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/b;->a(Landroid/view/View;Lcom/apicloud/a/g/l;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/apicloud/a/g/a;->b()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/apicloud/a/i/e/b;->a(Landroid/view/View;Lcom/apicloud/a/g/a;)V

    :cond_3
    return-object v0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/apicloud/a/g/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    new-instance v1, Lcom/apicloud/a/g/a;

    invoke-direct {v1}, Lcom/apicloud/a/g/a;-><init>()V

    :cond_5
    invoke-virtual {p2, v3}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/apicloud/a/g/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p2, v3}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
