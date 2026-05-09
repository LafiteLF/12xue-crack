.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;
.source "BulgeFilter.java"


# instance fields
.field _amount:D

.field _offsetX:D

.field _offsetY:D


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 8

    .line 33
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;-><init>()V

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_amount:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v2, p2

    .line 36
    invoke-static/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_offsetX:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p4

    .line 37
    invoke-static/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_offsetY:D

    return-void
.end method


# virtual methods
.method public calc_undistorted_coord(IIDD)[D
    .locals 19

    move-object/from16 v0, p0

    .line 42
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    .line 43
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

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

    .line 45
    :goto_0
    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_offsetX:D

    mul-double/2addr v7, v1

    add-double/2addr v1, v7

    .line 46
    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_offsetY:D

    mul-double/2addr v7, v5

    add-double/2addr v5, v7

    move/from16 v7, p1

    int-to-double v7, v7

    sub-double v9, v7, v1

    move/from16 v11, p2

    int-to-double v11, v11

    sub-double v13, v11, v5

    mul-double v15, v9, v9

    mul-double v17, v13, v13

    add-double v15, v15, v17

    .line 50
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v15

    div-double/2addr v15, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v15, v3, v15

    const-wide/16 v17, 0x0

    cmpl-double v17, v15, v17

    if-lez v17, :cond_1

    .line 54
    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->_amount:D

    mul-double/2addr v7, v15

    mul-double/2addr v7, v15

    sub-double v7, v3, v7

    mul-double/2addr v9, v7

    add-double/2addr v1, v9

    const-wide/16 v9, 0x0

    .line 55
    iget-object v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v11

    int-to-double v11, v11

    sub-double/2addr v11, v3

    move-wide/from16 p1, v1

    move-wide/from16 p3, v9

    move-wide/from16 p5, v11

    invoke-static/range {p1 .. p6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v1

    mul-double/2addr v13, v7

    add-double/2addr v5, v13

    const-wide/16 v7, 0x0

    .line 56
    iget-object v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BulgeFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    int-to-double v9, v9

    sub-double v3, v9, v3

    move-wide/from16 p1, v5

    move-wide/from16 p3, v7

    move-wide/from16 p5, v3

    invoke-static/range {p1 .. p6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v11

    move-wide v7, v1

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [D

    const/4 v2, 0x0

    aput-wide v7, v1, v2

    const/4 v2, 0x1

    aput-wide v11, v1, v2

    return-object v1
.end method
