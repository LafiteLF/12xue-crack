.class public final Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;
.super Lcom/artifex/mupdf/fitz/NativeDevice;
.source "AndroidDrawDevice.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 15
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, v0}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 8

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;-><init>(Landroid/graphics/Bitmap;IIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IIIIII)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/fitz/NativeDevice;-><init>(J)V

    .line 22
    invoke-direct/range {p0 .. p7}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->newNative(Landroid/graphics/Bitmap;IIIIII)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->pointer:J

    return-void
.end method

.method public static drawPage(Lcom/artifex/mupdf/fitz/Page;F)Landroid/graphics/Bitmap;
    .locals 2

    .line 51
    new-instance v0, Lcom/artifex/mupdf/fitz/Matrix;

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr p1, v1

    invoke-direct {v0, p1}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(F)V

    invoke-static {p0, v0}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawPage(Lcom/artifex/mupdf/fitz/Page;FI)Landroid/graphics/Bitmap;
    .locals 2

    .line 47
    new-instance v0, Lcom/artifex/mupdf/fitz/Matrix;

    const/high16 v1, 0x42900000    # 72.0f

    div-float/2addr p1, v1

    invoke-direct {v0, p1}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(F)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/fitz/Matrix;->rotate(F)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;
    .locals 5

    .line 34
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Page;->getBounds()Lcom/artifex/mupdf/fitz/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/fitz/Rect;->transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/artifex/mupdf/fitz/RectI;

    iget v2, v0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    float-to-int v2, v2

    iget v3, v0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    float-to-int v3, v3

    iget v4, v0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    float-to-int v4, v4

    iget v0, v0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/artifex/mupdf/fitz/RectI;-><init>(IIII)V

    .line 36
    iget v0, v1, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    iget v2, v1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    sub-int/2addr v0, v2

    .line 37
    iget v2, v1, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    iget v3, v1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    sub-int/2addr v2, v3

    .line 38
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    new-instance v2, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;

    iget v3, v1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    iget v1, v1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    invoke-direct {v2, v0, v3, v1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;-><init>(Landroid/graphics/Bitmap;II)V

    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0, v2, p1, v1}, Lcom/artifex/mupdf/fitz/Page;->run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V

    .line 41
    invoke-virtual {v2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->close()V

    .line 42
    invoke-virtual {v2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->destroy()V

    return-object v0
.end method

.method public static drawPageFit(Lcom/artifex/mupdf/fitz/Page;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 67
    invoke-static {p0, p1, p2}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPage(Lcom/artifex/mupdf/fitz/Page;II)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawPageFitWidth(Lcom/artifex/mupdf/fitz/Page;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 79
    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->fitPageWidth(Lcom/artifex/mupdf/fitz/Page;I)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/android/AndroidDrawDevice;->drawPage(Lcom/artifex/mupdf/fitz/Page;Lcom/artifex/mupdf/fitz/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static fitPage(Lcom/artifex/mupdf/fitz/Page;II)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Page;->getBounds()Lcom/artifex/mupdf/fitz/Rect;

    move-result-object p0

    .line 56
    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    sub-float/2addr v0, v1

    .line 57
    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget p0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    sub-float/2addr v1, p0

    int-to-float p0, p1

    div-float/2addr p0, v0

    int-to-float p1, p2

    div-float/2addr p1, v1

    cmpg-float p2, p0, p1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    mul-float p1, v0, p0

    float-to-double p1, p1

    .line 61
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-float p1, p1

    div-float/2addr p1, v0

    mul-float/2addr p0, v1

    float-to-double v2, p0

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float p0, v2

    div-float/2addr p0, v1

    .line 63
    new-instance p2, Lcom/artifex/mupdf/fitz/Matrix;

    invoke-direct {p2, p1, p0}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FF)V

    return-object p2
.end method

.method public static fitPageWidth(Lcom/artifex/mupdf/fitz/Page;I)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Page;->getBounds()Lcom/artifex/mupdf/fitz/Rect;

    move-result-object p0

    .line 72
    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget p0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    sub-float/2addr v0, p0

    int-to-float p0, p1

    div-float/2addr p0, v0

    mul-float/2addr p0, v0

    float-to-double p0, p0

    .line 74
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-float p0, p0

    div-float/2addr p0, v0

    .line 75
    new-instance p1, Lcom/artifex/mupdf/fitz/Matrix;

    invoke-direct {p1, p0}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(F)V

    return-object p1
.end method

.method private native newNative(Landroid/graphics/Bitmap;IIIIII)J
.end method
