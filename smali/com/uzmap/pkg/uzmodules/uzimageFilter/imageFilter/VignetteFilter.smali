.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;
.super Ljava/lang/Object;
.source "VignetteFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Size:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 29
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    .line 33
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 16

    move-object/from16 v6, p1

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    const v2, 0x8000

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    :goto_0
    div-int/2addr v0, v1

    move v7, v0

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    shr-int/lit8 v8, v0, 0x1

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v0

    shr-int/lit8 v9, v0, 0x1

    mul-int v0, v8, v8

    mul-int v1, v9, v9

    add-int v10, v0, v1

    int-to-float v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v11, p0

    .line 47
    iget v2, v11, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v12, v0

    sub-int v13, v10, v12

    const/4 v15, 0x0

    .line 50
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    if-lt v15, v0, :cond_1

    return-object v6

    :cond_1
    const/4 v5, 0x0

    .line 51
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v0

    if-lt v5, v0, :cond_2

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 52
    :cond_2
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v0

    .line 53
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v1

    .line 54
    invoke-virtual {v6, v15, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v2

    sub-int v3, v8, v15

    sub-int v4, v9, v5

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v6

    if-le v14, v6, :cond_3

    mul-int/2addr v3, v7

    shr-int/lit8 v3, v3, 0xf

    goto :goto_3

    :cond_3
    mul-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0xf

    :goto_3
    mul-int/2addr v3, v3

    mul-int/2addr v4, v4

    add-int/2addr v3, v4

    if-le v3, v12, :cond_a

    sub-int v3, v10, v3

    shl-int/lit8 v3, v3, 0x8

    .line 69
    div-int/2addr v3, v13

    mul-int/2addr v3, v3

    mul-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x10

    mul-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x10

    mul-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x10

    const/16 v3, 0xff

    if-le v0, v3, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_4
    int-to-byte v0, v0

    if-le v1, v3, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    if-gez v1, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_5
    int-to-byte v1, v1

    if-le v2, v3, :cond_8

    move v2, v3

    goto :goto_6

    :cond_8
    if-gez v2, :cond_9

    const/4 v2, 0x0

    :cond_9
    :goto_6
    int-to-byte v2, v2

    :cond_a
    move v3, v0

    move v4, v1

    move v6, v2

    move-object/from16 v0, p1

    move v1, v15

    move v2, v5

    move v14, v5

    move v5, v6

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v5, v14, 0x1

    move-object/from16 v6, p1

    goto :goto_2
.end method
