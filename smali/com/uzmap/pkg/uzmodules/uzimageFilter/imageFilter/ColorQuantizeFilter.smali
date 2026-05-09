.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorQuantizeFilter;
.super Ljava/lang/Object;
.source "ColorQuantizeFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private levels:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 26
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorQuantizeFilter;->levels:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 11

    const/4 v0, 0x0

    move v7, v0

    .line 32
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 33
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    .line 35
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    .line 36
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    int-to-float v1, v1

    const v4, 0x3b808081

    mul-float/2addr v1, v4

    .line 37
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ColorQuantizeFilter;->levels:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    int-to-float v2, v2

    mul-float/2addr v2, v4

    mul-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    mul-float/2addr v2, v6

    int-to-float v3, v3

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v3, v6

    cmpl-float v4, v1, v6

    const/16 v5, 0xff

    const/4 v9, 0x0

    if-lez v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    cmpg-float v4, v1, v9

    if-gez v4, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    float-to-int v1, v1

    move v4, v1

    :goto_2
    cmpl-float v1, v2, v6

    if-lez v1, :cond_4

    move v10, v5

    goto :goto_3

    :cond_4
    cmpg-float v1, v2, v9

    if-gez v1, :cond_5

    move v10, v0

    goto :goto_3

    :cond_5
    float-to-int v1, v2

    move v10, v1

    :goto_3
    cmpl-float v1, v3, v6

    if-lez v1, :cond_6

    move v6, v5

    goto :goto_4

    :cond_6
    cmpg-float v1, v3, v9

    if-gez v1, :cond_7

    move v6, v0

    goto :goto_4

    :cond_7
    float-to-int v1, v3

    move v6, v1

    :goto_4
    move-object v1, p1

    move v2, v7

    move v3, v8

    move v5, v10

    .line 43
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
