.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;
.super Ljava/lang/Object;
.source "SaturationModifyFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public SaturationFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 14

    .line 32
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    sub-float/2addr v1, v0

    const/4 v2, 0x0

    move v9, v2

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v9, v3, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    .line 37
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v10, v3, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 39
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 40
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    const v6, 0x3e59b3d0    # 0.2126f

    mul-float/2addr v6, v1

    add-float v7, v6, v0

    const v8, 0x3f371759    # 0.7152f

    mul-float/2addr v8, v1

    add-float v11, v8, v0

    const v12, 0x3d93dd98    # 0.0722f

    mul-float/2addr v12, v1

    add-float v13, v12, v0

    int-to-float v3, v3

    mul-float/2addr v7, v3

    int-to-float v4, v4

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    int-to-float v5, v5

    mul-float/2addr v12, v5

    add-float/2addr v7, v12

    mul-float/2addr v3, v6

    mul-float/2addr v4, v11

    add-float/2addr v4, v3

    add-float/2addr v4, v12

    add-float/2addr v3, v8

    mul-float/2addr v5, v13

    add-float/2addr v3, v5

    const/high16 v5, 0x437f0000    # 255.0f

    cmpl-float v6, v7, v5

    const/16 v8, 0xff

    const/4 v11, 0x0

    if-lez v6, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    cmpg-float v6, v7, v11

    if-gez v6, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    float-to-int v6, v7

    :goto_2
    cmpl-float v7, v4, v5

    if-lez v7, :cond_4

    move v7, v8

    goto :goto_3

    :cond_4
    cmpg-float v7, v4, v11

    if-gez v7, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    float-to-int v4, v4

    move v7, v4

    :goto_3
    cmpl-float v4, v3, v5

    if-lez v4, :cond_6

    goto :goto_4

    :cond_6
    cmpg-float v4, v3, v11

    if-gez v4, :cond_7

    move v8, v2

    goto :goto_4

    :cond_7
    float-to-int v3, v3

    move v8, v3

    :goto_4
    move-object v3, p1

    move v4, v9

    move v5, v10

    .line 54
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
