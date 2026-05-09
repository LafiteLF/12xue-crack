.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;
.super Ljava/lang/Object;
.source "FileBitmapDecoderFactory.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImageInfo()[I
    .locals 5

    .line 30
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 31
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 32
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 33
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v0, v2, v1

    return-object v2
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;->path:Ljava/lang/String;

    return-object v0
.end method

.method public made()Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;->path:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
