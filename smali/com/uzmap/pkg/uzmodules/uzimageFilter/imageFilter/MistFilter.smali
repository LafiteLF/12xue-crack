.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MistFilter;
.super Ljava/lang/Object;
.source "MistFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    .line 29
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 30
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 31
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v2

    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-lt v10, v0, :cond_0

    return-object p1

    :cond_0
    move v11, v3

    :goto_1
    if-lt v11, v1, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const v4, 0x1e240

    const/4 v5, 0x1

    .line 35
    invoke-static {v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v4

    .line 36
    rem-int/lit8 v4, v4, 0x13

    add-int v5, v10, v4

    add-int/2addr v4, v11

    if-lt v5, v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    :cond_2
    if-lt v4, v1, :cond_3

    add-int/lit8 v4, v1, -0x1

    .line 44
    :cond_3
    invoke-virtual {v2, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 45
    invoke-virtual {v2, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 46
    invoke-virtual {v2, v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, p1

    move v5, v10

    move v6, v11

    .line 47
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
