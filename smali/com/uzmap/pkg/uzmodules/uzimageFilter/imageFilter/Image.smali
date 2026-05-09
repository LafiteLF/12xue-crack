.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field protected colorArray:[I

.field public destImage:Landroid/graphics/Bitmap;

.field private formatName:Ljava/lang/String;

.field private height:I

.field public image:Landroid/graphics/Bitmap;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    const-string v0, "jpg"

    .line 51
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->formatName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    .line 53
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    .line 56
    :try_start_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->updateColorArray()V

    return-void

    .line 58
    :catch_0
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;

    const-string v0, "out of memory "

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static LoadImage(Landroid/app/Activity;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 0

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 310
    :try_start_0
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 312
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static SAFECOLOR(I)I
    .locals 1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private updateColorArray()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;
        }
    .end annotation

    .line 95
    :try_start_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    mul-int/2addr v0, v1

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    .line 96
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v0, 0x0

    move v1, v0

    .line 99
    :goto_0
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move v2, v0

    .line 100
    :goto_1
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    .line 102
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v4, v4, v3

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 103
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v5, v5, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 104
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xff

    .line 105
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    const/high16 v8, -0x1000000

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v7, v3
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :catch_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;

    const-string v1, "out of memory"

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearImage(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 80
    :goto_0
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    move v2, v0

    .line 81
    :goto_1
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, v2, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    return-object v0
.end method

.method public copyPixelsFromBuffer()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 164
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public getBComponent(II)I
    .locals 2

    .line 198
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getColorArray()[I

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public getColorArray()[I
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->formatName:Ljava/lang/String;

    return-object v0
.end method

.method public getGComponent(II)I
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getColorArray()[I

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    const p2, 0xff00

    and-int/2addr p1, p2

    ushr-int/lit8 p1, p1, 0x8

    return p1
.end method

.method public getHeight()I
    .locals 1

    .line 270
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPixelColor(II)I
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1
.end method

.method public getRComponent(II)I
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getColorArray()[I

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aget p1, v0, p2

    const/high16 p2, 0xff0000

    and-int/2addr p1, p2

    ushr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public getWidth()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    return v0
.end method

.method public rotate(I)V
    .locals 7

    .line 207
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    .line 208
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 209
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    .line 211
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->updateColorArray()V
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setColorArray([I)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    return-void
.end method

.method public setFormatName(Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->formatName:Ljava/lang/String;

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 278
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->height:I

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setPixelColor(III)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr p2, v1

    add-int/2addr p2, p1

    aput p3, v0, p2

    return-void
.end method

.method public setPixelColor(IIIII)V
    .locals 1

    shl-int/lit8 p3, p3, 0x10

    const/high16 v0, -0x1000000

    add-int/2addr p3, v0

    shl-int/lit8 p4, p4, 0x8

    add-int/2addr p3, p4

    add-int/2addr p3, p5

    .line 149
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    iget-object p5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p5

    mul-int/2addr p2, p5

    add-int/2addr p2, p1

    aput p3, p4, p2

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 263
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->width:I

    return-void
.end method
