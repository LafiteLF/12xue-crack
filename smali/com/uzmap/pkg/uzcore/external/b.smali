.class public final Lcom/uzmap/pkg/uzcore/external/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(I)I
    .locals 0

    add-int/lit16 p0, p0, 0x3e7

    return p0
.end method

.method public static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/b;->a(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static a(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v9
.end method

.method private static a(IIJ)Lcom/uzmap/pkg/uzcore/c;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    const-wide/16 p2, 0x12c

    :cond_0
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->k(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->j(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->i(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->h(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->g(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->f(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->e(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->d(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->c(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/b;->b(I)Lcom/uzmap/pkg/uzcore/c;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance p0, Landroid/view/animation/ScaleAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p1, p1, p1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance p2, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p2, p1, p1, p1, p1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, p2}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    const-wide/16 p2, 0xc8

    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/c;->a()V

    invoke-virtual {v0, p2, p3}, Lcom/uzmap/pkg/uzcore/c;->a(J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Lcom/uzmap/pkg/uzcore/b;)Lcom/uzmap/pkg/uzcore/c;
    .locals 4

    iget v0, p0, Lcom/uzmap/pkg/uzcore/b;->a:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/b;->b:I

    iget-wide v2, p0, Lcom/uzmap/pkg/uzcore/b;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/external/b;->a(IIJ)Lcom/uzmap/pkg/uzcore/c;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v9
.end method

.method private static b(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 21

    move/from16 v0, p0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/high16 v20, -0x40800000    # -1.0f

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/high16 v20, -0x40800000    # -1.0f

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/high16 v20, 0x3f800000    # 1.0f

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/high16 v16, -0x40800000    # -1.0f

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v20}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v9
.end method

.method private static c(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 11

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_2

    :pswitch_0
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_2
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/c;->c()V

    move-object p0, v1

    goto :goto_2

    :cond_0
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    :goto_1
    move-object p0, v0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    if-eqz p0, :cond_0

    invoke-virtual {p0, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-object v9
.end method

.method private static d(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const/4 v2, 0x2

    if-eq p0, v2, :cond_0

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    :pswitch_0
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v2}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v0, p0, v2}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static e(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 10

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :pswitch_0
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x80000000

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/c;

    invoke-direct {v1, p0, v0}, Lcom/uzmap/pkg/uzcore/c;-><init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/c;->c()V

    move-object p0, v1

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static g(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static i(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static j(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static k(I)Lcom/uzmap/pkg/uzcore/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
