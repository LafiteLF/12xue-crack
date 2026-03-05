.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;
.source "TwistFilter.java"


# instance fields
.field _offsetX:D

.field _offsetY:D

.field _size:D

.field _twist:D


# direct methods
.method public constructor <init>(II)V
    .locals 7

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;-><init>(IIDD)V

    return-void
.end method

.method public constructor <init>(IIDD)V
    .locals 8

    .line 30
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;-><init>()V

    neg-int v0, p1

    mul-int v1, v0, v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    mul-int/2addr v1, v0

    int-to-double v0, v1

    .line 33
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_twist:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v3, 0xc8

    .line 35
    invoke-static {p2, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_size:D

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move-wide v2, p3

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_offsetX:D

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    move-wide p1, p5

    move-wide p3, v0

    move-wide p5, v2

    .line 37
    invoke-static/range {p1 .. p6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_offsetY:D

    return-void
.end method


# virtual methods
.method public calc_undistorted_coord(IIDD)[D
    .locals 17

    move-object/from16 v0, p0

    .line 42
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 43
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v5, v3

    cmpg-double v3, v1, v5

    if-gez v3, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    move-wide v3, v5

    :goto_0
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v3, v7, v3

    .line 45
    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_offsetX:D

    mul-double/2addr v9, v1

    add-double/2addr v1, v9

    .line 46
    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_offsetY:D

    mul-double/2addr v9, v5

    add-double/2addr v5, v9

    move/from16 v9, p1

    int-to-double v9, v9

    sub-double/2addr v9, v1

    move/from16 v11, p2

    int-to-double v11, v11

    sub-double/2addr v11, v5

    mul-double v13, v9, v9

    mul-double v15, v11, v11

    add-double/2addr v13, v15

    .line 50
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    .line 51
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    .line 53
    iget-wide v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_size:D

    mul-double/2addr v11, v13

    mul-double/2addr v11, v3

    sub-double v3, v7, v11

    const-wide/16 v11, 0x0

    cmpg-double v15, v3, v11

    if-gez v15, :cond_1

    goto :goto_1

    :cond_1
    mul-double v11, v3, v3

    mul-double/2addr v11, v3

    .line 55
    :goto_1
    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->_twist:D

    mul-double/2addr v11, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v3

    add-double/2addr v9, v11

    .line 57
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v13

    add-double/2addr v1, v3

    const-wide/16 v3, 0x0

    iget-object v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v11

    int-to-double v11, v11

    sub-double/2addr v11, v7

    move-wide/from16 p1, v1

    move-wide/from16 p3, v3

    move-wide/from16 p5, v11

    invoke-static/range {p1 .. p6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v1

    .line 58
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v13, v3

    add-double v3, v5, v13

    const-wide/16 v5, 0x0

    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/TwistFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    int-to-double v9, v9

    sub-double v7, v9, v7

    move-wide/from16 p1, v3

    move-wide/from16 p3, v5

    move-wide/from16 p5, v7

    invoke-static/range {p1 .. p6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v1, 0x1

    aput-wide v3, v5, v1

    return-object v5
.end method
