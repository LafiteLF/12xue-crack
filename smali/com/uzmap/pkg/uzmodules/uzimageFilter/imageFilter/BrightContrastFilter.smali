.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;
.super Ljava/lang/Object;
.source "BrightContrastFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public BrightnessFactor:F

.field public ContrastFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 31
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->BrightnessFactor:F

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->ContrastFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 11

    .line 43
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->BrightnessFactor:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 44
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->ContrastFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    mul-float/2addr v1, v1

    const/high16 v2, 0x47000000    # 32768.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    move v9, v2

    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v9, v3, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    .line 48
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v10, v3, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 50
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 51
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    const/16 v6, 0xff

    if-eqz v0, :cond_7

    add-int/2addr v3, v0

    add-int/2addr v4, v0

    add-int/2addr v5, v0

    if-le v3, v6, :cond_2

    move v3, v6

    goto :goto_2

    :cond_2
    if-gez v3, :cond_3

    move v3, v2

    :cond_3
    :goto_2
    if-le v4, v6, :cond_4

    move v4, v6

    goto :goto_3

    :cond_4
    if-gez v4, :cond_5

    move v4, v2

    :cond_5
    :goto_3
    if-le v5, v6, :cond_6

    move v5, v6

    goto :goto_4

    :cond_6
    if-gez v5, :cond_7

    move v5, v2

    :cond_7
    :goto_4
    const v7, 0x8001

    if-eq v1, v7, :cond_e

    add-int/lit8 v3, v3, -0x80

    add-int/lit8 v4, v4, -0x80

    add-int/lit8 v5, v5, -0x80

    mul-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0xf

    mul-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0xf

    mul-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0xf

    add-int/lit16 v3, v3, 0x80

    add-int/lit16 v4, v4, 0x80

    add-int/lit16 v5, v5, 0x80

    if-le v3, v6, :cond_8

    move v3, v6

    goto :goto_5

    :cond_8
    if-gez v3, :cond_9

    move v3, v2

    :cond_9
    :goto_5
    if-le v4, v6, :cond_a

    move v4, v6

    goto :goto_6

    :cond_a
    if-gez v4, :cond_b

    move v4, v2

    :cond_b
    :goto_6
    if-le v5, v6, :cond_c

    goto :goto_7

    :cond_c
    if-gez v5, :cond_d

    move v6, v2

    goto :goto_7

    :cond_d
    move v6, v5

    :goto_7
    move v7, v4

    move v8, v6

    move v6, v3

    goto :goto_8

    :cond_e
    move v6, v3

    move v7, v4

    move v8, v5

    :goto_8
    move-object v3, p1

    move v4, v9

    move v5, v10

    .line 86
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
