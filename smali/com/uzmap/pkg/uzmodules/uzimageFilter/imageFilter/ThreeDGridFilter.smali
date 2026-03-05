.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;
.super Ljava/lang/Object;
.source "ThreeDGridFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _depth:I

.field _size:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 27
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_size:I

    .line 28
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_depth:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 10

    const/4 v0, 0x0

    move v7, v0

    .line 34
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 35
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    .line 37
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    .line 38
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    add-int/lit8 v4, v8, -0x1

    .line 41
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_size:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_2

    rem-int v4, v7, v5

    if-lez v4, :cond_2

    add-int/lit8 v4, v7, 0x1

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 42
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_depth:I

    :goto_2
    neg-int v4, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v8, 0x2

    .line 43
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_size:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_3

    rem-int v4, v7, v5

    if-lez v4, :cond_3

    add-int/lit8 v4, v7, 0x1

    rem-int/2addr v4, v5

    if-lez v4, :cond_3

    .line 44
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_depth:I

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v7, -0x1

    .line 45
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_size:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_4

    rem-int v4, v8, v5

    if-lez v4, :cond_4

    add-int/lit8 v4, v8, 0x1

    rem-int/2addr v4, v5

    if-lez v4, :cond_4

    .line 46
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_depth:I

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v7, 0x2

    .line 47
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_size:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_5

    rem-int v4, v8, v5

    if-lez v4, :cond_5

    add-int/lit8 v4, v8, 0x1

    rem-int/2addr v4, v5

    if-lez v4, :cond_5

    .line 48
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ThreeDGridFilter;->_depth:I

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_3
    add-int/2addr v1, v4

    .line 50
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v5

    add-int/2addr v2, v4

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v6

    add-int/2addr v3, v4

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v9

    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v5

    move v5, v6

    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
