.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;
.super Ljava/lang/Object;
.source "RaiseFrameFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 31
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;->_size:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    .line 37
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-lt v9, v0, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    :goto_1
    if-lt v10, v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 42
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 43
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    .line 45
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;->_size:I

    const/16 v7, 0x41

    const/16 v8, 0xff

    if-ge v9, v6, :cond_2

    sub-int v6, v1, v9

    if-ge v10, v6, :cond_2

    if-lt v10, v9, :cond_2

    .line 46
    invoke-static {v8, v8, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_2

    .line 47
    :cond_2
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;->_size:I

    const/16 v11, 0x78

    if-ge v10, v6, :cond_3

    sub-int v6, v0, v10

    if-ge v9, v6, :cond_3

    if-lt v9, v10, :cond_3

    .line 48
    invoke-static {v8, v8, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_2

    .line 49
    :cond_3
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;->_size:I

    sub-int v6, v0, v6

    if-le v9, v6, :cond_4

    sub-int v6, v0, v9

    if-lt v10, v6, :cond_4

    add-int v6, v1, v9

    sub-int/2addr v6, v0

    if-ge v10, v6, :cond_4

    .line 50
    invoke-static {v2, v2, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    goto :goto_2

    .line 51
    :cond_4
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RaiseFrameFilter;->_size:I

    sub-int v6, v1, v6

    if-le v10, v6, :cond_5

    .line 52
    invoke-static {v2, v2, v11}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    :goto_2
    and-int/2addr v6, v8

    mul-int/lit8 v6, v6, 0x14

    mul-int/lit16 v3, v3, 0xeb

    add-int/2addr v3, v6

    .line 60
    div-int/lit16 v7, v3, 0xff

    mul-int/lit16 v4, v4, 0xeb

    add-int/2addr v4, v6

    div-int/lit16 v11, v4, 0xff

    mul-int/lit16 v5, v5, 0xeb

    add-int/2addr v6, v5

    div-int/lit16 v8, v6, 0xff

    move-object v3, p1

    move v4, v9

    move v5, v10

    move v6, v7

    move v7, v11

    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
