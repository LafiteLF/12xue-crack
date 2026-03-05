.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;
.super Ljava/lang/Object;
.source "BlindFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _color:I

.field _direct:Z

.field _opacity:I

.field _width:I


# direct methods
.method public constructor <init>(ZIII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_direct:Z

    const/4 p1, 0x2

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    .line 33
    :goto_0
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_width:I

    const/4 p1, 0x1

    const/16 p2, 0x64

    .line 34
    invoke-static {p3, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_opacity:I

    .line 35
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_color:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 13

    const/4 v0, 0x0

    move v7, v0

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 42
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    .line 44
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    .line 45
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    .line 47
    iget-boolean v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_direct:Z

    if-eqz v4, :cond_2

    .line 48
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_width:I

    rem-int v4, v8, v4

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    .line 50
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_width:I

    rem-int v4, v7, v4

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    const-wide v5, 0x406fe00000000000L    # 255.0

    .line 52
    iget v9, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_opacity:I

    int-to-double v9, v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    mul-double/2addr v9, v5

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_width:I

    int-to-double v5, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v5, v11

    div-double/2addr v9, v5

    int-to-double v4, v4

    mul-double/2addr v4, v9

    .line 53
    invoke-static {v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v4

    .line 54
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlindFilter;->_color:I

    and-int/lit16 v6, v5, 0xff

    and-int/lit16 v9, v5, 0xff

    and-int/lit16 v10, v5, 0xff

    const/16 v11, 0xff

    if-ne v5, v11, :cond_4

    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v6

    move v5, v9

    move v6, v10

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_3

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    rsub-int v5, v4, 0xff

    mul-int/2addr v6, v4

    mul-int/2addr v1, v5

    add-int/2addr v6, v1

    .line 66
    div-int/2addr v6, v11

    mul-int/2addr v9, v4

    mul-int/2addr v2, v5

    add-int/2addr v9, v2

    div-int/2addr v9, v11

    mul-int/2addr v10, v4

    mul-int/2addr v3, v5

    add-int/2addr v10, v3

    div-int/2addr v10, v11

    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v6

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
