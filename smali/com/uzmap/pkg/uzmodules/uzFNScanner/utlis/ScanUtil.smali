.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;
.super Ljava/lang/Object;
.source "ScanUtil.java"


# static fields
.field public static ALBUM_IMG_PATH:Ljava/lang/String; = null

.field private static final BLACK:I = -0x1000000

.field private static final WHITE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static albumPath()Ljava/lang/String;
    .locals 3

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Camera/"

    .line 271
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    .line 273
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static closeFos(Ljava/io/FileOutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 113
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static creatBarcode(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;
    .locals 2

    .line 143
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eqz p4, :cond_0

    .line 146
    div-int/lit8 p4, p3, 0x2

    .line 145
    invoke-static {p1, v0, p2, p4}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object p4

    add-int/lit8 v0, p2, -0x28

    .line 148
    div-int/lit8 v1, p3, 0x8

    .line 147
    invoke-static {p1, v0, v1, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->creatCodeBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 149
    invoke-static {p4, p0, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p1, v0, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected static creatCodeBitmap(Ljava/lang/String;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 179
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    div-int/lit8 p2, p2, 0x5

    int-to-float p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p0, 0x1

    .line 186
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    const/high16 p0, -0x1000000

    .line 188
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x0

    .line 189
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 190
    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 189
    invoke-virtual {p1, p2, p3}, Landroid/widget/TextView;->measure(II)V

    .line 191
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, p0, p0, p2, p3}, Landroid/widget/TextView;->layout(IIII)V

    .line 192
    invoke-virtual {p1}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 193
    invoke-virtual {p1}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitMatrix(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    .line 226
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->createHints(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 228
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createHints(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Lcom/google/zxing/EncodeHintType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 240
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 241
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static createPixels(Lcom/google/zxing/common/BitMatrix;)[I
    .locals 9

    .line 247
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    .line 248
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    .line 249
    new-array v2, v2, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_0

    return-object v2

    :cond_0
    mul-int v5, v4, v0

    move v6, v3

    :goto_1
    if-lt v6, v0, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int v7, v5, v6

    .line 253
    invoke-virtual {p0, v6, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_2

    const/high16 v8, -0x1000000

    goto :goto_2

    :cond_2
    const/4 v8, -0x1

    :goto_2
    aput v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method protected static encodeAsBitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 201
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 204
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    const/4 p0, 0x0

    .line 209
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 210
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    mul-int p1, v6, v7

    .line 211
    new-array v1, p1, [I

    const/4 p1, 0x0

    move p2, p1

    :goto_1
    if-lt p2, v7, :cond_0

    .line 219
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 218
    invoke-static {v6, v7, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v6

    .line 220
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0

    :cond_0
    mul-int p3, p2, v6

    move v0, p1

    :goto_2
    if-lt v0, v6, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    add-int v2, p3, v0

    .line 215
    invoke-virtual {p0, v0, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/high16 v3, -0x1000000

    goto :goto_3

    :cond_2
    const/4 v3, -0x1

    :goto_3
    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static getImgName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x2f

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 297
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getImgPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 291
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static guessAppropriateEncoding(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 260
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static makeSaveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const-string v0, "Scan"

    .line 277
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->getImgPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 285
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->getImgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected static mixtureBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 164
    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 166
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, -0x1

    .line 167
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v1, 0x0

    .line 168
    div-int/lit8 p3, p3, 0x4

    int-to-float p3, p3

    invoke-virtual {p2, p0, v1, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/16 p0, 0x1f

    .line 171
    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->save(I)I

    .line 172
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static parseImage(Ljava/lang/String;)Lcom/google/zxing/Result;
    .locals 5

    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 304
    :cond_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 305
    sget-object v2, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    const-string v3, "utf-8"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    .line 307
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    if-gtz v3, :cond_1

    const/4 v3, 0x1

    .line 311
    :cond_1
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 312
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 313
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/RGBLuminanceSource;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/RGBLuminanceSource;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    .line 315
    new-instance v3, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 314
    invoke-direct {p0, v3}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 316
    new-instance v2, Lcom/google/zxing/qrcode/QRCodeReader;

    invoke-direct {v2}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    .line 318
    :try_start_0
    invoke-virtual {v2, p0, v0}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 324
    invoke-virtual {p0}, Lcom/google/zxing/FormatException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 322
    invoke-virtual {p0}, Lcom/google/zxing/ChecksumException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 320
    invoke-virtual {p0}, Lcom/google/zxing/NotFoundException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public static rgb2YUV(Landroid/graphics/Bitmap;)[B
    .locals 15

    .line 337
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 338
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v10, v8, v9

    .line 339
    new-array v11, v10, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v6, v8

    move v7, v9

    .line 340
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int/lit8 v10, v10, 0x3

    .line 342
    div-int/lit8 v10, v10, 0x2

    new-array p0, v10, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v9, :cond_0

    return-object p0

    :cond_0
    move v2, v0

    :goto_1
    if-lt v2, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    mul-int v3, v1, v8

    add-int/2addr v3, v2

    .line 346
    aget v4, v11, v3

    const v5, 0xffffff

    and-int/2addr v4, v5

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v6, v4, 0x8

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/16 v10, 0x10

    shr-int/2addr v4, v10

    and-int/2addr v4, v7

    mul-int/lit8 v12, v5, 0x42

    mul-int/lit16 v13, v6, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v4, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/2addr v12, v10

    mul-int/lit8 v13, v5, -0x26

    mul-int/lit8 v14, v6, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v4, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v5, v5, 0x70

    mul-int/lit8 v6, v6, 0x5e

    sub-int/2addr v5, v6

    mul-int/lit8 v4, v4, 0x12

    sub-int/2addr v5, v4

    add-int/lit16 v5, v5, 0x80

    shr-int/lit8 v4, v5, 0x8

    add-int/lit16 v4, v4, 0x80

    if-ge v12, v10, :cond_2

    goto :goto_2

    :cond_2
    if-le v12, v7, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    move v10, v12

    :goto_2
    int-to-byte v4, v10

    .line 356
    aput-byte v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static scanResult2bitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 129
    invoke-static {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->createBitMatrix(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    .line 132
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 134
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 133
    invoke-static {v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 135
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->createPixels(Lcom/google/zxing/common/BitMatrix;)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p1
.end method

.method public static scanResult2img(Ljava/lang/String;Ljava/lang/String;IIZZLandroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 57
    sget-object p5, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0, p5, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->scanResult2bitmap(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    .line 59
    invoke-static {p6, p0, p2, p3, p5}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->creatBarcode(Landroid/content/Context;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p4, :cond_1

    .line 63
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->albumPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->makeSaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 65
    sget-object p3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    invoke-static {v0, p0, p3, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->storeToPath(Ljava/io/FileOutputStream;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    .line 66
    invoke-static {p6, p0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->showInCamera(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 68
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 70
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->makeSaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 69
    invoke-static {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->storeToPath(Ljava/io/FileOutputStream;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V

    .line 71
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static showInCamera(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 81
    invoke-static {v0, p1, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private static storeBitmap(Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 2

    const-string v0, ".png"

    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 121
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    :cond_0
    const-string v0, ".jpg"

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 123
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static storeToPath(Ljava/io/FileOutputStream;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 99
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :try_start_1
    invoke-static {p1, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->storeBitmap(Landroid/graphics/Bitmap;Ljava/io/FileOutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 102
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :goto_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->closeFos(Ljava/io/FileOutputStream;)V

    return-void

    :catchall_1
    move-exception p0

    :goto_2
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->closeFos(Ljava/io/FileOutputStream;)V

    .line 105
    throw p0
.end method
