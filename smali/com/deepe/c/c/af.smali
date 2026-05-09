.class public Lcom/deepe/c/c/af;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/af$a;
    }
.end annotation


# direct methods
.method private static a(IIII)I
    .locals 4

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-lez v0, :cond_0

    float-to-int p0, p2

    return p0

    :cond_0
    move p2, p3

    goto :goto_0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 4

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p4, :cond_1

    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_3

    if-nez p0, :cond_2

    return p2

    :cond_2
    return p0

    :cond_3
    if-nez p0, :cond_4

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_4
    if-nez p1, :cond_5

    return p0

    :cond_5
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_7

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_6

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_6
    return p0

    :cond_7
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_8

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_8
    return p0
.end method

.method public static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/c/c/af;->b(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    const/4 p1, 0x1

    :goto_0
    if-lt p1, p0, :cond_0

    goto :goto_1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :goto_1
    return p1
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/c/e;->a(Ljava/lang/String;)Lcom/deepe/c/c/e;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/c/e;->c()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {p1}, Lcom/deepe/c/c/af;->b(I)I

    move-result v0

    invoke-static {p1}, Lcom/deepe/c/c/af;->c(I)I

    move-result v1

    new-instance v2, Lcom/deepe/c/c/af$a;

    invoke-direct {v2}, Lcom/deepe/c/c/af$a;-><init>()V

    invoke-static {p0}, Lcom/deepe/c/c/af;->c(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {p0, v0, v1, v2}, Lcom/deepe/c/c/af;->a(Ljava/lang/String;IILcom/deepe/c/c/af$a;)V

    iget-object v2, v2, Lcom/deepe/c/c/af$a;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    if-nez v2, :cond_3

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v7, 0x1

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v7, :cond_2

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6, v0, v1}, Lcom/deepe/c/c/af;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception p0

    move-object v4, v3

    goto :goto_5

    :catch_0
    move-object v4, v3

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    :goto_2
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BitmapUtils createImageThumbnail aborted: OutOfMemoryError. filePath: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    :goto_4
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "BitmapUtils createImageThumbnail aborted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". filePath"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :goto_5
    invoke-static {v4}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    throw p0

    :cond_3
    :goto_6
    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x2

    const/16 p1, 0x60

    invoke-static {v2, p1, p1, p0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_4
    return-object v2
.end method

.method public static a([BLcom/deepe/c/c/v;Lcom/deepe/c/c/s;)Landroid/graphics/Bitmap;
    .locals 7

    iget-boolean v0, p2, Lcom/deepe/c/c/s;->g:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/deepe/c/c/af;->a(I)Lcom/deepe/c/c/ad;

    move-result-object v0

    iget v2, v0, Lcom/deepe/c/c/ad;->a:F

    float-to-int v2, v2

    iput v2, p2, Lcom/deepe/c/c/s;->b:I

    iget v0, v0, Lcom/deepe/c/c/ad;->b:F

    float-to-int v0, v0

    iput v0, p2, Lcom/deepe/c/c/s;->c:I

    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v2, p2, Lcom/deepe/c/c/s;->b:I

    if-nez v2, :cond_1

    iget v2, p2, Lcom/deepe/c/c/s;->c:I

    if-nez v2, :cond_1

    iget-object p2, p2, Lcom/deepe/c/c/s;->f:Landroid/graphics/Bitmap$Config;

    iput-object p2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, p1, v0}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p2, Lcom/deepe/c/c/s;->b:I

    iget v5, p2, Lcom/deepe/c/c/s;->c:I

    iget-object v6, p2, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static {v4, v5, v2, v3, v6}, Lcom/deepe/c/c/af;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v4

    iget v5, p2, Lcom/deepe/c/c/s;->c:I

    iget v6, p2, Lcom/deepe/c/c/s;->b:I

    iget-object p2, p2, Lcom/deepe/c/c/s;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static {v5, v6, v3, v2, p2}, Lcom/deepe/c/c/af;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result p2

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v2, v3, v4, p2}, Lcom/deepe/c/c/af;->a(IIII)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, p1, v0}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-gt p1, v4, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-le p1, p2, :cond_3

    :cond_2
    invoke-static {p0, v4, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move-object p0, p1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static final a(I)Lcom/deepe/c/c/ad;
    .locals 3

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/deepe/c/c/ad;

    const/high16 v0, 0x42c00000    # 96.0f

    invoke-direct {p0, v0, v0}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    new-instance p0, Lcom/deepe/c/c/ad;

    const/high16 v0, 0x44800000    # 1024.0f

    const v1, 0x44448000    # 786.0f

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0

    :cond_1
    const/4 v0, 0x1

    const/high16 v1, 0x43c00000    # 384.0f

    const/high16 v2, 0x44000000    # 512.0f

    if-ne p0, v0, :cond_2

    new-instance p0, Lcom/deepe/c/c/ad;

    invoke-direct {p0, v2, v1}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/deepe/c/c/ad;

    invoke-direct {p0, v2, v1}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object p0
.end method

.method private static a(Ljava/lang/String;IILcom/deepe/c/c/af$a;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v5, v0

    invoke-static {v0, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v2, p1, p2}, Lcom/deepe/c/c/af;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v5, v6

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, p1, p2}, Lcom/deepe/c/c/af;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr p1, p2

    if-eqz v0, :cond_2

    if-lt v5, p1, :cond_2

    iget p0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length p2, v0

    invoke-static {v0, v4, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p3, Lcom/deepe/c/c/af$a;->b:Landroid/graphics/Bitmap;

    iget-object p2, p3, Lcom/deepe/c/c/af$a;->b:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_3

    iput-object v0, p3, Lcom/deepe/c/c/af$a;->a:[B

    iput p0, p3, Lcom/deepe/c/c/af$a;->c:I

    iput p1, p3, Lcom/deepe/c/c/af$a;->d:I

    goto :goto_1

    :cond_2
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p3, Lcom/deepe/c/c/af$a;->b:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    return-void
.end method

.method private static b(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x140

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0x2d0

    goto :goto_0

    :cond_1
    const/16 p0, 0x60

    :goto_0
    return p0
.end method

.method private static b(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gez p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gez p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gez p2, :cond_3

    if-gez p1, :cond_3

    return p0

    :cond_3
    if-gez p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 8

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "duration"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "miui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    mul-int/lit16 v1, v1, 0x3e8

    :catch_0
    :cond_1
    return v1
.end method

.method public static b(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v3, p1}, Lcom/deepe/c/c/af;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean p1, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    iget-object p1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v2, "jpeg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    return-object v0
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/high16 p0, 0x30000

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0xc4800

    goto :goto_0

    :cond_1
    const/16 p0, 0x4b00

    :goto_0
    return p0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 3

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "jpg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "jpeg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1
.end method
