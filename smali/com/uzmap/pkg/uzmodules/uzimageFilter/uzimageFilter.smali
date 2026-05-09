.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "uzimageFilter.java"


# static fields
.field public static final CALLBACK_FOR_FILTER:I = 0x1

.field public static final CALLBACK_FOR_OPEN:I = 0x0

.field public static final CALLBACK_FOR_SAVE:I = 0x2

.field public static final FILTER_ID_INEXISTENCE:I = 0x3

.field public static final FILTER_NO_INIT:I = 0x2

.field public static final FILTER_TYPE_UNSUPPORT:I = 0x0

.field public static final FILTER_UNKNOWN:I = -0x1

.field public static final FILTER_VALUE_INVAILED:I = 0x1

.field public static final OPEN_IMAGE_FAILED:I = 0x2

.field public static final OPEN_PATH_INEXISTENCE:I = 0x1

.field public static final OPEN_PATH_NULL:I = 0x0

.field public static final OPEN_UNKNOWN:I = -0x1

.field public static final SAVE_ALBUM_FAILED:I = 0x0

.field public static final SAVE_FAILED:I = 0x1

.field public static final SAVE_ID_INEXISTENCE:I = 0x2

.field public static final SAVE_UNKNOWN:I = -0x1

.field public static final THUMNAIL_HEIGHT:I = 0x32

.field public static final THUMNAIL_WIDTH:I = 0x32

