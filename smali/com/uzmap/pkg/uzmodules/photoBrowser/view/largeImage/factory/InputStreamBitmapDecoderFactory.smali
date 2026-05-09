.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;
.super Ljava/lang/Object;
.source "InputStreamBitmapDecoderFactory.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public getImageInfo()[I
    .locals 5

    .line 26
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 28
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;->inputStream:Ljava/io/InputStream;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 29
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, v2, v1

    return-object v2
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public made()Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;->inputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
