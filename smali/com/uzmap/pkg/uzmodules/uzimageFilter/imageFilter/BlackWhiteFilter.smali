.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;
.super Ljava/lang/Object;
.source "BlackWhiteFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    .line 66
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 68
    new-array v10, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 70
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-lt v0, v9, :cond_0

    .line 88
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 90
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/16 v0, 0x17c

    const/16 v1, 0x1cc

    .line 92
    invoke-static {p0, v0, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    move v1, p0

    :goto_1
    if-lt v1, v8, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-int v2, v8, v0

    add-int/2addr v2, v1

    .line 74
    aget v3, v10, v2

    const/high16 v4, 0xff0000

    and-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-double v6, v4

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v11

    int-to-double v4, v5

    const-wide v11, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v4, v11

    add-double/2addr v6, v4

    int-to-double v3, v3

    const-wide v11, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v3, v11

    add-double/2addr v6, v3

    double-to-int v3, v6

    shl-int/lit8 v4, v3, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x8

    or-int/2addr v4, v5

    or-int/2addr v3, v4

    .line 84
    aput v3, v10, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 3

    const-string v0, "asher"

    .line 49
    iget-object v1, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    :try_start_0
    const-string v2, "return black_white image"

    .line 53
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;->convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;->printStackTrace()V

    const-string v1, "return raw black_white"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
