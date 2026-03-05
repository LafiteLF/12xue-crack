.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;
.super Ljava/lang/Object;
.source "ImageBlender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;
    }
.end annotation


# instance fields
.field public Mixture:F

.field public Mode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f666666    # 0.9f

    .line 26
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 45
    sget v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Multiply:I

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    return-void
.end method


# virtual methods
.method public Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 49
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v9, v1

    const/16 v10, 0xff

    rsub-int v11, v9, 0xff

    const/4 v13, 0x0

    .line 51
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v13, v1, :cond_0

    return-object v7

    :cond_0
    const/4 v14, 0x0

    .line 53
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v14, v1, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v7, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    .line 57
    invoke-virtual {v7, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    .line 58
    invoke-virtual {v7, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    .line 59
    invoke-virtual {v8, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v4

    .line 60
    invoke-virtual {v8, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v5

    .line 61
    invoke-virtual {v8, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v6

    .line 62
    iget v15, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    const/16 v16, 0xfe

    const/16 v12, 0x80

    packed-switch v15, :pswitch_data_0

    goto/16 :goto_22

    :pswitch_0
    if-nez v4, :cond_38

    if-nez v5, :cond_38

    if-nez v4, :cond_38

    move v4, v1

    move v5, v2

    :cond_2
    :goto_2
    move v6, v3

    goto/16 :goto_22

    :pswitch_1
    if-ge v4, v12, :cond_4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    if-ge v4, v10, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    add-int/lit16 v4, v4, -0xff

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, -0x80

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    if-le v4, v10, :cond_5

    move v4, v10

    :cond_5
    :goto_3
    if-ge v5, v12, :cond_7

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    if-ge v5, v10, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    add-int/lit16 v5, v5, -0xff

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, -0x80

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    if-le v5, v10, :cond_8

    move v5, v10

    :cond_8
    :goto_4
    if-ge v6, v12, :cond_b

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-ge v6, v10, :cond_a

    :cond_9
    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_22

    :cond_a
    add-int/lit16 v6, v6, -0xff

    goto/16 :goto_22

    :cond_b
    add-int/lit8 v6, v6, -0x80

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    if-le v6, v10, :cond_38

    :cond_c
    :goto_6
    move v6, v10

    goto/16 :goto_22

    :pswitch_2
    mul-int/2addr v4, v4

    if-eq v1, v10, :cond_d

    move v12, v1

    goto :goto_7

    :cond_d
    move/from16 v12, v16

    :goto_7
    rsub-int v12, v12, 0xff

    .line 133
    div-int/2addr v4, v12

    mul-int/2addr v5, v5

    if-eq v2, v10, :cond_e

    move v12, v2

    goto :goto_8

    :cond_e
    move/from16 v12, v16

    :goto_8
    rsub-int v12, v12, 0xff

    .line 134
    div-int/2addr v5, v12

    mul-int/2addr v6, v6

    if-eq v3, v10, :cond_f

    move v12, v3

    goto :goto_9

    :cond_f
    move/from16 v12, v16

    :goto_9
    rsub-int v12, v12, 0xff

    .line 135
    div-int/2addr v6, v12

    if-ne v1, v10, :cond_10

    move v4, v1

    goto :goto_a

    :cond_10
    if-ge v4, v10, :cond_11

    goto :goto_a

    :cond_11
    move v4, v10

    :goto_a
    if-ne v2, v10, :cond_12

    move v5, v2

    goto :goto_b

    :cond_12
    if-ge v5, v10, :cond_13

    goto :goto_b

    :cond_13
    move v5, v10

    :goto_b
    if-ne v3, v10, :cond_14

    :goto_c
    goto :goto_2

    :cond_14
    if-ge v6, v10, :cond_c

    goto/16 :goto_22

    :pswitch_3
    mul-int v12, v1, v1

    if-eq v4, v10, :cond_15

    move v15, v4

    goto :goto_d

    :cond_15
    move/from16 v15, v16

    :goto_d
    rsub-int v15, v15, 0xff

    .line 124
    div-int/2addr v12, v15

    mul-int v15, v2, v2

    if-eq v5, v10, :cond_16

    move v0, v5

    goto :goto_e

    :cond_16
    move/from16 v0, v16

    :goto_e
    rsub-int v0, v0, 0xff

    .line 125
    div-int/2addr v15, v0

    mul-int v0, v3, v3

    if-eq v6, v10, :cond_17

    move v7, v6

    goto :goto_f

    :cond_17
    move/from16 v7, v16

    :goto_f
    rsub-int v7, v7, 0xff

    .line 126
    div-int/2addr v0, v7

    if-ne v4, v10, :cond_18

    goto :goto_10

    :cond_18
    if-ge v12, v10, :cond_19

    move v4, v12

    goto :goto_10

    :cond_19
    move v4, v10

    :goto_10
    if-ne v5, v10, :cond_1a

    goto :goto_11

    :cond_1a
    if-ge v15, v10, :cond_1b

    move v5, v15

    goto :goto_11

    :cond_1b
    move v5, v10

    :goto_11
    if-ne v6, v10, :cond_1c

    goto/16 :goto_22

    :cond_1c
    if-ge v0, v10, :cond_c

    :goto_12
    move v6, v0

    goto/16 :goto_22

    :pswitch_4
    if-le v4, v1, :cond_1d

    move v4, v1

    :cond_1d
    if-le v5, v2, :cond_1e

    move v5, v2

    :cond_1e
    if-le v6, v3, :cond_38

    goto :goto_c

    :pswitch_5
    if-le v4, v1, :cond_1f

    goto :goto_13

    :cond_1f
    move v4, v1

    :goto_13
    if-le v5, v2, :cond_20

    goto :goto_14

    :cond_20
    move v5, v2

    :goto_14
    if-le v6, v3, :cond_2

    goto/16 :goto_22

    :pswitch_6
    rsub-int v0, v1, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v7, 0x1

    if-eqz v4, :cond_21

    move v12, v4

    goto :goto_15

    :cond_21
    move v12, v7

    .line 104
    :goto_15
    div-int/2addr v0, v12

    rsub-int v0, v0, 0xff

    rsub-int v12, v2, 0xff

    shl-int/lit8 v12, v12, 0x8

    if-eqz v5, :cond_22

    move v15, v5

    goto :goto_16

    :cond_22
    move v15, v7

    .line 105
    :goto_16
    div-int/2addr v12, v15

    rsub-int v12, v12, 0xff

    rsub-int v15, v3, 0xff

    shl-int/lit8 v15, v15, 0x8

    if-eqz v6, :cond_23

    move v7, v6

    .line 106
    :cond_23
    div-int/2addr v15, v7

    rsub-int v7, v15, 0xff

    if-nez v4, :cond_24

    goto :goto_17

    :cond_24
    if-lez v0, :cond_25

    move v4, v0

    goto :goto_17

    :cond_25
    const/4 v4, 0x0

    :goto_17
    if-nez v5, :cond_26

    goto :goto_18

    :cond_26
    if-lez v12, :cond_27

    move v5, v12

    goto :goto_18

    :cond_27
    const/4 v5, 0x0

    :goto_18
    if-nez v6, :cond_28

    goto/16 :goto_22

    :cond_28
    if-lez v7, :cond_9

    move v6, v7

    goto/16 :goto_22

    :pswitch_7
    shl-int/lit8 v0, v1, 0x8

    if-eq v4, v10, :cond_29

    move v7, v4

    goto :goto_19

    :cond_29
    move/from16 v7, v16

    :goto_19
    rsub-int v7, v7, 0xff

    .line 95
    div-int/2addr v0, v7

    shl-int/lit8 v7, v2, 0x8

    if-eq v5, v10, :cond_2a

    move v12, v5

    goto :goto_1a

    :cond_2a
    move/from16 v12, v16

    :goto_1a
    rsub-int v12, v12, 0xff

    .line 96
    div-int/2addr v7, v12

    shl-int/lit8 v12, v3, 0x8

    if-eq v6, v10, :cond_2b

    move v15, v6

    goto :goto_1b

    :cond_2b
    move/from16 v15, v16

    :goto_1b
    rsub-int v15, v15, 0xff

    .line 97
    div-int/2addr v12, v15

    if-ne v4, v10, :cond_2c

    goto :goto_1c

    :cond_2c
    if-ge v0, v10, :cond_2d

    move v4, v0

    goto :goto_1c

    :cond_2d
    move v4, v10

    :goto_1c
    if-ne v5, v10, :cond_2e

    goto :goto_1d

    :cond_2e
    if-ge v7, v10, :cond_2f

    move v5, v7

    goto :goto_1d

    :cond_2f
    move v5, v10

    :goto_1d
    if-ne v6, v10, :cond_30

    goto/16 :goto_22

    :cond_30
    if-ge v12, v10, :cond_c

    move v6, v12

    goto/16 :goto_22

    :pswitch_8
    if-ge v4, v12, :cond_31

    mul-int/lit8 v0, v1, 0x2

    mul-int/2addr v0, v4

    .line 89
    div-int/2addr v0, v10

    goto :goto_1e

    :cond_31
    rsub-int v0, v1, 0xff

    mul-int/lit8 v0, v0, 0x2

    rsub-int v4, v4, 0xff

    mul-int/2addr v0, v4

    div-int/2addr v0, v10

    rsub-int v0, v0, 0xff

    :goto_1e
    move v4, v0

    if-ge v5, v12, :cond_32

    mul-int/lit8 v0, v2, 0x2

    mul-int/2addr v0, v5

    .line 90
    div-int/2addr v0, v10

    goto :goto_1f

    :cond_32
    rsub-int v0, v2, 0xff

    mul-int/lit8 v0, v0, 0x2

    rsub-int v5, v5, 0xff

    mul-int/2addr v0, v5

    div-int/2addr v0, v10

    rsub-int v0, v0, 0xff

    :goto_1f
    move v5, v0

    if-ge v6, v12, :cond_33

    mul-int/lit8 v0, v3, 0x2

    mul-int/2addr v0, v6

    .line 91
    div-int/2addr v0, v10

    goto/16 :goto_12

    :cond_33
    rsub-int v0, v3, 0xff

    mul-int/lit8 v0, v0, 0x2

    rsub-int v6, v6, 0xff

    mul-int/2addr v0, v6

    div-int/2addr v0, v10

    rsub-int v0, v0, 0xff

    goto/16 :goto_12

    :pswitch_9
    mul-int/2addr v4, v1

    .line 83
    div-int/2addr v4, v10

    mul-int/2addr v5, v2

    .line 84
    div-int/2addr v5, v10

    mul-int/2addr v6, v3

    .line 85
    div-int/2addr v6, v10

    goto :goto_22

    :pswitch_a
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    add-int/2addr v6, v3

    if-ge v4, v10, :cond_34

    const/4 v4, 0x0

    goto :goto_20

    :cond_34
    add-int/lit16 v4, v4, -0xff

    :goto_20
    if-ge v5, v10, :cond_35

    const/4 v5, 0x0

    goto :goto_21

    :cond_35
    add-int/lit16 v5, v5, -0xff

    :goto_21
    if-ge v6, v10, :cond_a

    goto/16 :goto_5

    :pswitch_b
    add-int/2addr v4, v1

    add-int/2addr v5, v2

    add-int/2addr v6, v3

    if-le v4, v10, :cond_36

    move v4, v10

    :cond_36
    if-le v5, v10, :cond_37

    move v5, v10

    :cond_37
    if-le v6, v10, :cond_38

    goto/16 :goto_6

    :cond_38
    :goto_22
    mul-int/2addr v1, v11

    mul-int/2addr v4, v9

    add-int/2addr v1, v4

    mul-int/2addr v2, v11

    mul-int/2addr v5, v9

    add-int/2addr v2, v5

    mul-int/2addr v3, v11

    mul-int/2addr v6, v9

    add-int/2addr v3, v6

    shr-int/lit8 v4, v1, 0x8

    shr-int/lit8 v5, v2, 0x8

    shr-int/lit8 v6, v3, 0x8

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    .line 205
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
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
