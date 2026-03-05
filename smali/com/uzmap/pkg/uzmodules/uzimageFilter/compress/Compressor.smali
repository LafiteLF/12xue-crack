.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
.super Ljava/lang/Object;
.source "Compressor.java"


# instance fields
.field private compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private destinationDirectoryPath:Ljava/lang/String;

.field private maxHeight:I

.field private maxWidth:I

.field private quality:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x264

    .line 18
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxWidth:I

    const/16 v0, 0x330

    .line 19
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxHeight:I

    .line 20
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x50

    .line 21
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->quality:I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "images"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compressToBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxWidth:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxHeight:I

    invoke-static {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/ImageUtil;->decodeSampledBitmapFromFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public compressToFile(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public compressToFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxWidth:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxHeight:I

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->quality:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/ImageUtil;->compressImage(Ljava/io/File;IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setDestinationDirectoryPath(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->destinationDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMaxHeight(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
    .locals 0

    .line 34
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxHeight:I

    return-object p0
.end method

.method public setMaxWidth(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
    .locals 0

    .line 29
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->maxWidth:I

    return-object p0
.end method

.method public setQuality(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;
    .locals 0

    .line 44
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->quality:I

    return-object p0
.end method
