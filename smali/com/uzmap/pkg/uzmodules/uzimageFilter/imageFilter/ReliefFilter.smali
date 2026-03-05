.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReliefFilter;
.super Ljava/lang/Object;
.source "ReliefFilter.java"

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
    .locals 10

    const/4 v0, 0x0

    move v7, v0

    .line 29
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v7, v1, :cond_0

    return-object p1

    :cond_0
    move v8, v0

    .line 30
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v8, v1, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {p1, v2, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/lit16 v1, v1, 0x80

    .line 32
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    invoke-virtual {p1, v2, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit16 v3, v3, 0x80

    .line 33
    invoke-virtual {p1, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    invoke-virtual {p1, v2, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/lit16 v4, v4, 0x80

    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    if-gez v1, :cond_3

    move v5, v0

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-le v3, v2, :cond_4

    move v3, v2

    :cond_4
    if-gez v3, :cond_5

    move v6, v0

    goto :goto_3

    :cond_5
    move v6, v3

    :goto_3
    if-le v4, v2, :cond_6

    move v4, v2

    :cond_6
    if-gez v4, :cond_7

    move v9, v0

    goto :goto_4

    :cond_7
    move v9, v4

    :goto_4
    move-object v1, p1

    move v2, v7

    move v3, v8

    move v4, v5

    move v5, v6

    move v6, v9

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
