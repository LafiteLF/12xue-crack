.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;
.super Ljava/lang/Object;
.source "PixelateFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private pixelSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    return-void
.end method

.method private fillRect(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)V
    .locals 3

    move v0, p2

    :goto_0
    add-int v1, p2, p4

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    move v1, p3

    :goto_1
    add-int v2, p3, p4

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 118
    invoke-virtual {p1, v0, v1, p5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getPredominantRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;III)I
    .locals 7

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v3, v2

    move v4, v3

    :goto_0
    add-int v5, p2, p4

    if-lt v1, v5, :cond_0

    const/high16 p1, -0x1000000

    shl-int/lit8 p2, v2, 0x10

    add-int/2addr p2, p1

    shl-int/lit8 p1, v3, 0x8

    add-int/2addr p2, p1

    add-int/2addr p2, v4

    return p2

    :cond_0
    move v5, p3

    :goto_1
    add-int v6, p3, p4

    if-lt v5, v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v6

    if-ge v1, v6, :cond_5

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_5

    if-ne v2, v0, :cond_2

    .line 82
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v2

    goto :goto_2

    .line 85
    :cond_2
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v6

    add-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    :goto_2
    if-ne v3, v0, :cond_3

    .line 88
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v6

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    :goto_3
    if-ne v4, v0, :cond_4

    .line 94
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    goto :goto_4

    .line 97
    :cond_4
    invoke-virtual {p1, v1, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v6

    add-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getPixelSize()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    return v0
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 9

    const/4 v0, 0x0

    move v7, v0

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 34
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    .line 33
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    add-int/2addr v7, v1

    goto :goto_0

    .line 35
    :cond_1
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    invoke-direct {p0, p1, v7, v8, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->getPredominantRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;III)I

    move-result v6

    .line 36
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v8

    invoke-direct/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->fillRect(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;IIII)V

    .line 34
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    add-int/2addr v8, v1

    goto :goto_1
.end method

.method public setPixelSize(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/PixelateFilter;->pixelSize:I

    return-void
.end method
