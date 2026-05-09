.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NeonFilter;
.super Ljava/lang/Object;
.source "NeonFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private luminance(III)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v0, v2

    int-to-double p1, p2

    const-wide v2, 0x3fe28f5c28f5c28fL    # 0.58

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    int-to-double p1, p3

    const-wide v2, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr p1, v2

    add-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method private truncate(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    const/16 v4, 0x100

    new-array v4, v4, [Landroid/graphics/Paint;

    .line 35
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x3fd51eb851eb851fL    # 0.33

    cmpl-double v7, v5, v7

    const/4 v8, 0x3

    const-wide v9, 0x3fe51eb851eb851fL    # 0.66

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-lez v7, :cond_0

    cmpg-double v7, v5, v9

    if-gez v7, :cond_0

    move v5, v11

    goto :goto_0

    :cond_0
    cmpl-double v5, v5, v9

    if-lez v5, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    move v5, v12

    :goto_0
    const/16 v6, 0xff

    move v7, v6

    :goto_1
    if-gez v7, :cond_6

    new-array v5, v11, [I

    aput v3, v5, v12

    const/4 v9, 0x0

    aput v2, v5, v9

    .line 63
    const-class v7, I

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, [[I

    move v13, v9

    :goto_2
    if-lt v13, v3, :cond_4

    move v5, v12

    :goto_3
    add-int/lit8 v7, v3, -0x1

    if-lt v5, v7, :cond_2

    return-object v1

    :cond_2
    move v7, v12

    :goto_4
    add-int/lit8 v8, v2, -0x1

    if-lt v7, v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v7, -0x1

    .line 82
    aget-object v9, v10, v8

    add-int/lit8 v13, v5, -0x1

    aget v9, v9, v13

    neg-int v9, v9

    aget-object v14, v10, v8

    add-int/lit8 v15, v13, 0x2

    aget v14, v14, v15

    add-int/2addr v9, v14

    add-int/lit8 v14, v8, 0x1

    aget-object v16, v10, v14

    aget v16, v16, v13

    mul-int/lit8 v16, v16, 0x2

    sub-int v9, v9, v16

    aget-object v14, v10, v14

    aget v14, v14, v15

    mul-int/2addr v14, v11

    add-int/2addr v9, v14

    add-int/lit8 v14, v8, 0x2

    aget-object v16, v10, v14

    aget v16, v16, v13

    sub-int v9, v9, v16

    aget-object v16, v10, v14

    aget v16, v16, v15

    add-int v9, v9, v16

    .line 83
    aget-object v16, v10, v8

    aget v16, v16, v13

    aget-object v17, v10, v8

    add-int/lit8 v18, v13, 0x1

    aget v17, v17, v18

    mul-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    aget-object v8, v10, v8

    aget v8, v8, v15

    add-int v16, v16, v8

    aget-object v8, v10, v14

    aget v8, v8, v13

    sub-int v16, v16, v8

    aget-object v8, v10, v14

    aget v8, v8, v18

    mul-int/2addr v8, v11

    sub-int v16, v16, v8

    aget-object v8, v10, v14

    aget v8, v8, v15

    sub-int v16, v16, v8

    .line 86
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v0, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NeonFilter;->truncate(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    .line 87
    aget-object v8, v4, v8

    .line 90
    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-virtual {v1, v7, v5, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    move v5, v9

    :goto_5
    if-lt v5, v2, :cond_5

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 69
    :cond_5
    aget-object v7, v10, v5

    invoke-virtual {v1, v5, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v8

    invoke-virtual {v1, v5, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v14

    invoke-virtual {v1, v5, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v15

    invoke-direct {v0, v8, v14, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NeonFilter;->luminance(III)I

    move-result v8

    aput v8, v7, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 43
    :cond_6
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const/16 v10, 0x7f

    if-le v7, v10, :cond_a

    if-eq v5, v12, :cond_9

    if-eq v5, v11, :cond_8

    if-eq v5, v8, :cond_7

    goto :goto_6

    :cond_7
    rsub-int v10, v7, 0xff

    move v13, v7

    move v14, v10

    move v10, v13

    goto :goto_8

    :cond_8
    rsub-int v10, v7, 0xff

    move v14, v7

    move v13, v10

    move v10, v14

    goto :goto_8

    :cond_9
    rsub-int v10, v7, 0xff

    move v13, v7

    goto :goto_7

    :cond_a
    :goto_6
    move v10, v7

    move v13, v10

    :goto_7
    move v14, v13

    .line 59
    :goto_8
    invoke-static {v10, v13, v14}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    rsub-int v10, v7, 0xff

    .line 60
    aput-object v9, v4, v10

    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1
.end method
