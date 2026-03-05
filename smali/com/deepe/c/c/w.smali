.class public Lcom/deepe/c/c/w;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/deepe/c/i/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/l<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/v;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/deepe/c/i/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/l<",
            "Ljava/lang/String;",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepe/c/c/w$1;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/deepe/c/c/w$1;-><init>(I)V

    sput-object v0, Lcom/deepe/c/c/w;->a:Lcom/deepe/c/i/l;

    new-instance v0, Lcom/deepe/c/c/w$2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/deepe/c/c/w$2;-><init>(I)V

    sput-object v0, Lcom/deepe/c/c/w;->b:Lcom/deepe/c/i/l;

    return-void
.end method

.method public static a(F)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(F)F

    move-result p0

    return p0
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p1, p1

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object p0
.end method

.method public static final a([BLcom/deepe/c/c/v;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final a([BLcom/deepe/c/c/v;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/c/v;->a()I

    move-result v2

    :cond_1
    if-lez v2, :cond_2

    invoke-static {p0, v2}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_2
    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Lcom/deepe/c/c/m;
    .locals 5

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/w;->g(Ljava/lang/String;)Lcom/deepe/c/c/m;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    return-object v1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/w;->b(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {v4}, Lcom/deepe/c/c/w;->f(Ljava/lang/String;)Lcom/deepe/c/c/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepe/c/c/v;->c()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/deepe/c/c/m;->a([B)Lcom/deepe/c/c/m;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/deepe/c/c/v;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/deepe/c/c/m;->b([B)Lcom/deepe/c/c/m;

    move-result-object v2

    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    invoke-static {v0, v2}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V

    return-object v2

    :cond_5
    invoke-static {p0, v1}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/deepe/c/c/m;->a(Landroid/graphics/Bitmap;)Lcom/deepe/c/c/m;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Lcom/deepe/c/c/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v1
.end method

.method public static final a([BLjava/lang/String;)Lcom/deepe/c/c/v;
    .locals 3

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/w;->h(Ljava/lang/String;)Lcom/deepe/c/c/v;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/c/e;->a([B)Lcom/deepe/c/c/e;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/e;->a()I

    move-result p1

    invoke-virtual {p0}, Lcom/deepe/c/c/e;->b()I

    move-result v1

    new-instance v2, Lcom/deepe/c/c/v;

    invoke-direct {v2, p1, v1}, Lcom/deepe/c/c/v;-><init>(II)V

    invoke-virtual {p0}, Lcom/deepe/c/c/e;->c()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/deepe/c/c/v;->a(I)V

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Lcom/deepe/c/c/w;->a(Ljava/lang/String;Lcom/deepe/c/c/v;)V

    :cond_3
    return-object v2
.end method

.method public static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/c/w;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:image/jpeg;base64,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_0
    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/w;->b([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/deepe/c/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/c/h;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/deepe/c/c/af;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {p1}, Lcom/deepe/c/j/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "jpg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "jpeg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz v2, :cond_5

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    const/16 v2, 0x64

    invoke-virtual {p0, p1, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v1
.end method

.method public static a([B)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/c/w;->b([B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data:image/jpeg;base64,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Lcom/deepe/c/c/m;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/c/w;->b:Lcom/deepe/c/i/l;

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/i/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/deepe/c/c/v;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/c/w;->a:Lcom/deepe/c/i/l;

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/i/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final a(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(F)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->a(F)F

    move-result p0

    return p0
.end method

.method public static final b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, v0}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/deepe/c/i/b;->b([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {p0, v0}, Lcom/deepe/c/i/b;->a(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final c(Landroid/graphics/Bitmap;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final c([B)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepe/c/c/w;->a([BLcom/deepe/c/c/v;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/c/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "svg"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/m;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Lcom/deepe/c/c/v;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_0
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    aget-object p0, p0, v0

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ge v0, v1, :cond_2

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_2
    const/4 v0, 0x1

    aget-object p0, p0, v0

    if-nez p0, :cond_3

    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0

    :cond_3
    const-string v0, "gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Lcom/deepe/c/c/v;->d:Lcom/deepe/c/c/v;

    return-object p0

    :cond_4
    const-string v0, "svg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/deepe/c/c/v;->e:Lcom/deepe/c/c/v;

    return-object p0

    :cond_5
    sget-object p0, Lcom/deepe/c/c/v;->g:Lcom/deepe/c/c/v;

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Lcom/deepe/c/c/m;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/w;->b:Lcom/deepe/c/i/l;

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/m;

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Lcom/deepe/c/c/v;
    .locals 1

    sget-object v0, Lcom/deepe/c/c/w;->a:Lcom/deepe/c/i/l;

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/v;

    return-object p0
.end method
