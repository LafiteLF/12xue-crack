.class public final Lcom/apicloud/a/i/a/e/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/g/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/e/c/d$a;
    }
.end annotation


# instance fields
.field final a:Lcom/apicloud/a/d;

.field private b:Landroid/graphics/Bitmap;

.field private final c:Landroid/graphics/Rect;

.field private final d:Ljava/lang/Integer;

.field private final e:Ljava/lang/Integer;

.field private final f:Lcom/apicloud/a/i/a/e/c/d$a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Landroid/graphics/Rect;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/apicloud/a/i/a/e/c/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/d;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/c/d;->c:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/c/d;->e:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/apicloud/a/i/a/e/c/d;->d:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/apicloud/a/i/a/e/c/d;->f:Lcom/apicloud/a/i/a/e/c/d$a;

    return-void
.end method

.method private final a(Landroid/graphics/BitmapFactory$Options;II)V
    .locals 4

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v1, 0x1

    if-gt v0, p3, :cond_0

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, p2, :cond_2

    :cond_0
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    div-int v3, v0, v1

    if-lt v3, p3, :cond_2

    div-int v3, v2, v1

    if-ge v3, p2, :cond_1

    goto :goto_1

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method private final a(Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/e/c/a<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/apicloud/a/c/j;",
            "Lcom/apicloud/a/c/j;",
            ")V"
        }
    .end annotation

    new-instance p3, Lcom/apicloud/a/i/a/e/c/e;

    invoke-direct {p3, p0, p1, p2}, Lcom/apicloud/a/i/a/e/c/e;-><init>(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;)V

    invoke-virtual {p3}, Lcom/apicloud/a/i/a/e/c/e;->a()Ljava/lang/Object;

    return-void
.end method

.method private final b([B)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/d;->f:Lcom/apicloud/a/i/a/e/c/d$a;

    sget-object v2, Lcom/apicloud/a/i/a/e/c/d$a;->d:Lcom/apicloud/a/i/a/e/c/d$a;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/e/c/d$a;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/a/e/c/d;->a(II)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/apicloud/a/i/a/e/c/d;->a(Landroid/graphics/BitmapFactory$Options;II)V

    :cond_0
    return-object v0
.end method

.method private final d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/e/c/d;->a(II)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/c/d;->f:Lcom/apicloud/a/i/a/e/c/d$a;

    sget-object v3, Lcom/apicloud/a/i/a/e/c/d$a;->a:Lcom/apicloud/a/i/a/e/c/d$a;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method


# virtual methods
.method final a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/apicloud/a/i/a/e/c/c;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/e/c/c;-><init>(Lcom/apicloud/a/i/a/e/c/d;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->f:Lcom/apicloud/a/i/a/e/c/d$a;

    sget-object v1, Lcom/apicloud/a/i/a/e/c/d$a;->d:Lcom/apicloud/a/i/a/e/c/d$a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/c/d;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method final a([B)Landroid/graphics/Bitmap;
    .locals 4

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/c/d;->b([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/d;->c:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    array-length v1, p1

    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/d;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v1, p1

    invoke-static {p1, v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/c/d;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method final a(II)Landroid/util/Size;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->e:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, p1

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/e/c/d;->d:Ljava/lang/Integer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/c/d;->e:Ljava/lang/Integer;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v2, p1

    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p1, Landroid/util/Size;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    :cond_5
    :goto_2
    return-object v1
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/d;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/e/c/h;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/e/c/h;-><init>(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/i/a/e/b;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/e/c/i;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/e/c/i;-><init>(Lcom/apicloud/a/i/a/e/c/d;Lcom/apicloud/a/i/a/e/c/d;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    return-void
.end method

.method public final a(Lcom/eclipsesource/v8/V8ArrayBuffer;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/c/y;->b(Lcom/eclipsesource/v8/V8ArrayBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    new-instance v0, Lcom/apicloud/a/i/a/e/c/g;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/e/c/g;-><init>(Lcom/apicloud/a/i/a/e/c/d;Landroid/graphics/ImageDecoder$Source;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/e/c/f;

    invoke-static {p1}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/e/c/f;-><init>(Lcom/apicloud/a/i/a/e/c/d;[B)V

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lcom/apicloud/a/i/a/e/c/d;->a(Lcom/apicloud/a/i/a/e/c/a;Lcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V

    return-void
.end method

.method public final a(Lcom/eclipsesource/v8/V8TypedArray;IILcom/apicloud/a/c/j;Lcom/apicloud/a/c/j;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move v3, v0

    move v4, v3

    :goto_0
    if-lt v3, p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/e/c/d;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/apicloud/a/i/a/e/c/d;->b:Landroid/graphics/Bitmap;

    new-array p1, v1, [Ljava/lang/Object;

    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    const-string p3, "width"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "height"

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object p2, p1, v0

    invoke-virtual {p4, p1}, Lcom/apicloud/a/c/j;->b([Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    move v5, v0

    :goto_1
    if-lt v5, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v4, 0x3

    invoke-virtual {p1, v6}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v6

    invoke-virtual {p1, v4}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v8

    add-int/lit8 v9, v4, 0x2

    invoke-virtual {p1, v9}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v5, v3, v6}, Landroid/graphics/Bitmap;->setPixel(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-virtual {p5, p2}, Lcom/apicloud/a/c/j;->b([Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method final b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final b()Lcom/apicloud/a/i/a/e/c/d$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->f:Lcom/apicloud/a/i/a/e/c/d$a;

    return-object v0
.end method

.method final c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v1, v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/c/d;->d(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/d;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
