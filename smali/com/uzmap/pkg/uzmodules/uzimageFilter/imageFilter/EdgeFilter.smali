.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/EdgeFilter;
.super Ljava/lang/Object;
.source "EdgeFilter.java"

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


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 18

    move-object/from16 v0, p1

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    const/16 v3, 0x100

    new-array v3, v3, [Landroid/graphics/Paint;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0xff

    if-le v5, v6, :cond_4

    const/4 v7, 0x2

    new-array v5, v7, [I

    const/4 v8, 0x1

    aput v2, v5, v8

    aput v1, v5, v4

    .line 41
    const-class v9, I

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, [[I

    move v10, v4

    :goto_1
    if-lt v10, v2, :cond_2

    move v5, v8

    :goto_2
    add-int/lit8 v4, v2, -0x1

    if-lt v5, v4, :cond_0

    return-object v0

    :cond_0
    move v4, v8

    :goto_3
    add-int/lit8 v10, v1, -0x1

    if-lt v4, v10, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v4, -0x1

    .line 61
    aget-object v11, v9, v10

    add-int/lit8 v12, v5, -0x1

    aget v11, v11, v12

    neg-int v11, v11

    aget-object v13, v9, v10

    add-int/lit8 v14, v12, 0x2

    aget v13, v13, v14

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x1

    aget-object v15, v9, v13

    aget v15, v15, v12

    mul-int/2addr v15, v7

    sub-int/2addr v11, v15

    aget-object v13, v9, v13

    aget v13, v13, v14

    mul-int/2addr v13, v7

    add-int/2addr v11, v13

    add-int/lit8 v13, v10, 0x2

    aget-object v15, v9, v13

    aget v15, v15, v12

    sub-int/2addr v11, v15

    aget-object v15, v9, v13

    aget v15, v15, v14

    add-int/2addr v11, v15

    .line 62
    aget-object v15, v9, v10

    aget v15, v15, v12

    aget-object v16, v9, v10

    add-int/lit8 v17, v12, 0x1

    aget v16, v16, v17

    mul-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    aget-object v10, v9, v10

    aget v10, v10, v14

    add-int/2addr v15, v10

    aget-object v10, v9, v13

    aget v10, v10, v12

    sub-int/2addr v15, v10

    aget-object v10, v9, v13

    aget v10, v10, v17

    mul-int/2addr v10, v7

    sub-int/2addr v15, v10

    aget-object v10, v9, v13

    aget v10, v10, v14

    sub-int/2addr v15, v10

    .line 65
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v10

    rsub-int v10, v10, 0xff

    .line 66
    aget-object v10, v3, v10

    .line 69
    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    invoke-virtual {v0, v4, v5, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    move v5, v4

    :goto_4
    if-lt v5, v1, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 47
    :cond_3
    aget-object v11, v9, v5

    invoke-virtual {v0, v5, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v12

    invoke-virtual {v0, v5, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v13

    invoke-virtual {v0, v5, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v14

    move-object/from16 v15, p0

    invoke-direct {v15, v12, v13, v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/EdgeFilter;->luminance(III)I

    move-result v12

    aput v12, v11, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v15, p0

    .line 36
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 37
    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method
