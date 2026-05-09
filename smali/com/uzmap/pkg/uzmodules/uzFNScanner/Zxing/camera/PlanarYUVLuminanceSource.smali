.class public final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIII)V
    .locals 0

    .line 43
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    .line 51
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 52
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    .line 53
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    .line 54
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->left:I

    .line 55
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->top:I

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Crop rectangle does not fit within image data."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDataHeight()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    return v0
.end method

.method public getDataWidth()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    return v0
.end method

.method public getMatrix()[B
    .locals 7

    .line 75
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 82
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    return-object v0

    :cond_0
    mul-int v2, v0, v1

    .line 87
    new-array v3, v2, [B

    .line 88
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v4, v5

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v6

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 93
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v0, v4, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    :goto_0
    if-lt v6, v1, :cond_2

    return-object v3

    :cond_2
    mul-int v5, v6, v0

    .line 101
    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v4, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getRow(I[B)[B
    .locals 3

    if-ltz p1, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 65
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 66
    :cond_0
    new-array p2, v0, [B

    .line 68
    :cond_1
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    .line 69
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 61
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested row is outside the image: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isCropSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;
    .locals 13

    .line 121
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getWidth()I

    move-result v6

    .line 122
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 123
    new-array v1, v0, [I

    .line 124
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->yuvData:[B

    .line 125
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->top:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v7, :cond_0

    .line 137
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 136
    invoke-static {v6, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move v3, v6

    .line 138
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v8

    :cond_0
    mul-int v5, v4, v6

    move v8, v3

    :goto_1
    if-lt v8, v6, :cond_1

    .line 133
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int v9, v2, v8

    .line 130
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v5, v8

    const/high16 v11, -0x1000000

    const v12, 0x10101

    mul-int/2addr v9, v12

    or-int/2addr v9, v11

    .line 131
    aput v9, v1, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method
