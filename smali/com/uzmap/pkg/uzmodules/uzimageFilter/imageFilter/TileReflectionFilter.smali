.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;
.super Ljava/lang/Object;
.source "TileReflectionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field final aasamples:I

.field m_aapt:[Landroid/graphics/Point;

.field m_cos:D

.field m_curvature:D

.field m_focusType:B

.field m_scale:D

.field m_sin:D

.field m_size:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/16 v0, 0x2d

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;-><init>(IIIB)V

    return-void
.end method

.method public constructor <init>(IIIB)V
    .locals 17

    move-object/from16 v0, p0

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x11

    .line 31
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->aasamples:I

    new-array v2, v1, [Landroid/graphics/Point;

    .line 32
    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_aapt:[Landroid/graphics/Point;

    const/16 v2, 0x18

    .line 34
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_size:I

    const/16 v2, -0x2d

    const/16 v3, 0x2d

    move/from16 v4, p3

    .line 44
    invoke-static {v4, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->AngleToRadian(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_sin:D

    .line 46
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->AngleToRadian(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_cos:D

    const/4 v2, 0x2

    const/16 v3, 0xc8

    move/from16 v4, p1

    .line 48
    invoke-static {v4, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v2

    .line 49
    iput-wide v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_scale:D

    move/from16 v2, p4

    .line 50
    iput-byte v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_focusType:B

    const/16 v2, -0x14

    const/16 v3, 0x14

    move/from16 v4, p2

    .line 51
    invoke-static {v4, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :cond_0
    mul-int v3, v2, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    .line 54
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    div-int/2addr v5, v2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iput-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_curvature:D

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    mul-int/lit8 v3, v2, 0x4

    int-to-double v3, v3

    const-wide/high16 v5, 0x4031000000000000L    # 17.0

    div-double/2addr v3, v5

    int-to-double v7, v2

    div-double/2addr v7, v5

    double-to-int v5, v3

    int-to-double v5, v5

    sub-double/2addr v3, v5

    .line 61
    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_aapt:[Landroid/graphics/Point;

    new-instance v6, Landroid/graphics/Point;

    iget-wide v9, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_cos:D

    mul-double v11, v9, v3

    iget-wide v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_sin:D

    mul-double v15, v13, v7

    add-double/2addr v11, v15

    double-to-int v11, v11

    mul-double/2addr v9, v7

    mul-double/2addr v13, v3

    sub-double/2addr v9, v13

    double-to-int v3, v9

    invoke-direct {v6, v11, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method AngleToRadian(I)D
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    int-to-double v1, v8

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v10, v1, v3

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    int-to-double v1, v1

    div-double v12, v1, v3

    const v1, 0x8000

    if-le v8, v9, :cond_0

    mul-int/2addr v1, v9

    .line 83
    div-int/2addr v1, v8

    goto :goto_0

    :cond_0
    mul-int/2addr v1, v8

    div-int/2addr v1, v9

    :goto_0
    move v14, v1

    shr-int/lit8 v15, v8, 0x1

    shr-int/lit8 v16, v9, 0x1

    mul-int v1, v15, v15

    mul-int v2, v16, v16

    add-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v1, v3

    double-to-int v6, v1

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v8, :cond_1

    return-object v7

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-lt v3, v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 94
    :cond_2
    iget-byte v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_focusType:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    sub-int v1, v15, v4

    sub-int v2, v16, v3

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v5

    move/from16 v17, v15

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v15

    if-le v5, v15, :cond_3

    mul-int/2addr v2, v14

    shr-int/lit8 v2, v2, 0xe

    goto :goto_3

    :cond_3
    mul-int/2addr v1, v14

    shr-int/lit8 v1, v1, 0xe

    :goto_3
    mul-int/2addr v1, v1

    mul-int/2addr v2, v2

    add-int/2addr v1, v2

    if-gt v1, v6, :cond_9

    :goto_4
    move/from16 v20, v3

    move/from16 v21, v4

    move v15, v6

    move/from16 v22, v14

    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_4
    move/from16 v17, v15

    const/4 v5, 0x2

    if-ne v1, v5, :cond_9

    .line 115
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_size:I

    if-ge v4, v1, :cond_5

    sub-int v1, v9, v4

    if-ge v3, v1, :cond_5

    if-lt v3, v4, :cond_5

    goto :goto_5

    .line 117
    :cond_5
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_size:I

    if-ge v3, v1, :cond_6

    sub-int v1, v8, v3

    if-ge v4, v1, :cond_6

    if-lt v4, v3, :cond_6

    goto :goto_5

    .line 119
    :cond_6
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_size:I

    sub-int v1, v8, v1

    if-le v4, v1, :cond_7

    sub-int v1, v8, v4

    if-lt v3, v1, :cond_7

    add-int v1, v9, v4

    sub-int/2addr v1, v8

    if-ge v3, v1, :cond_7

    goto :goto_5

    .line 121
    :cond_7
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_size:I

    sub-int v1, v9, v1

    if-le v3, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    :goto_5
    if-nez v2, :cond_9

    goto :goto_4

    :cond_9
    int-to-double v1, v4

    sub-double/2addr v1, v10

    double-to-int v1, v1

    move v15, v6

    int-to-double v5, v3

    sub-double/2addr v5, v12

    double-to-int v2, v5

    move/from16 v20, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6
    const/16 v3, 0x11

    if-lt v5, v3, :cond_a

    .line 151
    div-int/lit8 v6, v6, 0x11

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v5

    div-int/lit8 v18, v18, 0x11

    invoke-static/range {v18 .. v18}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v6

    div-int/lit8 v19, v19, 0x11

    invoke-static/range {v19 .. v19}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v18

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v3, v20

    move/from16 v21, v4

    move v4, v5

    move/from16 v22, v14

    const/4 v14, 0x0

    move v5, v6

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    :goto_7
    add-int/lit8 v3, v20, 0x1

    move v6, v15

    move/from16 v15, v17

    move/from16 v4, v21

    move/from16 v14, v22

    goto/16 :goto_2

    :cond_a
    move/from16 v21, v4

    move/from16 v22, v14

    const/4 v14, 0x0

    .line 130
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_aapt:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    int-to-double v3, v3

    .line 131
    iget-object v14, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_aapt:[Landroid/graphics/Point;

    aget-object v14, v14, v5

    iget v14, v14, Landroid/graphics/Point;->y:I

    sub-int v14, v2, v14

    move/from16 v23, v1

    move/from16 v24, v2

    int-to-double v1, v14

    move/from16 v25, v15

    .line 133
    iget-wide v14, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_cos:D

    mul-double v26, v14, v3

    move/from16 v28, v5

    move/from16 v29, v6

    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_sin:D

    mul-double v30, v5, v1

    add-double v26, v26, v30

    neg-double v5, v5

    mul-double/2addr v5, v3

    mul-double/2addr v14, v1

    add-double/2addr v5, v14

    .line 136
    iget-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_curvature:D

    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_scale:D

    mul-double v3, v3, v26

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    add-double v26, v26, v1

    .line 137
    iget-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_curvature:D

    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_scale:D

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    add-double/2addr v5, v1

    .line 138
    iget-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_cos:D

    mul-double v3, v1, v26

    iget-wide v14, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TileReflectionFilter;->m_sin:D

    mul-double v30, v14, v5

    sub-double v3, v3, v30

    mul-double v14, v14, v26

    mul-double/2addr v1, v5

    add-double/2addr v14, v1

    add-double/2addr v3, v10

    double-to-int v1, v3

    add-double/2addr v14, v12

    double-to-int v2, v14

    add-int/lit8 v3, v8, -0x1

    const/4 v4, 0x0

    .line 144
    invoke-static {v1, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v1

    add-int/lit8 v3, v9, -0x1

    .line 145
    invoke-static {v2, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v2

    .line 147
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    add-int v6, v29, v3

    .line 148
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    add-int v18, v18, v3

    .line 149
    invoke-virtual {v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v1

    add-int v19, v19, v1

    add-int/lit8 v5, v28, 0x1

    move/from16 v4, v21

    move/from16 v14, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v15, v25

    goto/16 :goto_6
.end method
