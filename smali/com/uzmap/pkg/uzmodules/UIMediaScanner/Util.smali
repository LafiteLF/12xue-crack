.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;
    }
.end annotation


# static fields
.field public static final ALL_TYPE:I = 0x0

.field public static final IMAGE_TYPE:I = 0x1

.field public static final SDCARD_PATH:Ljava/lang/String;

.field public static final VIDEO_TYPE:I = 0x2


# instance fields
.field private fileCount:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 185
    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->SDCARD_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->fileCount:I

    .line 48
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 1

    .line 516
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 517
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-gt v0, p2, :cond_1

    if-le p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    if-le p0, v0, :cond_2

    int-to-float p0, v0

    int-to-float p1, p2

    div-float/2addr p0, p1

    .line 522
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_1

    :cond_2
    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 524
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x3

    .line 472
    invoke-static {p0, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0xc8

    .line 479
    invoke-static {p0, v1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static decodeSampledBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 534
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 535
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 536
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 539
    invoke-static {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    .line 543
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 544
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 486
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.thumbnails_for_me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 496
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".jpg"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 499
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x50

    invoke-virtual {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 502
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    if-eqz v1, :cond_2

    .line 506
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 508
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 555
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 562
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 563
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 562
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 573
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 578
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 573
    :cond_1
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_2

    const-string v4, "0"

    .line 575
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 568
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 565
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public LocalImgFileList(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldirForFileList(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_7

    .line 61
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 64
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_5

    move v4, v3

    .line 71
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_4

    new-array v1, v3, [Ljava/lang/String;

    .line 75
    invoke-interface {v2, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    move v1, v3

    .line 76
    :goto_2
    array-length v2, v5

    if-lt v1, v2, :cond_3

    move v2, v3

    .line 83
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    move v1, v3

    .line 84
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 85
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    if-eqz v4, :cond_2

    .line 87
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filename:Ljava/lang/String;

    .line 88
    iget-object v6, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getfileinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    iget-object v6, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->fileInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 77
    :cond_3
    aget-object v2, v5, v1

    .line 78
    new-instance v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    invoke-direct {v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;-><init>()V

    .line 79
    iput-object v2, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filename:Ljava/lang/String;

    .line 80
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 65
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    if-eqz v5, :cond_6

    .line 67
    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getfileinfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_5
    return-object v0
.end method

.method public createThumbPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 196
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 v0, 0x9d

    .line 202
    invoke-static {p1, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/.thumbnails_for_me"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 211
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->fileCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->fileCount:I

    .line 218
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 219
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 221
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 224
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 346
    invoke-static {p1, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getfileinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/"

    .line 371
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs imgExcute(Landroid/widget/ImageView;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;[Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;)V
    .locals 1

    .line 380
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;Landroid/widget/ImageView;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;)V

    .line 381
    invoke-virtual {v0, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public listAllThumbnail()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_data"

    const-string v2, "image_id"

    const-string v3, "_id"

    .line 156
    filled-new-array {v3, v2, v1}, [Ljava/lang/String;

    move-result-object v6

    .line 157
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 158
    sget-object v5, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 157
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v0

    .line 162
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 166
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 167
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 168
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 171
    :cond_1
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 172
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 173
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 175
    new-instance v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;

    invoke-direct {v7}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;-><init>()V

    .line 176
    iput v5, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;->imageId:I

    .line 177
    iput-object v6, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;->imagePath:Ljava/lang/String;

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_2
    return-object v0
.end method

.method public listAllVideo()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_data"

    const-string v2, "video_id"

    .line 289
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 291
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v10, "_id"

    const-string v3, "mime_type"

    const-string v5, "_size"

    .line 295
    filled-new-array {v1, v3, v5, v10}, [Ljava/lang/String;

    move-result-object v6

    .line 297
    sget-object v5, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 296
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    return-object v0

    .line 302
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x0

    .line 304
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 305
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 306
    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x3

    .line 307
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 309
    new-instance v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-direct {v11}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;-><init>()V

    .line 310
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 311
    iput-object v6, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    int-to-long v6, v7

    .line 312
    iput-wide v6, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    .line 313
    iput v8, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->imgId:I

    .line 314
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    .line 317
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 316
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    new-array v7, v5, [Ljava/lang/String;

    .line 319
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 321
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 322
    sget-object v4, Landroid/provider/MediaStore$Video$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const-string v6, "video_id=?"

    move-object v5, v2

    .line 321
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 324
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 327
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 326
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    iput-object v3, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    .line 330
    :cond_2
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public listAlldir(I)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    or-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 232
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAllThumbnail()Ljava/util/HashMap;

    move-result-object v1

    .line 233
    new-instance v4, Landroid/content/Intent;

    .line 235
    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "android.intent.action.PICK"

    .line 233
    invoke-direct {v4, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    const-string v9, "_data"

    const-string v10, "mime_type"

    const-string v11, "_size"

    const-string v12, "_id"

    const-string v13, "date_modified"

    const-string v14, "bucket_display_name"

    .line 242
    filled-new-array/range {v9 .. v14}, [Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 243
    iget-object v5, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_0

    return-object v0

    .line 248
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 250
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 252
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x3

    .line 253
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x5

    .line 254
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 255
    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 257
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2
    new-instance v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-direct {v12}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;-><init>()V

    .line 260
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 261
    iput-object v8, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    int-to-long v8, v9

    .line 262
    iput-wide v8, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    .line 263
    iput v10, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->imgId:I

    .line 264
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    iput-wide v7, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    .line 265
    iput-object v11, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->groupName:Ljava/lang/String;

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;

    if-eqz v7, :cond_3

    .line 267
    iget-object v8, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;->imagePath:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 268
    iget-object v7, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ThumbnailInfo;->imagePath:Ljava/lang/String;

    iput-object v7, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    .line 270
    :cond_3
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v4, p0

    :goto_1
    or-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAllVideo()Ljava/util/ArrayList;

    move-result-object v1

    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method

.method public listAlldirForFileList(I)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    or-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 104
    new-instance v1, Landroid/content/Intent;

    .line 106
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "android.intent.action.PICK"

    .line 104
    invoke-direct {v1, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 107
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    const-string v1, "_data"

    const-string v4, "mime_type"

    const-string v5, "_id"

    .line 111
    filled-new-array {v1, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 112
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 117
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 118
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 122
    new-instance v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-direct {v7}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;-><init>()V

    .line 123
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 125
    iput-object v5, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    .line 126
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    .line 127
    iput v6, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->imgId:I

    .line 128
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    .line 129
    iget-object v5, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "jpg"

    .line 130
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "image/jpeg"

    .line 131
    iput-object v5, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    :cond_2
    const-string v5, "png"

    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "image/png"

    .line 134
    iput-object v4, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    .line 137
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    or-int/2addr p1, v2

    if-ne p1, v2, :cond_5

    .line 142
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAllVideo()Ljava/util/ArrayList;

    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    return-object v0
.end method
