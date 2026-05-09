.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;
.super Ljava/lang/Object;
.source "NoiseFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Intensity:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e4ccccd    # 0.2f

    .line 26
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->Intensity:F

    return-void
.end method

.method public static getRandomInt(II)I
    .locals 3

    .line 29
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 30
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 31
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    int-to-double p0, p0

    mul-double/2addr v1, p0

    double-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 11

    .line 38
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->Intensity:F

    const/high16 v1, 0x47000000    # 32768.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    move v8, v1

    .line 39
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    if-lt v8, v2, :cond_0

    return-object p1

    :cond_0
    move v9, v1

    .line 40
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    if-lt v9, v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v2

    .line 42
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    .line 43
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    if-eqz v0, :cond_8

    const/16 v5, -0xff

    const/16 v6, 0xff

    .line 45
    invoke-static {v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v7

    mul-int/2addr v7, v0

    .line 46
    invoke-static {v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v10

    mul-int/2addr v10, v0

    .line 47
    invoke-static {v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v5

    mul-int/2addr v5, v0

    shr-int/lit8 v7, v7, 0xf

    add-int/2addr v2, v7

    shr-int/lit8 v7, v10, 0xf

    add-int/2addr v3, v7

    shr-int/lit8 v5, v5, 0xf

    add-int/2addr v4, v5

    const/4 v5, -0x1

    if-le v2, v6, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    if-gez v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    int-to-byte v2, v2

    :goto_2
    if-le v3, v6, :cond_4

    move v3, v5

    goto :goto_3

    :cond_4
    if-gez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    int-to-byte v3, v3

    :goto_3
    if-le v4, v6, :cond_6

    goto :goto_4

    :cond_6
    if-gez v4, :cond_7

    move v5, v1

    goto :goto_4

    :cond_7
    int-to-byte v5, v4

    :goto_4
    move v6, v3

    move v7, v5

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v2

    move v6, v3

    move v7, v4

    :goto_5
    move-object v2, p1

    move v3, v8

    move v4, v9

    .line 55
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
