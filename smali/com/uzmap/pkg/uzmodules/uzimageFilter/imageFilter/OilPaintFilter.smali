.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OilPaintFilter;
.super Ljava/lang/Object;
.source "OilPaintFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public Model:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OilPaintFilter;->Model:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    .line 32
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 33
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 34
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
    const/16 v4, 0x2710

    const/4 v5, 0x1

    .line 38
    invoke-static {v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v4

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OilPaintFilter;->Model:I

    rem-int/2addr v4, v5

    add-int v5, v10, v4

    if-ge v5, v0, :cond_2

    goto :goto_2

    :cond_2
    sub-int v5, v10, v4

    if-ltz v5, :cond_3

    goto :goto_2

    :cond_3
    move v5, v10

    :goto_2
    add-int v6, v11, v4

    if-ge v6, v1, :cond_4

    goto :goto_3

    :cond_4
    sub-int v6, v11, v4

    if-ltz v6, :cond_5

    goto :goto_3

    :cond_5
    move v6, v11

    .line 41
    :goto_3
    invoke-virtual {v2, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 42
    invoke-virtual {v2, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 43
    invoke-virtual {v2, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, p1

    move v5, v10

    move v6, v11

    .line 44
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1
.end method
