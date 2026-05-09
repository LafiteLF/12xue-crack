.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrickFilter;
.super Ljava/lang/Object;
.source "BrickFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public ThreshHold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrickFilter;->ThreshHold:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    .line 31
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 32
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 33
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

    .line 37
    :cond_1
    invoke-virtual {v2, v10, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v4

    .line 38
    invoke-virtual {v2, v10, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v5

    .line 39
    invoke-virtual {v2, v10, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v6

    add-int/2addr v4, v5

    add-int/2addr v4, v6

    .line 40
    div-int/lit8 v4, v4, 0x3

    .line 41
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrickFilter;->ThreshHold:I

    if-lt v4, v5, :cond_2

    const/16 v4, 0xff

    move v9, v4

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    move-object v4, p1

    move v5, v10

    move v6, v11

    move v7, v9

    move v8, v9

    .line 42
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
