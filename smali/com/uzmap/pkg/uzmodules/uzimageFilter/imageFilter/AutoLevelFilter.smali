.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;
.super Ljava/lang/Object;
.source "AutoLevelFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Intensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->Intensity:F

    return-void
.end method

.method private static ComputeGamma([I[I[I)[F
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 32
    :cond_0
    aget v3, p0, v2

    aget v4, p1, v2

    if-ge v3, v4, :cond_3

    aget v3, p1, v2

    aget v4, p2, v2

    if-ge v3, v4, :cond_3

    .line 33
    aget v3, p1, v2

    aget v4, p0, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    aget v4, p2, v2

    aget v5, p0, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    cmpl-double v5, v3, v5

    if-lez v5, :cond_1

    const/high16 v3, 0x41200000    # 10.0f

    goto :goto_1

    :cond_1
    const-wide v5, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    const v3, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_2
    double-to-float v3, v3

    .line 34
    :goto_1
    aput v3, v1, v2

    goto :goto_2

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    aput v3, v1, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GetMeanColor([[I)[I
    .locals 13

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    new-array p1, v0, [I

    .line 55
    aget v0, v1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    aput v0, p1, v2

    const/4 v0, 0x1

    aget v2, v1, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, p1, v0

    const/4 v0, 0x2

    aget v1, v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, p1, v0

    return-object p1

    :cond_0
    const-wide/16 v4, 0x0

    move v6, v2

    move-wide v7, v4

    move-wide v9, v7

    :goto_1
    const/16 v11, 0x100

    if-lt v6, v11, :cond_2

    cmp-long v4, v9, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    long-to-float v4, v7

    long-to-float v5, v9

    div-float/2addr v4, v5

    .line 53
    :goto_2
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_2
    aget-object v11, p1, v3

    aget v11, v11, v6

    mul-int/2addr v11, v6

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 51
    aget-object v11, p1, v3

    aget v11, v11, v6

    int-to-long v11, v11

    add-long/2addr v9, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public GetPercentileColor([[IF)[I
    .locals 12

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v4, 0x0

    move v6, v2

    move-wide v7, v4

    :goto_1
    const/16 v9, 0x100

    if-lt v6, v9, :cond_3

    move v6, v2

    :goto_2
    if-lt v6, v9, :cond_1

    goto :goto_3

    .line 69
    :cond_1
    aget-object v10, p1, v3

    aget v10, v10, v6

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-float v10, v4

    long-to-float v11, v7

    mul-float/2addr v11, p2

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 71
    aput v6, v1, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 66
    :cond_3
    aget-object v9, p1, v3

    aget v9, v9, v6

    int-to-long v9, v9

    add-long/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 83
    fill-array-data v2, :array_0

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v3, 0x3

    new-array v4, v3, [I

    new-array v5, v3, [I

    .line 85
    fill-array-data v5, :array_1

    const/16 v6, 0x100

    new-array v8, v6, [I

    new-array v9, v6, [I

    new-array v10, v6, [I

    .line 89
    iget v11, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->Intensity:F

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    const/16 v12, 0xff

    rsub-int v13, v11, 0xff

    const/4 v14, 0x0

    move v15, v14

    .line 91
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v12, v16, -0x1

    if-lt v15, v12, :cond_9

    const v12, 0x3ba3d70a    # 0.005f

    .line 98
    invoke-virtual {v0, v2, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->GetPercentileColor([[IF)[I

    move-result-object v12

    .line 99
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->GetMeanColor([[I)[I

    move-result-object v15

    const v1, 0x3f7eb852    # 0.995f

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->GetPercentileColor([[IF)[I

    move-result-object v1

    .line 101
    invoke-static {v12, v15, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/AutoLevelFilter;->ComputeGamma([I[I[I)[F

    move-result-object v19

    move v2, v14

    :goto_1
    if-lt v2, v3, :cond_2

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v15

    move v12, v14

    .line 125
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v12, v1, :cond_0

    return-object v7

    :cond_0
    move v6, v14

    .line 126
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v6, v1, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 127
    :cond_1
    invoke-virtual {v15, v12, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    .line 128
    invoke-virtual {v15, v12, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    .line 129
    invoke-virtual {v15, v12, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    mul-int v4, v1, v13

    .line 130
    aget v1, v10, v1

    mul-int/2addr v1, v11

    add-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x8

    mul-int v1, v2, v13

    .line 131
    aget v2, v9, v2

    mul-int/2addr v2, v11

    add-int/2addr v1, v2

    shr-int/lit8 v5, v1, 0x8

    mul-int v1, v3, v13

    .line 132
    aget v2, v8, v3

    mul-int/2addr v2, v11

    add-int/2addr v1, v2

    shr-int/lit8 v16, v1, 0x8

    move-object/from16 v1, p1

    move v2, v12

    move v3, v6

    move/from16 v18, v6

    move/from16 v6, v16

    .line 133
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v6, v18, 0x1

    goto :goto_3

    :cond_2
    move v15, v14

    :goto_4
    if-lt v15, v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-array v6, v3, [I

    move v0, v14

    :goto_5
    if-lt v0, v3, :cond_4

    .line 118
    aget v0, v6, v14

    aput v0, v10, v15

    .line 119
    aget v0, v6, v17

    aput v0, v9, v15

    const/4 v0, 0x2

    .line 120
    aget v6, v6, v0

    aput v6, v8, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v6, 0x100

    move-object/from16 v0, p0

    goto :goto_4

    .line 106
    :cond_4
    aget v21, v12, v0

    sub-int v3, v15, v21

    int-to-float v3, v3

    const/16 v21, 0x0

    cmpg-float v21, v3, v21

    if-gez v21, :cond_5

    .line 108
    aget v3, v4, v0

    aput v3, v6, v0

    move-object/from16 v26, v1

    move/from16 v22, v2

    :goto_6
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v14, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v10

    move/from16 v28, v11

    goto :goto_8

    .line 110
    :cond_5
    aget v14, v12, v0

    int-to-float v14, v14

    add-float/2addr v14, v3

    move/from16 v22, v2

    aget v2, v1, v0

    int-to-float v2, v2

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_6

    .line 111
    aget v2, v5, v0

    aput v2, v6, v0

    move-object/from16 v26, v1

    goto :goto_6

    .line 114
    :cond_6
    aget v2, v4, v0

    move-object v14, v8

    move-object/from16 v23, v9

    int-to-double v8, v2

    aget v2, v5, v0

    aget v24, v4, v0

    sub-int v2, v2, v24

    move-object/from16 v24, v4

    move-object/from16 v25, v5

    int-to-double v4, v2

    aget v2, v1, v0

    aget v26, v12, v0

    sub-int v2, v2, v26

    int-to-float v2, v2

    div-float/2addr v3, v2

    float-to-double v2, v3

    move-object/from16 v26, v1

    aget v1, v19, v0

    move-object/from16 v27, v10

    move/from16 v28, v11

    float-to-double v10, v1

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v4, v1

    add-double/2addr v8, v4

    const-wide v1, 0x406fe00000000000L    # 255.0

    cmpl-double v1, v8, v1

    if-lez v1, :cond_7

    const/16 v1, 0xff

    goto :goto_7

    :cond_7
    const-wide/16 v1, 0x0

    cmpg-double v1, v8, v1

    if-gez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_7

    :cond_8
    double-to-int v1, v8

    .line 115
    :goto_7
    aput v1, v6, v0

    :goto_8
    add-int/lit8 v0, v0, 0x1

    move-object v8, v14

    move/from16 v2, v22

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v1, v26

    move-object/from16 v10, v27

    move/from16 v11, v28

    const/4 v3, 0x3

    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_9
    move-object/from16 v24, v4

    move-object/from16 v25, v5

    move-object v14, v8

    move-object/from16 v23, v9

    move-object/from16 v27, v10

    move/from16 v28, v11

    const/4 v0, 0x0

    .line 92
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_a

    add-int/lit8 v15, v15, 0x1

    move-object v8, v14

    move-object/from16 v9, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    move-object/from16 v10, v27

    move/from16 v11, v28

    const/4 v1, 0x2

    const/4 v3, 0x3

    const/16 v6, 0x100

    const/16 v12, 0xff

    const/4 v14, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    .line 93
    aget-object v3, v2, v1

    invoke-virtual {v7, v15, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    .line 94
    aget-object v3, v2, v17

    invoke-virtual {v7, v15, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    const/4 v3, 0x2

    .line 95
    aget-object v4, v2, v3

    invoke-virtual {v7, v15, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    nop

    :array_0
    .array-data 4
        0x3
        0x100
    .end array-data

    :array_1
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method
