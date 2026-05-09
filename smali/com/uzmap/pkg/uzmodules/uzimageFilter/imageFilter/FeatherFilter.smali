.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FeatherFilter;
.super Ljava/lang/Object;
.source "FeatherFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 30
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FeatherFilter;->Size:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 18

    move-object/from16 v6, p1

    .line 35
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v7

    .line 36
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v8

    const v0, 0x8000

    if-le v7, v8, :cond_0

    mul-int/2addr v0, v8

    .line 37
    div-int/2addr v0, v7

    goto :goto_0

    :cond_0
    mul-int/2addr v0, v7

    div-int/2addr v0, v8

    :goto_0
    move v9, v0

    shr-int/lit8 v10, v7, 0x1

    shr-int/lit8 v11, v8, 0x1

    mul-int v0, v10, v10

    mul-int v1, v11, v11

    add-int/2addr v0, v1

    int-to-float v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v12, p0

    .line 43
    iget v3, v12, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FeatherFilter;->Size:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int v13, v0, v1

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-lt v15, v7, :cond_1

    return-object v6

    :cond_1
    move v5, v14

    :goto_2
    if-lt v5, v8, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v0

    .line 49
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v1

    .line 50
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v2

    sub-int v3, v10, v15

    sub-int v4, v11, v5

    if-le v7, v8, :cond_3

    mul-int/2addr v3, v9

    shr-int/lit8 v3, v3, 0xf

    goto :goto_3

    :cond_3
    mul-int/2addr v4, v9

    shr-int/lit8 v4, v4, 0xf

    :goto_3
    mul-int/2addr v3, v3

    mul-int/2addr v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v13

    div-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    int-to-float v0, v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    const/16 v3, 0xff

    if-le v0, v3, :cond_4

    move v4, v3

    goto :goto_4

    :cond_4
    if-gez v0, :cond_5

    move v4, v14

    goto :goto_4

    :cond_5
    move v4, v0

    :goto_4
    if-le v1, v3, :cond_6

    move/from16 v16, v3

    goto :goto_5

    :cond_6
    if-gez v1, :cond_7

    move/from16 v16, v14

    goto :goto_5

    :cond_7
    move/from16 v16, v1

    :goto_5
    if-le v2, v3, :cond_8

    move/from16 v17, v3

    goto :goto_6

    :cond_8
    if-gez v2, :cond_9

    move/from16 v17, v14

    goto :goto_6

    :cond_9
    move/from16 v17, v2

    :goto_6
    move-object/from16 v0, p1

    move v1, v15

    move v2, v5

    move v3, v4

    move/from16 v4, v16

    move/from16 v16, v5

    move/from16 v5, v17

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v5, v16, 0x1

    goto :goto_2
.end method
