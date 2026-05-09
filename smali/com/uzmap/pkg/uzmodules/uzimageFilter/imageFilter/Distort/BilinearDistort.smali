.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;
.super Ljava/lang/Object;
.source "BilinearDistort.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static GetBilinear(DD[I)I
    .locals 16

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 45
    aget v3, p4, v2

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x10

    aput v3, v1, v2

    .line 46
    aget v3, p4, v2

    const v5, 0xff00

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x8

    const/4 v6, 0x1

    aput v3, v1, v6

    .line 47
    aget v3, p4, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v7, 0x2

    aput v3, v1, v7

    new-array v3, v0, [I

    .line 50
    aget v8, p4, v6

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x10

    aput v8, v3, v2

    .line 51
    aget v8, p4, v6

    and-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0x8

    aput v8, v3, v6

    .line 52
    aget v8, p4, v6

    and-int/lit16 v8, v8, 0xff

    aput v8, v3, v7

    new-array v8, v0, [I

    .line 55
    aget v9, p4, v7

    and-int/2addr v9, v4

    shr-int/lit8 v9, v9, 0x10

    aput v9, v8, v2

    .line 56
    aget v9, p4, v7

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x8

    aput v9, v8, v6

    .line 57
    aget v9, p4, v7

    and-int/lit16 v9, v9, 0xff

    aput v9, v8, v7

    new-array v9, v0, [I

    .line 60
    aget v10, p4, v0

    and-int/2addr v4, v10

    shr-int/lit8 v4, v4, 0x10

    aput v4, v9, v2

    .line 61
    aget v4, p4, v0

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    aput v4, v9, v6

    .line 62
    aget v4, p4, v0

    and-int/lit16 v4, v4, 0xff

    aput v4, v9, v7

    new-array v4, v0, [I

    move v5, v2

    :goto_0
    if-lt v5, v0, :cond_0

    .line 73
    aget v0, v4, v2

    aget v1, v4, v6

    aget v2, v4, v7

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0

    .line 67
    :cond_0
    aget v10, v1, v5

    int-to-double v10, v10

    aget v12, v3, v5

    aget v13, v1, v5

    sub-int/2addr v12, v13

    int-to-double v12, v12

    mul-double v12, v12, p0

    add-double/2addr v10, v12

    .line 68
    aget v12, v8, v5

    int-to-double v12, v12

    aget v14, v9, v5

    aget v15, v8, v5

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double v14, v14, p0

    add-double/2addr v12, v14

    sub-double/2addr v12, v10

    mul-double v12, v12, p2

    add-double/2addr v10, v12

    double-to-int v10, v10

    .line 70
    invoke-static {v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v10

    aput v10, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method IsInside(IIII)Z
    .locals 0

    if-ltz p3, :cond_0

    if-ge p3, p1, :cond_0

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method calc_undistorted_coord(IIDD)[D
    .locals 0

    const/4 p1, 0x2

    new-array p1, p1, [D

    const/4 p2, 0x0

    aput-wide p3, p1, p2

    const/4 p2, 0x1

    aput-wide p5, p1, p2

    return-object p1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    iput-object v0, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v9

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-lt v12, v9, :cond_0

    return-object v8

    :cond_0
    move v13, v11

    :goto_1
    if-lt v13, v10, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    .line 84
    invoke-virtual/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->calc_undistorted_coord(IIDD)[D

    move-result-object v0

    .line 85
    aget-wide v1, v0, v11

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    cmpl-double v0, v1, v14

    if-lez v0, :cond_9

    move/from16 v16, v12

    int-to-double v11, v9

    cmpg-double v11, v1, v11

    if-gez v11, :cond_8

    cmpl-double v11, v4, v14

    if-lez v11, :cond_8

    int-to-double v11, v10

    cmpg-double v11, v4, v11

    if-gez v11, :cond_8

    const-wide/16 v11, 0x0

    cmpg-double v14, v1, v11

    if-gez v14, :cond_2

    const/4 v14, -0x1

    goto :goto_2

    :cond_2
    double-to-int v14, v1

    :goto_2
    cmpg-double v11, v4, v11

    if-gez v11, :cond_3

    const/4 v11, -0x1

    goto :goto_3

    :cond_3
    double-to-int v11, v4

    :goto_3
    add-int/lit8 v12, v14, 0x1

    add-int/lit8 v15, v11, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 97
    invoke-virtual {v7, v9, v10, v14, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->IsInside(IIII)Z

    move-result v18

    if-eqz v18, :cond_4

    iget-object v6, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v6, v14, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v6

    goto :goto_4

    :cond_4
    const/4 v6, -0x1

    :goto_4
    const/16 v17, 0x0

    aput v6, v0, v17

    .line 98
    invoke-virtual {v7, v9, v10, v12, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->IsInside(IIII)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v6, v12, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v6

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    aput v6, v0, v3

    const/4 v3, 0x2

    .line 99
    invoke-virtual {v7, v9, v10, v14, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->IsInside(IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v6, v14, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v6

    goto :goto_6

    :cond_6
    const/4 v6, -0x1

    :goto_6
    aput v6, v0, v3

    const/4 v3, 0x3

    .line 100
    invoke-virtual {v7, v9, v10, v12, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->IsInside(IIII)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v6, v12, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v6

    goto :goto_7

    :cond_7
    const/4 v6, -0x1

    :goto_7
    aput v6, v0, v3

    int-to-double v14, v14

    sub-double/2addr v1, v14

    int-to-double v11, v11

    sub-double/2addr v4, v11

    .line 101
    invoke-static {v1, v2, v4, v5, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;->GetBilinear(DD[I)I

    move-result v6

    move/from16 v11, v16

    goto :goto_9

    :cond_8
    const/16 v17, 0x0

    goto :goto_8

    :cond_9
    move/from16 v17, v11

    move/from16 v16, v12

    :goto_8
    move/from16 v11, v16

    const/4 v6, -0x1

    .line 103
    :goto_9
    invoke-virtual {v8, v11, v13, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v13, v13, 0x1

    move v12, v11

    move/from16 v11, v17

    goto/16 :goto_1
.end method
