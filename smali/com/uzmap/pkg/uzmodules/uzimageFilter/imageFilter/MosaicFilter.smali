.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MosaicFilter;
.super Ljava/lang/Object;
.source "MosaicFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public MosiacSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MosaicFilter;->MosiacSize:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 14

    .line 32
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 33
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v9, v5

    :goto_0
    if-lt v9, v1, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    :goto_1
    if-lt v10, v0, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MosaicFilter;->MosiacSize:I

    rem-int v7, v9, v6

    if-nez v7, :cond_3

    .line 38
    rem-int v6, v10, v6

    if-nez v6, :cond_2

    .line 39
    invoke-virtual {p1, v10, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 40
    invoke-virtual {p1, v10, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 41
    invoke-virtual {p1, v10, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    :cond_2
    move v11, v3

    move v12, v4

    move v13, v5

    move-object v3, p1

    move v4, v10

    move v5, v9

    move v6, v11

    move v7, v12

    move v8, v13

    .line 43
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    move v3, v11

    move v4, v12

    move v5, v13

    goto :goto_2

    :cond_3
    add-int/lit8 v6, v9, -0x1

    .line 46
    invoke-virtual {p1, v10, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v6

    invoke-virtual {p1, v10, v9, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method
