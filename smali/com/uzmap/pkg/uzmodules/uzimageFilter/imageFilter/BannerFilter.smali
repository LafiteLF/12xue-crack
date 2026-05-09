.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.source "BannerFilter.java"


# instance fields
.field public BannerNum:I

.field public IsHorizontal:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->IsHorizontal:Z

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    .line 33
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    .line 34
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->IsHorizontal:Z

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v10

    const v4, -0x333334

    .line 44
    invoke-virtual {v10, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clearImage(I)V

    .line 45
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    new-array v11, v4, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    .line 46
    iget-boolean v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->IsHorizontal:Z

    const-wide v12, 0x3ff199999999999aL    # 1.1

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 47
    div-int v15, v3, v4

    const/4 v4, 0x0

    .line 49
    :goto_0
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    if-lt v4, v5, :cond_5

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v15, :cond_2

    const/4 v12, 0x0

    :goto_2
    if-lt v12, v2, :cond_0

    goto/16 :goto_9

    .line 66
    :cond_0
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v11, v4

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    add-int/2addr v4, v15

    move v13, v4

    :goto_3
    if-lt v13, v3, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v1, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 68
    invoke-virtual {v1, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 69
    invoke-virtual {v1, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, v10

    move v5, v12

    move v6, v13

    .line 70
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    .line 53
    :goto_4
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    if-lt v8, v4, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_5
    if-lt v7, v2, :cond_4

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 55
    :cond_4
    aget-object v4, v11, v8

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    add-int v5, v4, v7

    .line 56
    aget-object v4, v11, v8

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    move/from16 v16, v15

    int-to-double v14, v9

    div-double/2addr v14, v12

    double-to-int v6, v14

    add-int/2addr v6, v4

    .line 57
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v14

    .line 58
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v15

    .line 59
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v17

    move-object v4, v10

    move/from16 v18, v7

    move v7, v14

    move v14, v8

    move v8, v15

    move v15, v9

    move/from16 v9, v17

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v7, v18, 0x1

    move v8, v14

    move v9, v15

    move/from16 v15, v16

    goto :goto_5

    :cond_5
    move/from16 v16, v15

    .line 50
    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    mul-int v15, v4, v16

    int-to-float v7, v15

    invoke-direct {v5, v6, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v15, v16

    goto/16 :goto_0

    .line 75
    :cond_6
    div-int v14, v2, v4

    const/4 v4, 0x0

    .line 77
    :goto_6
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    if-lt v4, v5, :cond_c

    const/4 v15, 0x0

    :goto_7
    if-lt v15, v14, :cond_9

    const/4 v12, 0x0

    :goto_8
    if-lt v12, v3, :cond_7

    :goto_9
    return-object v10

    .line 94
    :cond_7
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v11, v4

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    add-int/2addr v4, v14

    move v13, v4

    :goto_a
    if-lt v13, v2, :cond_8

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 95
    :cond_8
    invoke-virtual {v1, v13, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 96
    invoke-virtual {v1, v13, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 97
    invoke-virtual {v1, v13, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, v10

    move v5, v13

    move v6, v12

    .line 98
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_9
    const/4 v9, 0x0

    .line 81
    :goto_b
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BannerFilter;->BannerNum:I

    if-lt v9, v4, :cond_a

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_c
    if-lt v8, v3, :cond_b

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 83
    :cond_b
    aget-object v4, v11, v9

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v4, v4

    int-to-double v5, v15

    div-double/2addr v5, v12

    double-to-int v5, v5

    add-int/2addr v5, v4

    .line 84
    aget-object v4, v11, v9

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v4, v4

    add-int v6, v4, v8

    .line 85
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 86
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v16

    .line 87
    invoke-virtual {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v17

    move-object v4, v10

    move/from16 v18, v8

    move/from16 v8, v16

    move/from16 v16, v9

    move/from16 v9, v17

    .line 88
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v18, 0x1

    move/from16 v9, v16

    goto :goto_c

    .line 78
    :cond_c
    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    mul-int v7, v4, v14

    int-to-float v7, v7

    invoke-direct {v5, v7, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    aput-object v5, v11, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method
