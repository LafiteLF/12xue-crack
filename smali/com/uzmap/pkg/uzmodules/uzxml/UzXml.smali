.class public Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzXml.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000


# instance fields
.field private err:Lorg/json/JSONObject;

.field private ret:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 44
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    .line 45
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->saveBitmapToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->getOutputMediaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->base64ToBitmap(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->success(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method private base64ToBitmap(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 446
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 447
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 448
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v1, "jpg"

    .line 450
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_0

    .line 451
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const-string v1, "png"

    .line 452
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 453
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    goto :goto_0

    .line 455
    :cond_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 458
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 459
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    if-eqz p4, :cond_3

    .line 461
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 462
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->context()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 463
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->context()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {p3, p4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 467
    :cond_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    :goto_1
    return-void
.end method

.method private copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    long-to-int p1, p1

    return p1
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 177
    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    goto :goto_0

    .line 184
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    :goto_0
    return-void
.end method

.method private copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [C

    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 201
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/Writer;->write([CII)V

    int-to-long v3, v4

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method private generatePath(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private generateRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 422
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "android_asset"

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getOutputMediaFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 264
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    .line 265
    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private getOutputMediaFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 276
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->generateRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 279
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 282
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaFile"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 225
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private readBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 358
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private saveBitmapToGallery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 472
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 473
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v1, "jpg"

    .line 475
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "image/jpeg"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "png"

    .line 477
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string v2, "image/png"

    .line 482
    :cond_1
    :goto_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/16 v3, 0x64

    if-lt p2, v1, :cond_3

    .line 483
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "_display_name"

    .line 484
    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "mime_type"

    .line 485
    invoke-virtual {p2, p3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object p3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const-string v0, "relative_path"

    invoke-virtual {p2, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/uzmap/pkg/uzkit/UZUtility;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 489
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 491
    :try_start_0
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    .line 494
    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_2

    .line 491
    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 499
    :cond_3
    sget-object p2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 500
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 502
    :try_start_5
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 503
    :try_start_6
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 506
    invoke-static {}, Lcom/uzmap/pkg/uzkit/UZUtility;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const/4 p3, 0x1

    new-array v3, p3, [Ljava/lang/String;

    .line 507
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    new-array p3, p3, [Ljava/lang/String;

    aput-object v2, p3, v0

    const/4 v0, 0x0

    .line 505
    invoke-static {p1, v3, p3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 512
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 502
    :try_start_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    :cond_4
    :goto_3
    return-void
.end method

.method private substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 229
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 235
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 239
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private success(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "status"

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 246
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 248
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 251
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 250
    :goto_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 253
    :cond_1
    throw p1
.end method

.method private toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 171
    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public base64ToFile(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 538
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 539
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 540
    array-length p2, p1

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method

.method public callbackFailed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 4

    .line 611
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 612
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    const/4 v3, 0x0

    .line 614
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 615
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 616
    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 618
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public callbackSuccess(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 3

    .line 598
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 600
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 601
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "imageData"

    .line 602
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 p2, 0x0

    .line 604
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 606
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkStorage()Z
    .locals 2

    .line 257
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method failed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 4

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    const/4 v3, 0x0

    .line 120
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 121
    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public generateBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 290
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 296
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 297
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getDataFromFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)[B
    .locals 3

    .line 306
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 308
    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 310
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    .line 311
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p2

    :catch_1
    move-exception p1

    .line 314
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p2
.end method

.method public imgToBase64(Landroid/graphics/Bitmap;ZLjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 5

    const-string v0, "msg"

    const-string v1, "status"

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 375
    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 376
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    const-string v4, "\u56fe\u7247\u4e0d\u5b58\u5728\u6216\u56fe\u7247\u8def\u5f84\u9519\u8bef"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p4, v3, v4, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 382
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    :cond_0
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p4

    .line 379
    :try_start_1
    invoke-virtual {p4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 382
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    :cond_1
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 385
    :goto_0
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 381
    :goto_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 382
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->ret:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 384
    :cond_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 385
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->err:Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 387
    :cond_3
    throw p1

    :cond_4
    :goto_2
    const/4 p4, 0x0

    .line 391
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    const-string v1, "jpg"

    .line 392
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x64

    if-eqz v1, :cond_5

    .line 393
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_3

    :cond_5
    const-string v1, "png"

    .line 394
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 395
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_3

    .line 397
    :cond_6
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p3, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_3
    if-eqz p2, :cond_7

    .line 400
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 402
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 403
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 404
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 406
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 411
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 412
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 415
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p1

    :catchall_1
    move-exception p1

    move-object p4, v0

    goto :goto_5

    :catchall_2
    move-exception p1

    .line 411
    :goto_5
    :try_start_5
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 412
    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    .line 415
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 417
    :goto_6
    throw p1

    :catch_3
    move-object v0, p4

    .line 411
    :catch_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 412
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    .line 415
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_7
    return-object p4
.end method

.method public jsmethod_decodeFileToBase64(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 544
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$4;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$4;-><init>(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 571
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$4;->start()V

    return-void
.end method

.method public jsmethod_decodeImgToBase64(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 324
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$2;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 352
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$2;->start()V

    return-void
.end method

.method public jsmethod_deleteBase64Image(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "name"

    .line 637
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzxml/Constants;->makeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 640
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackSuccess(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "delete failed"

    .line 642
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackFailed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_getBase64Image(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "name"

    .line 623
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->context()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzxml/Constants;->makeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 626
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 627
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 628
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 629
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackSuccess(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackFailed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_parse(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "data"

    .line 53
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 54
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customKey"

    .line 55
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "plainText"

    .line 59
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "<author email = \'123@app3c.com\'>app3c</author>"

    .line 61
    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->xmlToJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->generatePath(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    const-string v1, "UTF-8"

    .line 66
    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->xmlToJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 72
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->xmlToJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 74
    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public jsmethod_saveBase64Image(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    const-string v0, "name"

    .line 575
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64str"

    .line 576
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 579
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->context()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/uzxml/Constants;->makeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 580
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 581
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 582
    invoke-virtual {p0, p1, v1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackSuccess(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 584
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;->callbackFailed(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    .line 589
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 591
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :goto_2
    if-eqz v2, :cond_1

    .line 589
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 591
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 594
    :cond_1
    :goto_3
    throw p1
.end method

.method public jsmethod_saveFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 519
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 534
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$3;->start()V

    return-void
.end method

.method public jsmethod_saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzxml/UzXml;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 113
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzxml/UzXml$1;->start()V

    return-void
.end method

.method protected onClean()V
    .locals 0

    .line 210
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    return-void
.end method
