.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;
.super Ljava/lang/Object;
.source "SupernovaFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# static fields
.field static RAND_MAX:I = 0x7fff


# instance fields
.field _count:I

.field _pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

.field _radius:D

.field _spoke:[D

.field _spokecolor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;III)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;III)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    .line 40
    invoke-static {p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->BoundParam1(I)I

    move-result p1

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_radius:D

    .line 41
    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->BoundParam1(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_count:I

    .line 42
    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->BoundParam1(I)I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spoke:[D

    .line 43
    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->BoundParam1(I)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spokecolor:[I

    const/4 p1, 0x0

    .line 44
    :goto_0
    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_count:I

    if-lt p1, p3, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spoke:[D

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->get_gauss()D

    move-result-wide v0

    aput-wide v0, p3, p1

    .line 47
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spokecolor:[I

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static BoundParam1(I)I
    .locals 1

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0
.end method

.method static get_gauss()D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const/16 v3, -0xff

    const/16 v4, 0xff

    .line 55
    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v3

    int-to-double v3, v3

    sget v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->RAND_MAX:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    div-double/2addr v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 70
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    add-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    const/4 v8, 0x2

    if-gtz v1, :cond_0

    .line 71
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v8

    int-to-float v2, v2

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    .line 72
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    div-int/2addr v2, v8

    int-to-float v2, v2

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    :cond_0
    const/4 v9, 0x0

    move v10, v9

    .line 74
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    const/4 v11, 0x1

    sub-int/2addr v1, v11

    if-lt v10, v1, :cond_1

    return-object v7

    :cond_1
    move v12, v9

    .line 75
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    sub-int/2addr v1, v11

    if-lt v12, v1, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/4 v13, 0x3

    new-array v14, v13, [I

    .line 77
    invoke-virtual {v7, v10, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    aput v1, v14, v9

    .line 78
    invoke-virtual {v7, v10, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v1

    aput v1, v14, v11

    .line 79
    invoke-virtual {v7, v10, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v1

    aput v1, v14, v8

    int-to-float v1, v10

    .line 81
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    add-double/2addr v1, v3

    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_radius:D

    div-double/2addr v1, v5

    int-to-float v5, v12

    .line 82
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_pt:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    add-double/2addr v5, v3

    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_radius:D

    div-double/2addr v5, v3

    .line 84
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v3, v15

    const-wide v15, 0x3fe051eb851eb852L    # 0.51

    add-double/2addr v3, v15

    iget v15, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_count:I

    int-to-double v8, v15

    mul-double/2addr v3, v8

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    move v15, v12

    int-to-double v11, v8

    sub-double v11, v3, v11

    .line 87
    iget v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_count:I

    rem-int/2addr v8, v3

    .line 89
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spoke:[D

    aget-wide v18, v4, v8

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v22, v20, v11

    mul-double v18, v18, v22

    add-int/lit8 v24, v8, 0x1

    rem-int v3, v24, v3

    aget-wide v3, v4, v3

    mul-double/2addr v3, v11

    add-double v18, v18, v3

    mul-double v18, v18, v18

    mul-double/2addr v1, v1

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    .line 92
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double v1, v20, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double v31, v1, v3

    const-wide/16 v27, 0x0

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v25, v31

    .line 93
    invoke-static/range {v25 .. v30}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v25

    mul-double v1, v18, v31

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 95
    invoke-static/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v18

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v13, :cond_3

    add-int/lit8 v12, v15, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_3
    new-array v1, v13, [I

    .line 100
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_spokecolor:[I

    aget v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x0

    aput v3, v1, v4

    .line 101
    aget v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    aput v3, v1, v4

    .line 102
    aget v3, v2, v8

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    aput v3, v1, v4

    new-array v3, v13, [I

    .line 105
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SupernovaFilter;->_count:I

    rem-int v5, v24, v4

    aget v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v17, 0x0

    aput v5, v3, v17

    .line 106
    rem-int v5, v24, v4

    aget v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v9, 0x1

    aput v5, v3, v9

    .line 107
    rem-int v4, v24, v4

    aget v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 109
    aget v1, v1, v6

    int-to-double v1, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v1, v4

    mul-double v1, v1, v22

    aget v3, v3, v6

    move/from16 v27, v10

    int-to-double v9, v3

    div-double/2addr v9, v4

    mul-double/2addr v9, v11

    add-double/2addr v1, v9

    cmpl-double v3, v31, v20

    if-lez v3, :cond_4

    mul-double v33, v1, v31

    const-wide/16 v35, 0x0

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    .line 113
    invoke-static/range {v33 .. v38}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide v1

    goto :goto_3

    .line 115
    :cond_4
    aget v3, v14, v6

    int-to-double v9, v3

    div-double/2addr v9, v4

    sub-double v29, v20, v25

    mul-double v9, v9, v29

    mul-double v1, v1, v25

    add-double/2addr v1, v9

    :goto_3
    add-double v1, v1, v18

    mul-double/2addr v1, v4

    .line 119
    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v1

    aput v1, v14, v6

    const/4 v9, 0x0

    .line 120
    aget v4, v14, v9

    const/4 v10, 0x1

    aget v5, v14, v10

    const/16 v16, 0x2

    aget v17, v14, v16

    move-object/from16 v1, p1

    move/from16 v2, v27

    move v3, v15

    move/from16 v28, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v6, v28, 0x1

    move/from16 v10, v27

    goto/16 :goto_2
.end method
