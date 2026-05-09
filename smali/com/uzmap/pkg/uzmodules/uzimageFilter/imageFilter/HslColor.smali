.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;
.super Ljava/lang/Object;
.source "HslColor.java"


# instance fields
.field public h:F

.field public l:F

.field public s:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    .line 32
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    .line 33
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    return-void
.end method

.method public static HslToRgb(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)I
    .locals 19

    move-object/from16 v0, p0

    .line 55
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 58
    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    move v1, v0

    move v3, v1

    goto :goto_1

    :cond_0
    float-to-double v1, v1

    const-wide v3, 0x4076800000000000L    # 360.0

    div-double/2addr v1, v3

    .line 65
    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 66
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    add-float/2addr v5, v4

    mul-float/2addr v3, v5

    goto :goto_0

    .line 67
    :cond_1
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    add-float v5, v3, v4

    mul-float/2addr v3, v4

    sub-float v3, v5, v3

    :goto_0
    float-to-double v11, v3

    const/high16 v3, 0x40000000    # 2.0f

    .line 68
    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    mul-float/2addr v0, v3

    float-to-double v3, v0

    sub-double v13, v3, v11

    const-wide v15, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v8, v1, v15

    move-wide v4, v13

    move-wide v6, v11

    .line 70
    invoke-static/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->Hue_2_RGB(DDD)D

    move-result-wide v3

    const-wide v17, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v17

    double-to-int v0, v3

    int-to-byte v0, v0

    move-wide v5, v13

    move-wide v7, v11

    move-wide v9, v1

    .line 71
    invoke-static/range {v5 .. v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->Hue_2_RGB(DDD)D

    move-result-wide v3

    mul-double v3, v3, v17

    double-to-int v3, v3

    int-to-byte v3, v3

    sub-double v8, v1, v15

    move-wide v4, v13

    move-wide v6, v11

    .line 72
    invoke-static/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->Hue_2_RGB(DDD)D

    move-result-wide v1

    mul-double v1, v1, v17

    double-to-int v1, v1

    int-to-byte v1, v1

    :goto_1
    const/high16 v2, -0x1000000

    shl-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    shl-int/lit8 v2, v3, 0x8

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static HueToRgb(FFF)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    add-float/2addr p2, v1

    :cond_0
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    sub-float/2addr p2, v1

    :cond_1
    const/high16 v0, 0x40c00000    # 6.0f

    mul-float v2, p2, v0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    sub-float/2addr p1, p0

    mul-float/2addr p1, v0

    mul-float/2addr p1, p2

    :goto_0
    add-float/2addr p0, p1

    return p0

    :cond_2
    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, p2, v2

    cmpg-float v1, v3, v1

    if-gez v1, :cond_3

    return p1

    :cond_3
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    sub-float/2addr p1, p0

    const v1, 0x3f2aaaab

    sub-float/2addr v1, p2

    mul-float/2addr p1, v1

    mul-float/2addr p1, v0

    goto :goto_0

    :cond_4
    return p0
.end method

.method private static Hue_2_RGB(DDD)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_0

    add-double/2addr p4, v1

    :cond_0
    cmpl-double v0, p4, v1

    if-lez v0, :cond_1

    sub-double/2addr p4, v1

    :cond_1
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    mul-double v5, p4, v3

    cmpg-double v0, v5, v1

    if-gez v0, :cond_2

    sub-double/2addr p2, p0

    mul-double/2addr p2, v3

    mul-double/2addr p2, p4

    :goto_0
    add-double/2addr p0, p2

    return-wide p0

    :cond_2
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p4, v5

    cmpg-double v0, v7, v1

    if-gez v0, :cond_3

    return-wide p2

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    mul-double/2addr v0, p4

    cmpg-double v0, v0, v5

    if-gez v0, :cond_4

    sub-double/2addr p2, p0

    const-wide v0, 0x3fe5555555555555L    # 0.6666666666666666

    sub-double/2addr v0, p4

    mul-double/2addr p2, v0

    mul-double/2addr p2, v3

    goto :goto_0

    :cond_4
    return-wide p0
.end method

.method public static RgbToHsl(IIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)V
    .locals 22

    move/from16 v0, p0

    move-object/from16 v1, p3

    int-to-double v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    move/from16 v0, p1

    int-to-double v6, v0

    div-double/2addr v6, v4

    move/from16 v0, p2

    int-to-double v8, v0

    div-double/2addr v8, v4

    .line 119
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 120
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    sub-double v12, v10, v4

    add-double v14, v10, v4

    double-to-float v0, v14

    const/high16 v16, 0x40000000    # 2.0f

    div-float v0, v0, v16

    .line 124
    iput v0, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    const-wide/16 v16, 0x0

    cmpl-double v18, v12, v16

    if-nez v18, :cond_0

    const/4 v0, 0x0

    .line 129
    iput v0, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    .line 130
    iput v0, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    goto :goto_2

    :cond_0
    move-wide/from16 p0, v8

    float-to-double v8, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v8, v18

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    sub-double v14, v8, v10

    sub-double/2addr v14, v4

    :goto_0
    div-double v4, v12, v14

    double-to-float v0, v4

    .line 135
    iput v0, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    sub-double v4, v10, v2

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v14

    div-double v8, v12, v8

    add-double/2addr v4, v8

    div-double/2addr v4, v12

    sub-double v18, v10, v6

    div-double v18, v18, v14

    add-double v18, v18, v8

    div-double v18, v18, v12

    sub-double v20, v10, p0

    div-double v20, v20, v14

    add-double v20, v20, v8

    div-double v20, v20, v12

    cmpl-double v0, v2, v10

    if-nez v0, :cond_2

    sub-double v20, v20, v18

    goto :goto_1

    :cond_2
    cmpl-double v0, v6, v10

    if-nez v0, :cond_3

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    add-double/2addr v4, v2

    sub-double v20, v4, v20

    goto :goto_1

    :cond_3
    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    add-double v18, v18, v2

    sub-double v20, v18, v4

    :goto_1
    cmpg-double v0, v20, v16

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_4

    add-double v20, v20, v2

    :cond_4
    cmpl-double v0, v20, v2

    if-lez v0, :cond_5

    sub-double v20, v20, v2

    :cond_5
    const-wide v2, 0x4076800000000000L    # 360.0

    mul-double v2, v2, v20

    double-to-int v0, v2

    int-to-float v0, v0

    .line 156
    iput v0, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    :goto_2
    return-void
.end method

.method public static RgbToHsl(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)V
    .locals 2

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p0, p0, 0xff

    .line 110
    invoke-static {v0, v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->RgbToHsl(IIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)V

    return-void
.end method


# virtual methods
.method public Interpolate(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;F)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;
    .locals 4

    .line 105
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    iget v2, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    iget v3, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->s:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->l:F

    sub-float/2addr p1, v3

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;-><init>(FFF)V

    return-object v0
.end method
