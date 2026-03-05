.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;
.super Ljava/lang/Object;
.source "LUTFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field protected m_LUT:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 24
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->m_LUT:[I

    return-void
.end method


# virtual methods
.method protected InitLUTtable(I)I
    .locals 0

    return p1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    move v2, v0

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v2, v1, :cond_0

    return-object p1

    :cond_0
    move v1, v0

    .line 36
    :goto_2
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 38
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 39
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    .line 41
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->m_LUT:[I

    aget v3, v6, v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v6

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->m_LUT:[I

    aget v3, v3, v4

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v7

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->m_LUT:[I

    aget v3, v3, v5

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v8

    move-object v3, p1

    move v4, v2

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 33
    :cond_2
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->m_LUT:[I

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LUTFilter;->InitLUTtable(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
