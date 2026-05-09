.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;
.source "WaveFilter.java"


# instance fields
.field _amplitude:D

.field _phase:D

.field _waveLength:D


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;-><init>(IID)V

    return-void
.end method

.method public constructor <init>(IID)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    mul-int/lit8 p1, p1, 0x2

    int-to-double v1, p1

    .line 31
    iput-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_waveLength:D

    if-lt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    int-to-double p1, p2

    .line 32
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_amplitude:D

    .line 33
    iput-wide p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_phase:D

    return-void
.end method


# virtual methods
.method public calc_undistorted_coord(IIDD)[D
    .locals 26

    move-object/from16 v0, p0

    .line 38
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    int-to-double v1, v1

    .line 39
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    div-double v8, v3, v1

    goto :goto_0

    :cond_0
    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    div-double v8, v1, v3

    move-wide v10, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    :goto_0
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    :goto_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double v14, v1, v12

    div-double v12, v3, v12

    move/from16 v5, p1

    int-to-double v6, v5

    sub-double/2addr v6, v14

    mul-double/2addr v6, v8

    move/from16 v5, p2

    move-wide/from16 p5, v3

    int-to-double v3, v5

    sub-double/2addr v3, v12

    mul-double/2addr v3, v10

    move-wide/from16 v16, v1

    .line 52
    iget-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_amplitude:D

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v20, v6, v6

    mul-double v22, v3, v3

    add-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v20, v20, v18

    move-wide/from16 v18, v12

    iget-wide v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_waveLength:D

    div-double v20, v20, v12

    iget-wide v12, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/WaveFilter;->_phase:D

    add-double v20, v20, v12

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v1, v12

    add-double/2addr v6, v1

    div-double/2addr v6, v8

    add-double v20, v6, v14

    add-double/2addr v1, v3

    div-double/2addr v1, v10

    add-double v3, v1, v18

    const-wide/16 v22, 0x0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v24, v16, v1

    .line 55
    invoke-static/range {v20 .. v25}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v9

    const-wide/16 v5, 0x0

    sub-double v7, p5, v1

    .line 56
    invoke-static/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v1

    const/4 v3, 0x2

    new-array v3, v3, [D

    const/4 v4, 0x0

    aput-wide v9, v3, v4

    const/4 v4, 0x1

    aput-wide v1, v3, v4

    return-object v3
.end method
