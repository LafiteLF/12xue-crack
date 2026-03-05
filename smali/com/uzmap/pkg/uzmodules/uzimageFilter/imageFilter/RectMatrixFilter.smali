.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.source "RectMatrixFilter.java"


# instance fields
.field public BannerNum:I

.field public Oriention:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->Oriention:I

    const/16 v0, 0xf

    .line 31
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v10

    const v4, -0x333334

    .line 40
    invoke-virtual {v10, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clearImage(I)V

    .line 43
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    new-array v11, v4, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    .line 44
    div-int v12, v3, v4

    const/4 v13, 0x0

    move v4, v13

    .line 46
    :goto_0
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    const/4 v14, 0x0

    if-lt v4, v5, :cond_b

    move v15, v13

    :goto_1
    const-wide v16, 0x3ffccccccccccccdL    # 1.8

    if-lt v15, v12, :cond_8

    move v15, v13

    :goto_2
    if-lt v15, v2, :cond_6

    .line 72
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    new-array v11, v4, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    .line 73
    div-int v12, v2, v4

    move v4, v13

    .line 75
    :goto_3
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    if-lt v4, v5, :cond_5

    move v15, v13

    :goto_4
    if-lt v15, v12, :cond_2

    move v14, v13

    :goto_5
    if-lt v14, v3, :cond_0

    return-object v10

    .line 92
    :cond_0
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v11, v4

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    add-int/2addr v4, v12

    move v13, v4

    :goto_6
    if-lt v13, v2, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 93
    :cond_1
    invoke-virtual {v1, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 94
    invoke-virtual {v1, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 95
    invoke-virtual {v1, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, v10

    move v5, v13

    move v6, v14

    .line 96
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_2
    move v14, v13

    .line 79
    :goto_7
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    if-lt v14, v4, :cond_3

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    move v9, v13

    :goto_8
    if-lt v9, v3, :cond_4

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 81
    :cond_4
    aget-object v4, v11, v14

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    int-to-double v5, v15

    div-double v5, v5, v16

    double-to-int v5, v5

    add-int/2addr v5, v4

    .line 82
    aget-object v4, v11, v14

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    add-int v6, v4, v9

    .line 83
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 84
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 85
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v18

    move-object v4, v10

    move/from16 v19, v9

    move/from16 v9, v18

    .line 86
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v9, v19, 0x1

    goto :goto_8

    .line 76
    :cond_5
    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    mul-int v6, v4, v12

    int-to-float v6, v6

    invoke-direct {v5, v6, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 63
    :cond_6
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v11, v4

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    add-int/2addr v4, v12

    move v9, v4

    :goto_9
    if-lt v9, v3, :cond_7

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 64
    :cond_7
    invoke-virtual {v1, v15, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 65
    invoke-virtual {v1, v15, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 66
    invoke-virtual {v1, v15, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v18

    move-object v4, v10

    move v5, v15

    move v6, v9

    move/from16 v19, v9

    move/from16 v9, v18

    .line 67
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v9, v19, 0x1

    goto :goto_9

    :cond_8
    move v9, v13

    .line 50
    :goto_a
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RectMatrixFilter;->BannerNum:I

    if-lt v9, v4, :cond_9

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_9
    move v8, v13

    :goto_b
    if-lt v8, v2, :cond_a

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 52
    :cond_a
    aget-object v4, v11, v9

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    add-int v5, v4, v8

    .line 53
    aget-object v4, v11, v9

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    int-to-double v6, v15

    div-double v6, v6, v16

    double-to-int v6, v6

    add-int/2addr v6, v4

    .line 54
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 55
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v18

    .line 56
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v19

    move-object v4, v10

    move/from16 v20, v8

    move/from16 v8, v18

    move/from16 v18, v9

    move/from16 v9, v19

    .line 57
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v20, 0x1

    move/from16 v9, v18

    goto :goto_b

    .line 47
    :cond_b
    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    mul-int v6, v4, v12

    int-to-float v6, v6

    invoke-direct {v5, v14, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method
