.class public final Lcom/deepe/c/i/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->b()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v4, v0, p2

    mul-int v5, p1, v3

    if-ne v4, v5, :cond_1

    if-le v0, v3, :cond_1

    return-object p0

    :cond_1
    const/high16 v6, 0x3f000000    # 0.5f

    if-le v4, v5, :cond_3

    int-to-float p2, p2

    int-to-float v4, v3

    div-float/2addr p2, v4

    int-to-float p1, p1

    int-to-float v4, v0

    mul-float/2addr v4, p2

    sub-float/2addr p1, v4

    mul-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    if-gez p1, :cond_2

    neg-int p1, p1

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    int-to-float v4, v0

    div-float/2addr p1, v4

    int-to-float p2, p2

    int-to-float v4, v3

    mul-float/2addr v4, p1

    sub-float/2addr p2, v4

    mul-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-gez p2, :cond_4

    neg-int p2, p2

    :cond_4
    move v4, p2

    move p2, p1

    move p1, v2

    :goto_0
    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v3

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-le v0, p2, :cond_5

    move v0, p2

    :cond_5
    if-le p1, v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, p1

    :goto_1
    :try_start_0
    invoke-static {p0, v0, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    mul-int/lit8 v0, v2, 0x2

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    invoke-static {p1, v2, v4, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-object p2

    :catch_0
    return-object p0

    :cond_8
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    if-gez v0, :cond_9

    move v0, v2

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    invoke-static {p1, v2, v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_a
    return-object p2

    :catch_1
    return-object p0
.end method
