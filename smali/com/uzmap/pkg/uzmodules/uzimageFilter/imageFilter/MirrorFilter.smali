.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MirrorFilter;
.super Ljava/lang/Object;
.source "MirrorFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private IsHorizontal:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MirrorFilter;->IsHorizontal:Z

    .line 28
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MirrorFilter;->IsHorizontal:Z

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 8

    .line 33
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v0

    .line 34
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    .line 37
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MirrorFilter;->IsHorizontal:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    if-lt v2, v0, :cond_0

    goto :goto_3

    :cond_0
    move v4, v3

    .line 41
    :goto_1
    div-int/lit8 v5, v1, 0x2

    if-lt v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1, v4, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v5

    add-int/lit8 v6, v1, -0x1

    sub-int/2addr v6, v4

    .line 44
    invoke-virtual {p1, v6, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v7

    .line 45
    invoke-virtual {p1, v6, v2, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    .line 46
    invoke-virtual {p1, v4, v2, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_2
    if-lt v2, v1, :cond_3

    :goto_3
    return-object p1

    :cond_3
    move v4, v3

    .line 54
    :goto_4
    div-int/lit8 v5, v0, 0x2

    if-lt v4, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 56
    :cond_4
    invoke-virtual {p1, v2, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v5

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v4

    .line 57
    invoke-virtual {p1, v2, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v7

    .line 58
    invoke-virtual {p1, v2, v6, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    .line 59
    invoke-virtual {p1, v2, v4, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method