.field private static types:[Ljava/lang/String;


# instance fields
.field private final THUMNAIL_PATH:Ljava/lang/String;

.field private bitmaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private outStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "black_white"

    const-string v1, "color_pencil"

    const-string v2, "dream"

    const-string v3, "engrave"

    const-string v4, "film"

    const-string v5, "fresh"

    const-string v6, "rainbow"

    const-string v7, "blur"

    const-string v8, "default"

    .line 89
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 79
    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->types:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const-string p1, "fs://uzCache"

    .line 77
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->THUMNAIL_PATH:Ljava/lang/String;

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->bitmaps:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/util/HashMap;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->bitmaps:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Ljava/io/FileOutputStream;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->outStream:Ljava/io/FileOutputStream;

    return-void
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/io/FileOutputStream;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->outStream:Ljava/io/FileOutputStream;

    return-object p0
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 630
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 639
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 640
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 642
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 643
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 646
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 647
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 650
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_5

    .line 653
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 654
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 651
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 658
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private sendBradcase(Ljava/io/File;)V
    .locals 2

    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 611
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->sendBroadcastUpKitkat(Ljava/io/File;)V

    goto :goto_0

    .line 613
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->sendBroadcastDownKitkat()V

    :goto_0
    return-void
.end method

.method private sendBroadcastDownKitkat()V
    .locals 4

    .line 625
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->context()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 625
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastUpKitkat(Ljava/io/File;)V
    .locals 2

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 620
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public checkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 663
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 666
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->types:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_1

    return-object v1

    :cond_1
    aget-object v4, v0, v3

    .line 667
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public compressImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;DFZLcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;)V
    .locals 5

    .line 461
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".jpg"

    if-eqz v0, :cond_0

    .line 462
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 465
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ".jpeg"

    if-nez v0, :cond_1

    .line 466
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".png"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p7, v0

    if-ltz v0, :cond_2

    .line 473
    invoke-static {p7, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapToolkit;->scaleBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    if-eqz p9, :cond_3

    .line 477
    iget p7, p9, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;->width:I

    .line 478
    iget p9, p9, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapSize;->height:I

    .line 477
    invoke-static {p2, p7, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/utils/BitmapToolkit;->scaleBitmapWithSize(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_3

    const-string p2, "params invalidate size \uff01"

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 485
    :cond_3
    new-instance p7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p9, p5, v3

    if-nez p9, :cond_4

    const-wide v3, 0x3fb999999999999aL    # 0.1

    sub-double/2addr p5, v3

    :cond_4
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double/2addr p5, v3

    double-to-int p5, p5

    if-nez p2, :cond_5

    return-void

    .line 497
    :cond_5
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_7

    invoke-virtual {p4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_6

    goto :goto_0

    .line 500
    :cond_6
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p6, p5, p7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 498
    :cond_7
    :goto_0
    sget-object p6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, p6, p5, p7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_1
    const-string p2, ""

    const/4 p5, 0x0

    const/4 p6, 0x1

    const/4 p9, 0x2

    if-eqz p8, :cond_9

    .line 504
    new-instance v0, Ljava/io/File;

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 511
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 513
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 514
    invoke-virtual {p7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 515
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 516
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 518
    invoke-virtual {p0, p1, p5, p2, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {p0, p1, p6, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 524
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 520
    invoke-virtual {p0, p1, p6, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 521
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 528
    :cond_9
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    .line 532
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_b

    .line 534
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 536
    :cond_b
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v0, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_c

    .line 538
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 541
    :cond_c
    :try_start_1
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 542
    invoke-virtual {p7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 543
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V

    .line 544
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    if-nez p8, :cond_d

    .line 547
    invoke-virtual {p0, p1, p5, p2, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 553
    invoke-virtual {p0, p1, p6, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 554
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p2

    .line 550
    invoke-virtual {p0, p1, p6, p9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 551
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_d
    :goto_3
    return-void
.end method

.method public createErrorCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 2

    .line 790
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "msg"

    .line 792
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 794
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 796
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V
    .locals 5

    .line 686
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 687
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "status"

    .line 690
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p3, :cond_0

    const-string v3, "id"

    const-string v4, "-1"

    .line 692
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v3, 0x1

    if-ne p3, v3, :cond_1

    const-string p3, "path"

    const-string v3, ""

    .line 695
    invoke-virtual {v0, p3, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p3, "code"

    .line 697
    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 699
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 702
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    .locals 3

    .line 707
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 710
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-nez p4, :cond_0

    const-string v1, "id"

    .line 712
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    if-ne p4, v2, :cond_1

    const-string p2, "path"

    .line 715
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 721
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 724
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public createThumnailImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x32

    .line 742
    invoke-static {p2, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 744
    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 745
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 747
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v6, 0x0

    const-string v5, "thumnail.png"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    .line 749
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Z)V

    .line 750
    new-instance p1, Ljava/io/File;

    const-string p2, "thumnail.png"

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public failedCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 154
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "status"

    .line 156
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 158
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public generatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 675
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 678
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file://"

    const-string v1, ""

    .line 679
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBitmap(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .line 756
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x2

    .line 757
    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-object v1

    .line 761
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 766
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 769
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 770
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v1

    .line 772
    :goto_0
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    move-object v3, v1

    move-object v1, p1

    move-object p1, v3

    goto :goto_2

    .line 776
    :cond_1
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_2
    if-eqz v1, :cond_2

    .line 781
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 783
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object p1
.end method

.method public jsmethod_compress(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$5;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 436
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public jsmethod_compress1(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 443
    :try_start_0
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->context()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;-><init>(Landroid/content/Context;)V

    const-string v0, "/storage/emulated/0/Music/"

    .line 444
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->setDestinationDirectoryPath(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    move-result-object p1

    const/16 v0, 0x4b

    .line 445
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->setQuality(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    move-result-object p1

    const/16 v0, 0x96

    .line 446
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->setMaxWidth(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    move-result-object p1

    .line 447
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->setMaxHeight(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    move-result-object p1

    .line 448
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;

    move-result-object p1

    .line 449
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/qq.png"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/compress/Compressor;->compressToFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    const-string v0, "TAG"

    .line 450
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public jsmethod_filter(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    const-string v0, "type"

    .line 242
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 243
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v1, "id"

    .line 244
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "default"

    if-eqz v2, :cond_0

    move-object v6, v3

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 248
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "parameter - type - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asher"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {p0, v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->checkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6

    .line 252
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->bitmaps:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    if-ltz v7, :cond_4

    const/16 v2, 0x64

    if-le v7, v2, :cond_1

    goto :goto_2

    .line 259
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    new-instance v0, Ljava/io/File;

    const-string v1, "fs://uzCache"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 264
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v3, "thumnail.png"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->outStream:Ljava/io/FileOutputStream;

    const/16 v1, 0x32

    .line 267
    invoke-static {v9, v1, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 270
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->outStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1, v3, v2, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p0, p1, v8, v0, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    .line 274
    invoke-virtual {p0, p1, v1, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 276
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void

    .line 281
    :cond_3
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    .line 282
    invoke-static {v0, v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/FilterFactory;->createFilter(Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    move-result-object v5

    .line 283
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;

    move-object v2, v0

    move-object v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;-><init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;Ljava/lang/String;I)V

    .line 284
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;

    invoke-direct {v2, p0, v9, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Landroid/graphics/Bitmap;ILcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->setCallback(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;)V

    new-array p1, v8, [Ljava/lang/Void;

    .line 318
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_3

    .line 255
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v4, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    :cond_5
    const/4 v0, 0x3

    .line 320
    invoke-virtual {p0, p1, v0, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    goto :goto_3

    .line 324
    :cond_6
    invoke-virtual {p0, p1, v8, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    :goto_3
    return-void
.end method

.method public jsmethod_getAttr(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "path"

    .line 100
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->failedCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 106
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 113
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 116
    :cond_1
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :try_start_2
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    int-to-long v3, v2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    move-object v1, v0

    .line 121
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    if-nez v1, :cond_2

    .line 125
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->failedCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    .line 129
    :cond_2
    :try_start_4
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    .line 130
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 131
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 133
    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 134
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "status"

    .line 135
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "size"

    .line 136
    invoke-virtual {v6, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v3, "width"

    .line 137
    invoke-virtual {v6, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    .line 138
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v6, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_4
    move-exception v0

    .line 141
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->failedCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_5
    :goto_4
    return-void

    .line 145
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 149
    :catch_6
    throw p1
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "imgPath"

    .line 166
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {p0, p1, v2, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0, p1, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public jsmethod_save(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "album"

    .line 331
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "imgPath"

    .line 332
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imgName"

    .line 333
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "id"

    .line 334
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 336
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->bitmaps:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Bitmap;

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save img +++ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/MouleUtil;->saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "asher"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eqz v6, :cond_4

    if-eqz v0, :cond_1

    .line 340
    new-instance v0, Ljava/io/File;

    .line 341
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/Camera"

    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 347
    :cond_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;

    invoke-direct {v4, p0, p1, v6, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 359
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 361
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 365
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 371
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 374
    invoke-virtual {p0, p1, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    goto :goto_0

    .line 378
    :cond_4
    invoke-virtual {p0, p1, v2, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    :goto_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 729
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    .line 737
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->bitmaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 6

    const/4 v0, 0x1

    const-string v1, "."

    const/16 v2, 0x64

    const/4 v3, 0x2

    if-eqz p4, :cond_0

    :try_start_0
    const-string v4, ".jpg"

    .line 565
    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 567
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 568
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 569
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    const-string v4, ".png"

    if-eqz p4, :cond_1

    .line 571
    :try_start_1
    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 573
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 575
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 578
    :cond_1
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v4, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, "png"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 581
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v5, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 583
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3, p4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 584
    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 585
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p2, v5, v2, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_1
    if-eqz p5, :cond_4

    .line 589
    invoke-virtual {p4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 590
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    .line 592
    :cond_3
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    :goto_2
    invoke-direct {p0, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->sendBradcase(Ljava/io/File;)V

    .line 598
    :cond_4
    invoke-virtual {p3}, Ljava/io/FileOutputStream;->close()V

    const/4 p2, 0x0

    const-string p3, ""

    .line 600
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 605
    :catch_0
    invoke-virtual {p0, p1, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    goto :goto_3

    .line 603
    :catch_1
    invoke-virtual {p0, p1, v0, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    :goto_3
    return-void
.end method
