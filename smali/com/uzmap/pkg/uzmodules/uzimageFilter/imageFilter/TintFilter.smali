.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/TintFilter;
.super Ljava/lang/Object;
.source "TintFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 9

    const/4 v0, 0x0

    move v7, v0

    .line 35
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 36
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 38
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 39
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/lit16 v1, v1, 0x1b36

    mul-int/lit16 v2, v2, 0x5b8c

    add-int/2addr v1, v2

    mul-int/lit16 v3, v3, 0x93e

    add-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0xf

    const/high16 v2, -0x10000

    mul-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v4, v2

    const v2, -0xff0100

    mul-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v5, v2

    const v2, -0xffff01

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v6, v1

    move-object v1, p1

    move v2, v7

    move v3, v8

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
