.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ShiftFilter;
.super Ljava/lang/Object;
.source "ShiftFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field _amount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 32
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ShiftFilter;->_amount:I

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 13

    .line 38
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 39
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v10, v4

    :goto_0
    if-lt v10, v1, :cond_0

    return-object p1

    :cond_0
    move v11, v3

    :goto_1
    if-lt v11, v0, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    if-nez v11, :cond_3

    const/16 v4, 0xff

    const/16 v5, -0xff

    .line 44
    invoke-static {v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v6

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ShiftFilter;->_amount:I

    rem-int/2addr v6, v7

    invoke-static {v5, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->getRandomInt(II)I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, -0x1

    :goto_2
    mul-int/2addr v6, v4

    move v12, v6

    goto :goto_3

    :cond_3
    move v12, v4

    :goto_3
    add-int v4, v11, v12

    add-int/lit8 v5, v0, -0x1

    .line 46
    invoke-static {v4, v3, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp(III)I

    move-result v4

    .line 47
    invoke-virtual {v2, v4, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 48
    invoke-virtual {v2, v4, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 49
    invoke-virtual {v2, v4, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    move-object v4, p1

    move v5, v11

    move v6, v10

    .line 50
    invoke-virtual/range {v4 .. v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v11, v11, 0x1

    move v4, v12

    goto :goto_1
.end method
