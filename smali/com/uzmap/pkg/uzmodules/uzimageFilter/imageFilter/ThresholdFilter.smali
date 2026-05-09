.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThresholdFilter;
.super Ljava/lang/Object;
.source "ThresholdFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private Threshold:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThresholdFilter;->Threshold:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 10

    .line 31
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThresholdFilter;->Threshold:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    move v8, v1

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    if-lt v8, v2, :cond_0

    return-object p1

    :cond_0
    move v9, v1

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    if-lt v9, v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v2

    .line 36
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    .line 37
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    mul-int/lit16 v2, v2, 0x1b36

    mul-int/lit16 v3, v3, 0x5b8c

    add-int/2addr v2, v3

    mul-int/lit16 v4, v4, 0x93e

    add-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0xf

    if-le v2, v0, :cond_2

    const/16 v2, 0xff

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v1

    :goto_2
    move-object v2, p1

    move v3, v8

    move v4, v9

    move v5, v7

    move v6, v7

    .line 41
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
