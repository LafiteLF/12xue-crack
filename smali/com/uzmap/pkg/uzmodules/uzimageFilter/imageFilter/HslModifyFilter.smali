.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;
.super Ljava/lang/Object;
.source "HslModifyFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private HueFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x43b38000    # 359.0f

    .line 31
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;->HueFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 7

    .line 39
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;->HueFactor:F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;-><init>(FFF)V

    const/4 v1, 0x0

    move v2, v1

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object p1

    :cond_0
    move v3, v1

    .line 42
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v4

    .line 44
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v5

    .line 45
    invoke-virtual {p1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v6

    .line 47
    invoke-static {v4, v5, v6, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->RgbToHsl(IIILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)V

    .line 48
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;->HueFactor:F

    iput v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->h:F

    .line 49
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;->HslToRgb(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslColor;)I

    move-result v4

    .line 50
    invoke-virtual {p1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
