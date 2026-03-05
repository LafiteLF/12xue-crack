.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;
.super Ljava/lang/Object;
.source "ColorToneFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _hue:D

.field _lum_tab:[D

.field _saturation:D


# direct methods
.method public constructor <init>(II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 125
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x100

    new-array v3, v2, [D

    .line 26
    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_lum_tab:[D

    .line 128
    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_hue:D

    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_saturation:D

    const-wide/16 v7, 0x0

    move/from16 v4, p1

    invoke-static/range {v4 .. v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->RGBtoHLS(IDDD)[D

    move-result-object v3

    const/4 v4, 0x0

    .line 129
    aget-wide v5, v3, v4

    iput-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_hue:D

    const/4 v5, 0x1

    .line 130
    aget-wide v6, v3, v5

    const/4 v6, 0x2

    .line 131
    aget-wide v7, v3, v6

    iput-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_saturation:D

    int-to-double v9, v1

    const-wide v11, 0x406fe00000000000L    # 255.0

    div-double/2addr v9, v11

    mul-double/2addr v7, v9

    mul-double/2addr v7, v9

    .line 132
    iput-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_saturation:D

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v7, v9

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v9

    .line 133
    :goto_0
    iput-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_saturation:D

    move v3, v4

    :goto_1
    if-lt v3, v2, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 139
    invoke-static/range {v11 .. v17}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->RGBtoHLS(IDDD)[D

    move-result-object v7

    .line 140
    aget-wide v11, v7, v4

    .line 141
    aget-wide v11, v7, v5

    .line 142
    aget-wide v13, v7, v6

    add-int/lit8 v7, v1, -0x80

    .line 143
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    rsub-int v7, v7, 0x80

    int-to-double v7, v7

    const-wide/high16 v13, 0x4060000000000000L    # 128.0

    div-double/2addr v7, v13

    const-wide/high16 v13, 0x4022000000000000L    # 9.0

    div-double/2addr v7, v13

    add-double/2addr v7, v9

    mul-double/2addr v11, v7

    .line 144
    iget-object v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_lum_tab:[D

    cmpg-double v8, v11, v9

    if-gez v8, :cond_2

    goto :goto_2

    :cond_2
    move-wide v11, v9

    :goto_2
    aput-wide v11, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method static DoubleRGB_to_RGB(DDD)I
    .locals 2

    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr p0, v0

    double-to-int p0, p0

    .line 77
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result p0

    mul-double/2addr p2, v0

    double-to-int p1, p2

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result p1

    mul-double/2addr p4, v0

    double-to-int p2, p4

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method static GetGrayscale(III)I
    .locals 0

    mul-int/lit8 p0, p0, 0x1e

    mul-int/lit8 p2, p1, 0x3b

    add-int/2addr p0, p2

    mul-int/lit8 p1, p1, 0xb

    add-int/2addr p0, p1

    .line 122
    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method static HLS_Value(DDD)D
    .locals 4

    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    cmpl-double v2, p4, v0

    if-lez v2, :cond_0

    sub-double/2addr p4, v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p4, v2

    if-gez v2, :cond_1

    add-double/2addr p4, v0

    :cond_1
    :goto_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_2

    sub-double/2addr p2, p0

    mul-double/2addr p2, p4

    :goto_1
    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    cmpg-double v0, p4, v0

    if-gez v0, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    cmpg-double v2, p4, v0

    if-gez v2, :cond_4

    sub-double/2addr p2, p0

    sub-double/2addr v0, p4

    mul-double/2addr p2, v0

    goto :goto_1

    :cond_4
    return-wide p0
.end method

.method static HLStoRGB(DDD)I
    .locals 12

    const-wide/16 v0, 0x0

    cmpl-double v2, p4, v0

    if-gtz v2, :cond_0

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_0

    move-wide v0, p2

    move-wide v2, p2

    move-wide v4, p2

    .line 100
    invoke-static/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->DoubleRGB_to_RGB(DDD)I

    move-result v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, p2, v0

    if-lez v0, :cond_1

    add-double v0, p2, p4

    mul-double v2, p2, p4

    sub-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double v0, p4, v0

    mul-double/2addr v0, p2

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v4, p2, v2

    sub-double/2addr v4, v0

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double/2addr v6, p0

    add-double v8, v6, v2

    move-wide p0, v4

    move-wide p2, v0

    move-wide/from16 p4, v8

    .line 109
    invoke-static/range {p0 .. p5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->HLS_Value(DDD)D

    move-result-wide v8

    move-wide/from16 p4, v6

    .line 110
    invoke-static/range {p0 .. p5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->HLS_Value(DDD)D

    move-result-wide v10

    sub-double v2, v6, v2

    move-wide/from16 p4, v2

    .line 111
    invoke-static/range {p0 .. p5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->HLS_Value(DDD)D

    move-result-wide v0

    move-wide p0, v8

    move-wide p2, v10

    move-wide/from16 p4, v0

    .line 112
    invoke-static/range {p0 .. p5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->DoubleRGB_to_RGB(DDD)I

    move-result v0

    return v0
.end method

.method static RGBtoHLS(IDDD)[D
    .locals 23

    move/from16 v0, p0

    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    .line 37
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 38
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, v3, v4

    int-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double/2addr v5, v7

    const-wide v9, 0x406fe00000000000L    # 255.0

    div-double/2addr v5, v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    const-wide/16 v15, 0x0

    if-ne v3, v4, :cond_0

    new-array v0, v14, [D

    aput-wide v15, v0, v13

    aput-wide v5, v0, v12

    aput-wide v15, v0, v11

    return-object v0

    :cond_0
    int-to-double v11, v1

    div-double/2addr v11, v9

    int-to-double v13, v2

    div-double/2addr v13, v9

    int-to-double v7, v0

    div-double/2addr v7, v9

    move-wide/from16 v17, v11

    int-to-double v11, v3

    div-double/2addr v11, v9

    move-wide/from16 v19, v7

    int-to-double v7, v4

    div-double/2addr v7, v9

    sub-double v9, v11, v7

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v5, v21

    if-gez v0, :cond_1

    add-double/2addr v11, v7

    div-double v7, v9, v11

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_1
    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    sub-double v11, v21, v11

    sub-double/2addr v11, v7

    div-double v7, v9, v11

    :goto_0
    if-ne v1, v3, :cond_2

    sub-double v13, v13, v19

    div-double/2addr v13, v9

    goto :goto_1

    :cond_2
    if-ne v2, v3, :cond_3

    sub-double v0, v19, v17

    div-double/2addr v0, v9

    add-double v13, v0, v21

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    sub-double v11, v17, v13

    div-double/2addr v11, v9

    add-double v13, v11, v0

    :goto_1
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    div-double/2addr v13, v0

    cmpg-double v0, v13, v15

    if-gez v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v13, v0

    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide v13, v0, v1

    const/4 v1, 0x1

    aput-wide v5, v0, v1

    const/4 v1, 0x2

    aput-wide v7, v0, v1

    return-object v0
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object p1

    :cond_0
    move v2, v0

    .line 152
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 154
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 155
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    .line 157
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_lum_tab:[D

    invoke-static {v3, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->GetGrayscale(III)I

    move-result v3

    aget-wide v9, v6, v3

    .line 158
    iget-wide v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_hue:D

    iget-wide v11, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->_saturation:D

    invoke-static/range {v7 .. v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorToneFilter;->HLStoRGB(DDD)I

    move-result v3

    .line 159
    invoke-virtual {p1, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
