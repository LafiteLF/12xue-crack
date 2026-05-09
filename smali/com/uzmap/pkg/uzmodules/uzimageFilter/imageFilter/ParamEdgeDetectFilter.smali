.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;
.source "ParamEdgeDetectFilter.java"


# instance fields
.field public DoGrayConversion:Z

.field public DoInversion:Z

.field public K00:F

.field public K01:F

.field public K02:F

.field public Threshold:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ConvolutionFilter;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoGrayConversion:Z

    .line 26
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    const/high16 v0, 0x3e800000    # 0.25f

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->Threshold:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K00:F

    const/high16 v1, 0x40000000    # 2.0f

    .line 29
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K01:F

    .line 30
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K02:F

    return-void
.end method

.method private ProcessColor(IIIIIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 25

    move-object/from16 v6, p0

    move/from16 v7, p8

    .line 34
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    .line 35
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    .line 37
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v10

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v8, :cond_0

    return-object p7

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-lt v13, v9, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v14, v12, -0x1

    add-int/lit8 v15, v13, -0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v14

    move v3, v15

    move v4, v8

    move v5, v9

    .line 42
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    move v2, v12

    move v11, v5

    move v5, v9

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    add-int/lit8 v16, v12, 0x1

    move/from16 v2, v16

    move v15, v5

    move v5, v9

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    move v2, v14

    move v3, v13

    move v6, v5

    move v5, v9

    .line 45
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    move/from16 v2, v16

    move v7, v5

    move v5, v9

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    add-int/lit8 v17, v13, 0x1

    move v2, v14

    move/from16 v3, v17

    move v14, v5

    move v5, v9

    .line 47
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    move v2, v12

    move/from16 v18, v13

    move v13, v5

    move v5, v9

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v5

    move/from16 v2, v16

    move/from16 v16, v8

    move v8, v5

    move v5, v9

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelColor(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    const/high16 v1, 0xff0000

    and-int v2, v11, v1

    shr-int/lit8 v2, v2, 0x10

    and-int v3, v6, v1

    shr-int/lit8 v3, v3, 0x10

    and-int v4, v13, v1

    shr-int/lit8 v4, v4, 0x10

    and-int v5, v0, v1

    shr-int/lit8 v5, v5, 0x10

    mul-int v2, v2, p1

    mul-int v19, v3, p3

    add-int v19, v2, v19

    and-int v20, v15, v1

    shr-int/lit8 v20, v20, 0x10

    mul-int v20, v20, p2

    add-int v19, v19, v20

    mul-int v20, v4, p4

    add-int v19, v19, v20

    and-int v20, v8, v1

    shr-int/lit8 v20, v20, 0x10

    mul-int v20, v20, p5

    add-int v19, v19, v20

    mul-int v5, v5, p6

    add-int v19, v19, v5

    shr-int/lit8 v19, v19, 0x8

    mul-int v3, v3, p4

    add-int/2addr v2, v3

    and-int v3, v7, v1

    shr-int/lit8 v3, v3, 0x10

    mul-int v3, v3, p2

    add-int/2addr v2, v3

    mul-int v4, v4, p3

    add-int/2addr v2, v4

    and-int/2addr v1, v14

    shr-int/lit8 v1, v1, 0x10

    mul-int v1, v1, p5

    add-int/2addr v2, v1

    add-int/2addr v2, v5

    shr-int/lit8 v1, v2, 0x8

    mul-int v19, v19, v19

    mul-int/2addr v1, v1

    add-int v1, v19, v1

    const/16 v2, 0xff

    move v3, v7

    move/from16 v7, p8

    if-le v1, v7, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    move v1, v6

    move-object/from16 v6, p0

    .line 58
    iget-boolean v5, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    if-eqz v5, :cond_3

    rsub-int v4, v4, 0xff

    :cond_3
    const v5, 0xff00

    and-int v19, v11, v5

    shr-int/lit8 v19, v19, 0x8

    and-int v20, v1, v5

    shr-int/lit8 v20, v20, 0x8

    and-int v21, v13, v5

    shr-int/lit8 v21, v21, 0x8

    and-int v22, v0, v5

    shr-int/lit8 v22, v22, 0x8

    mul-int v19, v19, p1

    mul-int v23, v20, p3

    add-int v23, v19, v23

    and-int v24, v15, v5

    shr-int/lit8 v24, v24, 0x8

    mul-int v24, v24, p2

    add-int v23, v23, v24

    mul-int v24, v21, p4

    add-int v23, v23, v24

    and-int v24, v8, v5

    shr-int/lit8 v24, v24, 0x8

    mul-int v24, v24, p5

    add-int v23, v23, v24

    mul-int v22, v22, p6

    add-int v23, v23, v22

    shr-int/lit8 v23, v23, 0x8

    mul-int v20, v20, p4

    add-int v19, v19, v20

    and-int v20, v3, v5

    shr-int/lit8 v20, v20, 0x8

    mul-int v20, v20, p2

    add-int v19, v19, v20

    mul-int v21, v21, p3

    add-int v19, v19, v21

    and-int/2addr v5, v14

    shr-int/lit8 v5, v5, 0x8

    mul-int v5, v5, p5

    add-int v19, v19, v5

    add-int v19, v19, v22

    shr-int/lit8 v5, v19, 0x8

    mul-int v23, v23, v23

    mul-int/2addr v5, v5

    add-int v5, v23, v5

    if-le v5, v7, :cond_4

    move/from16 v19, v9

    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    move v5, v2

    move/from16 v19, v9

    .line 69
    :goto_3
    iget-boolean v9, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    if-eqz v9, :cond_5

    rsub-int v5, v5, 0xff

    :cond_5
    and-int/lit16 v9, v11, 0xff

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v11, v13, 0xff

    and-int/lit16 v0, v0, 0xff

    mul-int v9, v9, p1

    mul-int v13, v1, p3

    add-int/2addr v13, v9

    and-int/lit16 v15, v15, 0xff

    mul-int v15, v15, p2

    add-int/2addr v13, v15

    mul-int v15, v11, p4

    add-int/2addr v13, v15

    and-int/lit16 v8, v8, 0xff

    mul-int v8, v8, p5

    add-int/2addr v13, v8

    mul-int v0, v0, p6

    add-int/2addr v13, v0

    shr-int/lit8 v8, v13, 0x8

    mul-int v1, v1, p4

    add-int/2addr v9, v1

    and-int/lit16 v1, v3, 0xff

    mul-int v1, v1, p2

    add-int/2addr v9, v1

    mul-int v11, v11, p3

    add-int/2addr v9, v11

    and-int/lit16 v1, v14, 0xff

    mul-int v1, v1, p5

    add-int/2addr v9, v1

    add-int/2addr v9, v0

    shr-int/lit8 v0, v9, 0x8

    mul-int/2addr v8, v8

    mul-int/2addr v0, v0

    add-int/2addr v8, v0

    if-le v8, v7, :cond_6

    const/4 v0, 0x0

    goto :goto_4

    :cond_6
    move v0, v2

    .line 80
    :goto_4
    iget-boolean v1, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    if-eqz v1, :cond_7

    sub-int/2addr v2, v0

    move v8, v2

    goto :goto_5

    :cond_7
    move v8, v0

    :goto_5
    move-object/from16 v0, p7

    move v1, v12

    move/from16 v2, v18

    move v3, v4

    move v4, v5

    move v5, v8

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    move/from16 v8, v16

    move/from16 v13, v17

    move/from16 v9, v19

    goto/16 :goto_1
.end method

.method private ProcessGray(IIIIIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 21

    .line 92
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v6

    .line 93
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v7

    .line 94
    invoke-virtual/range {p7 .. p7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-lt v10, v6, :cond_0

    return-object p7

    :cond_0
    move v11, v9

    :goto_1
    if-lt v11, v7, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v12, v10, -0x1

    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v12

    move v3, v13

    move v4, v6

    move v5, v7

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v14

    move v2, v10

    .line 100
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v15

    add-int/lit8 v16, v10, 0x1

    move/from16 v2, v16

    .line 101
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v13

    move v2, v12

    move v3, v11

    .line 102
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v17

    move/from16 v2, v16

    .line 103
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v18

    add-int/lit8 v19, v11, 0x1

    move v2, v12

    move/from16 v3, v19

    .line 104
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v12

    move v2, v10

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v20

    move/from16 v2, v16

    .line 106
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->GetPixelBrightness(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)I

    move-result v0

    mul-int v14, v14, p1

    mul-int v15, v15, p2

    add-int/2addr v15, v14

    mul-int v1, v13, p3

    add-int/2addr v15, v1

    mul-int v1, v12, p4

    add-int/2addr v15, v1

    mul-int v20, v20, p5

    add-int v15, v15, v20

    mul-int v0, v0, p6

    add-int/2addr v15, v0

    shr-int/lit8 v1, v15, 0x8

    mul-int v13, v13, p4

    add-int/2addr v14, v13

    mul-int v17, v17, p2

    add-int v14, v14, v17

    mul-int v18, v18, p5

    add-int v14, v14, v18

    mul-int v12, v12, p3

    add-int/2addr v14, v12

    add-int/2addr v14, v0

    shr-int/lit8 v0, v14, 0x8

    mul-int/2addr v1, v1

    mul-int/2addr v0, v0

    add-int/2addr v1, v0

    const/16 v0, 0xff

    move/from16 v12, p8

    move-object/from16 v13, p0

    if-le v1, v12, :cond_2

    move v1, v9

    goto :goto_2

    :cond_2
    move v1, v0

    .line 110
    :goto_2
    iget-boolean v2, v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoInversion:Z

    if-eqz v2, :cond_3

    sub-int/2addr v0, v1

    move v5, v0

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    move-object/from16 v0, p7

    move v1, v10

    move v2, v11

    move v3, v5

    move v4, v5

    .line 113
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    move/from16 v11, v19

    goto/16 :goto_1
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 11

    .line 121
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K00:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    .line 122
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K01:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 123
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->K02:F

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 124
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->Threshold:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    mul-int v10, v0, v0

    .line 127
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->DoGrayConversion:Z

    if-nez v0, :cond_0

    neg-int v6, v3

    neg-int v7, v4

    neg-int v8, v5

    .line 128
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v9

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->ProcessColor(IIIIIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1

    :cond_0
    neg-int v6, v3

    neg-int v7, v4

    neg-int v8, v5

    move-object v2, p0

    move-object v9, p1

    .line 130
    invoke-direct/range {v2 .. v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ParamEdgeDetectFilter;->ProcessGray(IIIIIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
