.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;
.super Ljava/lang/Object;
.source "HistogramEqualFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public ContrastIntensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;->ContrastIntensity:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 14

    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 33
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v2, v2, [I

    .line 34
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HistogramEqualFilter;->ContrastIntensity:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-lt v5, v7, :cond_b

    :goto_1
    if-lt v8, v0, :cond_a

    move v5, v4

    :goto_2
    const/16 v6, 0xff

    if-lt v5, v0, :cond_9

    move v0, v4

    move v13, v0

    .line 55
    :goto_3
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v13, v3, :cond_0

    return-object p1

    :cond_0
    move v3, v4

    .line 56
    :goto_4
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v5

    if-lt v3, v5, :cond_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 57
    :cond_1
    invoke-virtual {p1, v13, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v5

    .line 58
    invoke-virtual {p1, v13, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v7

    .line 59
    invoke-virtual {p1, v13, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v8

    .line 60
    aget v9, v2, v0

    if-eqz v9, :cond_8

    .line 61
    aget v9, v2, v0

    aget v9, v1, v9

    mul-int/2addr v5, v9

    .line 62
    aget v10, v2, v0

    div-int/2addr v5, v10

    mul-int/2addr v7, v9

    .line 63
    aget v10, v2, v0

    div-int/2addr v7, v10

    mul-int/2addr v8, v9

    .line 64
    aget v9, v2, v0

    div-int/2addr v8, v9

    const/4 v9, -0x1

    if-le v5, v6, :cond_2

    move v5, v9

    goto :goto_5

    :cond_2
    if-gez v5, :cond_3

    move v5, v4

    goto :goto_5

    :cond_3
    int-to-byte v5, v5

    :goto_5
    if-le v7, v6, :cond_4

    move v7, v9

    goto :goto_6

    :cond_4
    if-gez v7, :cond_5

    move v7, v4

    goto :goto_6

    :cond_5
    int-to-byte v7, v7

    :goto_6
    if-le v8, v6, :cond_6

    goto :goto_7

    :cond_6
    if-gez v8, :cond_7

    move v9, v4

    goto :goto_7

    :cond_7
    int-to-byte v9, v8

    :goto_7
    move v10, v5

    move v11, v7

    move v12, v9

    goto :goto_8

    :cond_8
    move v10, v5

    move v11, v7

    move v12, v8

    :goto_8
    move-object v7, p1

    move v8, v13

    move v9, v3

    .line 69
    invoke-virtual/range {v7 .. v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 51
    :cond_9
    aget v7, v1, v5

    shl-int/lit8 v7, v7, 0x8

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v8

    div-int/2addr v7, v8

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    aput v7, v1, v5

    .line 52
    aget v7, v1, v5

    mul-int/2addr v7, v3

    shr-int/lit8 v7, v7, 0x8

    sub-int/2addr v6, v3

    mul-int/2addr v6, v5

    shr-int/lit8 v6, v6, 0x8

    add-int/2addr v7, v6

    aput v7, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 48
    :cond_a
    aget v5, v1, v8

    add-int/lit8 v6, v8, -0x1

    aget v6, v1, v6

    add-int/2addr v5, v6

    aput v5, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_b
    move v7, v4

    .line 37
    :goto_9
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    if-lt v7, v9, :cond_c

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1, v5, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v9

    .line 39
    invoke-virtual {p1, v5, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v10

    .line 40
    invoke-virtual {p1, v5, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v11

    mul-int/lit16 v9, v9, 0x1b36

    mul-int/lit16 v10, v10, 0x5b8c

    add-int/2addr v9, v10

    mul-int/lit16 v11, v11, 0x93e

    add-int/2addr v9, v11

    shr-int/lit8 v9, v9, 0xf

    .line 42
    aget v10, v1, v9

    add-int/2addr v10, v8

    aput v10, v1, v9

    .line 43
    aput v9, v2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_9
.end method
