.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/InvertFilter;
.super Ljava/lang/Object;
.source "InvertFilter.java"

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
    .locals 9

    const/4 v0, 0x0

    move v7, v0

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 31
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    rsub-int v4, v1, 0xff

    .line 33
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v1

    rsub-int v5, v1, 0xff

    .line 34
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v1

    rsub-int v6, v1, 0xff

    move-object v1, p1

    move v2, v7

    move v3, v8

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
