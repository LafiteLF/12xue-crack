.class public Landroids/views/SelectorAttrs;
.super Ljava/lang/Object;
.source "SelectorAttrs.java"


# static fields
.field public static final LINE:I = 0x2

.field public static final OVAL:I = 0x1

.field public static final RECTANGLE:I = 0x0

.field public static final RING:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 22

    move-object/from16 v0, p1

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 42
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_0

    return-void

    .line 45
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 46
    instance-of v2, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_1

    return-void

    .line 51
    :cond_1
    sget-object v2, Lcom/kukugtu/moduleplotting/R$styleable;->View:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 56
    instance-of v4, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    .line 69
    :cond_2
    sget v4, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_5

    sget v4, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    :cond_5
    :goto_0
    sget v4, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_pressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 71
    instance-of v6, v4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_6

    const/4 v4, 0x0

    :cond_6
    if-nez v4, :cond_4

    .line 75
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 78
    :goto_1
    sget v7, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-nez v7, :cond_9

    sget v7, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 79
    :cond_9
    :goto_2
    sget v7, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_selected:I

    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 80
    instance-of v8, v7, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v8, :cond_a

    const/4 v7, 0x0

    :cond_a
    if-nez v7, :cond_8

    .line 84
    new-instance v8, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :goto_3
    const/4 v9, 0x0

    if-nez v1, :cond_d

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_b

    .line 92
    sget v11, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background:I

    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 93
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 95
    :cond_b
    new-instance v11, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 96
    instance-of v12, v10, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v12, :cond_c

    .line 97
    check-cast v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    goto :goto_4

    :cond_c
    move v10, v9

    .line 100
    :goto_4
    invoke-virtual {v11, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_5

    :cond_d
    move v10, v9

    const/4 v11, 0x0

    :goto_5
    if-eqz v6, :cond_e

    .line 103
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_e
    if-eqz v8, :cond_f

    .line 106
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 110
    :cond_f
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_shape:I

    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-ne v10, v14, :cond_12

    if-eqz v11, :cond_10

    .line 113
    invoke-virtual {v11, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_10
    if-eqz v6, :cond_11

    .line 116
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_11
    if-eqz v8, :cond_1b

    .line 119
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_6

    :cond_12
    if-ne v10, v13, :cond_15

    if-eqz v11, :cond_13

    .line 123
    invoke-virtual {v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_13
    if-eqz v6, :cond_14

    .line 126
    invoke-virtual {v6, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_14
    if-eqz v8, :cond_1b

    .line 129
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_6

    :cond_15
    if-ne v10, v12, :cond_18

    if-eqz v11, :cond_16

    .line 133
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_16
    if-eqz v6, :cond_17

    .line 136
    invoke-virtual {v6, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_17
    if-eqz v8, :cond_1b

    .line 139
    invoke-virtual {v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_6

    :cond_18
    if-eqz v11, :cond_19

    .line 143
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_19
    if-eqz v6, :cond_1a

    .line 146
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    :cond_1a
    if-eqz v8, :cond_1b

    .line 149
    invoke-virtual {v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 154
    :cond_1b
    :goto_6
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_corners:I

    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    if-eqz v11, :cond_1c

    int-to-float v15, v10

    .line 157
    invoke-virtual {v11, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1c
    if-eqz v6, :cond_1d

    int-to-float v15, v10

    .line 160
    invoke-virtual {v6, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_1d
    if-eqz v8, :cond_1e

    int-to-float v15, v10

    .line 163
    invoke-virtual {v8, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 166
    :cond_1e
    sget v15, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_corner_topLeft:I

    invoke-virtual {v2, v15, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v15

    .line 168
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_corner_topRight:I

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 170
    sget v3, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_corner_bottomLeft:I

    invoke-virtual {v2, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 172
    sget v12, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_corner_bottomRight:I

    invoke-virtual {v2, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    if-ne v15, v10, :cond_1f

    if-ne v5, v10, :cond_1f

    if-ne v3, v10, :cond_1f

    if-eq v12, v10, :cond_22

    :cond_1f
    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x4

    const/16 v10, 0x8

    if-eqz v11, :cond_20

    new-array v14, v10, [F

    int-to-float v10, v15

    aput v10, v14, v9

    aput v10, v14, v13

    int-to-float v10, v5

    const/16 v20, 0x2

    aput v10, v14, v20

    const/16 v21, 0x3

    aput v10, v14, v21

    int-to-float v10, v12

    aput v10, v14, v18

    aput v10, v14, v17

    int-to-float v10, v3

    aput v10, v14, v16

    const/16 v19, 0x7

    aput v10, v14, v19

    .line 177
    invoke-virtual {v11, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_20
    if-eqz v6, :cond_21

    const/16 v10, 0x8

    new-array v14, v10, [F

    int-to-float v10, v15

    aput v10, v14, v9

    aput v10, v14, v13

    int-to-float v10, v5

    const/16 v20, 0x2

    aput v10, v14, v20

    const/16 v21, 0x3

    aput v10, v14, v21

    int-to-float v10, v12

    aput v10, v14, v18

    aput v10, v14, v17

    int-to-float v10, v3

    aput v10, v14, v16

    const/16 v19, 0x7

    aput v10, v14, v19

    .line 185
    invoke-virtual {v6, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_21
    if-eqz v8, :cond_22

    const/16 v10, 0x8

    new-array v10, v10, [F

    int-to-float v14, v15

    aput v14, v10, v9

    aput v14, v10, v13

    int-to-float v5, v5

    const/4 v14, 0x2

    aput v5, v10, v14

    const/4 v14, 0x3

    aput v5, v10, v14

    int-to-float v5, v12

    aput v5, v10, v18

    aput v5, v10, v17

    int-to-float v3, v3

    aput v3, v10, v16

    const/4 v5, 0x7

    aput v3, v10, v5

    .line 193
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 204
    :cond_22
    sget v3, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_width:I

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    if-eq v3, v5, :cond_25

    if-eqz v11, :cond_23

    .line 207
    invoke-virtual {v11, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_23
    if-eqz v6, :cond_24

    .line 210
    invoke-virtual {v6, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_24
    if-eqz v8, :cond_25

    .line 213
    invoke-virtual {v8, v3, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 217
    :cond_25
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_color:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 218
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_color:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    if-eqz v11, :cond_26

    .line 220
    invoke-virtual {v11, v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_26
    if-eqz v6, :cond_27

    .line 223
    invoke-virtual {v6, v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_27
    if-eqz v8, :cond_28

    .line 226
    invoke-virtual {v8, v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_28
    if-eqz v6, :cond_29

    .line 231
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_pressed:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 232
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_pressed:I

    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 233
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_29
    if-eqz v6, :cond_2a

    .line 235
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_pressed:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 236
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_pressed:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 237
    invoke-virtual {v6, v3, v10}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_2a
    if-eqz v8, :cond_2b

    .line 239
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_selected:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 240
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_selected:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    .line 241
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2b
    if-eqz v8, :cond_2c

    .line 243
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_selected:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 244
    sget v10, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_border_selected:I

    invoke-virtual {v2, v10, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 245
    invoke-virtual {v8, v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 250
    :cond_2c
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 252
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v5, v10, :cond_35

    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    .line 253
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 256
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 257
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 258
    instance-of v5, v5, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v5, :cond_2d

    .line 259
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 260
    move-object v10, v5

    check-cast v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v10, v2}, Landroids/views/SelectorAttrs;->parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V

    .line 262
    sget v12, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    invoke-virtual {v2, v12, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_7

    .line 264
    :cond_2d
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_7

    .line 267
    :cond_2e
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_7
    if-nez v6, :cond_33

    if-eqz v4, :cond_2f

    goto :goto_a

    :cond_2f
    if-nez v1, :cond_31

    if-eqz v11, :cond_30

    goto :goto_8

    :cond_30
    const/4 v12, 0x2

    goto :goto_d

    .line 277
    :cond_31
    :goto_8
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    const/4 v12, 0x2

    new-array v14, v12, [Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_32

    move-object v15, v1

    goto :goto_9

    :cond_32
    move-object v15, v11

    :goto_9
    aput-object v15, v14, v9

    aput-object v5, v14, v13

    invoke-direct {v10, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_33
    :goto_a
    const/4 v12, 0x2

    .line 272
    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    new-array v14, v12, [Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_34

    move-object v15, v4

    goto :goto_b

    :cond_34
    move-object v15, v6

    :goto_b
    aput-object v15, v14, v9

    aput-object v5, v14, v13

    invoke-direct {v10, v14}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_c
    move-object v5, v10

    :goto_d
    new-array v10, v12, [I

    .line 282
    fill-array-data v10, :array_0

    invoke-virtual {v3, v10, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_35
    if-nez v6, :cond_36

    if-eqz v4, :cond_38

    :cond_36
    if-eqz v4, :cond_37

    move-object v5, v4

    goto :goto_e

    :cond_37
    move-object v5, v6

    :goto_e
    const/4 v10, 0x2

    new-array v12, v10, [I

    .line 286
    fill-array-data v12, :array_1

    invoke-virtual {v3, v12, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_38
    :goto_f
    if-nez v8, :cond_39

    if-eqz v7, :cond_3b

    :cond_39
    if-eqz v7, :cond_3a

    goto :goto_10

    :cond_3a
    move-object v7, v8

    :goto_10
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 292
    fill-array-data v5, :array_2

    invoke-virtual {v3, v5, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_3b
    new-array v5, v9, [I

    if-eqz v1, :cond_3c

    move-object v7, v1

    goto :goto_11

    :cond_3c
    move-object v7, v11

    .line 295
    :goto_11
    invoke-virtual {v3, v5, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-nez v11, :cond_3e

    if-nez v1, :cond_3e

    if-nez v6, :cond_3e

    if-eqz v4, :cond_3d

    goto :goto_12

    :cond_3d
    const/4 v5, 0x0

    goto :goto_13

    :cond_3e
    :goto_12
    move-object v5, v3

    .line 301
    :goto_13
    invoke-static {v0, v2, v5}, Landroids/views/SelectorAttrs;->parseRipple(Landroid/view/View;Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 308
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_3f
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data
.end method

.method private static parseRipple(Landroid/view/View;Landroid/content/res/TypedArray;Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 317
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 326
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 327
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 328
    instance-of v3, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    :cond_0
    if-nez v1, :cond_1

    .line 332
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 333
    invoke-static {v2, p1}, Landroids/views/SelectorAttrs;->parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V

    :cond_1
    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 336
    :goto_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    sget v4, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple:I

    .line 337
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-direct {v3, p1, p2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {p0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private static parseRippleMaskShape(Landroid/graphics/drawable/GradientDrawable;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 348
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 351
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_shape:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 353
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 355
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_2

    .line 357
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 363
    :goto_0
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_corners:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    int-to-float v5, v0

    .line 365
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 367
    sget v5, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_corner_topLeft:I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 369
    sget v6, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_corner_topRight:I

    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 371
    sget v7, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_corner_bottomLeft:I

    invoke-virtual {p1, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 373
    sget v8, Lcom/kukugtu/moduleplotting/R$styleable;->View_sel_background_ripple_mask_corner_bottomRight:I

    invoke-virtual {p1, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-ne v5, v0, :cond_3

    if-ne v6, v0, :cond_3

    if-ne v7, v0, :cond_3

    if-eq p1, v0, :cond_4

    :cond_3
    const/16 v0, 0x8

    new-array v0, v0, [F

    int-to-float v5, v5

    aput v5, v0, v1

    aput v5, v0, v3

    int-to-float v1, v6

    aput v1, v0, v4

    aput v1, v0, v2

    const/4 v1, 0x4

    int-to-float p1, p1

    aput p1, v0, v1

    const/4 v1, 0x5

    aput p1, v0, v1

    const/4 p1, 0x6

    int-to-float v1, v7

    aput v1, v0, p1

    const/4 p1, 0x7

    aput v1, v0, p1

    .line 377
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_4
    return-void
.end method
