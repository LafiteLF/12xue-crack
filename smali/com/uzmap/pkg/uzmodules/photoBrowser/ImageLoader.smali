.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;
    }
.end annotation


# static fields
.field public static final BUF_SIZE:I = 0x400

.field public static final CACHED_IMAGE_FORMAT:Ljava/lang/String; = ".jpg"

.field public static MAX_CACHE_SIZE:I = 0x0

.field public static SAMPLED_FLAG:Z = false

.field public static final TAG:Ljava/lang/String; = "lyh"

.field public static THREAD_NUMS:I = 0x0

.field public static final TIME_OUT:I = 0xbb8

.field private static caches:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private CACHE_PATH:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field public mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

.field public placeHolderBmp:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x6

    sput v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->MAX_CACHE_SIZE:I

    const/4 v0, 0x3

    .line 69
    sput v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->THREAD_NUMS:I

    const/4 v0, 0x1

    .line 84
    sput-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->SAMPLED_FLAG:Z

    .line 107
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$1;

    sget v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->MAX_CACHE_SIZE:I

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$1;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    .line 123
    sget v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->THREAD_NUMS:I

    .line 124
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/.image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/.image"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mCtx:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Landroid/util/LruCache;
    .locals 1

    .line 52
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 315
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 322
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    .line 323
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 322
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 333
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    .line 335
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 325
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public cancelTasks()V
    .locals 1

    .line 582
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public clearCache()V
    .locals 4

    .line 590
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v1, v1

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 594
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 297
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->SAMPLED_FLAG:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getSampledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 301
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 304
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getImageFromNet(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 220
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_3

    const-string v2, "https"

    .line 226
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Cookie"

    const/16 v4, 0xbb8

    if-eqz v2, :cond_1

    .line 229
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 230
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 231
    invoke-virtual {v0, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 232
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 241
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 242
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 243
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 244
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 249
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_0
    return-object v1

    :catch_3
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v1
.end method

.method public getImageFromNetWithProgress(Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)Landroid/graphics/Bitmap;
    .locals 2

    .line 264
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-string v1, "https"

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 271
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 272
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 275
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 279
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->readStream(Ljava/io/InputStream;ILcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 280
    array-length v0, p1

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 289
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 285
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSampledBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 516
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 518
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 520
    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 521
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 522
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, v3, :cond_0

    int-to-float v4, v2

    const/high16 v5, 0x44340000    # 720.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 527
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    :goto_0
    float-to-int v2, v2

    goto :goto_1

    :cond_0
    if-ge v2, v3, :cond_1

    int-to-float v2, v3

    const/high16 v3, 0x44a00000    # 1280.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 529
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    if-gt v2, v1, :cond_2

    move v2, v1

    .line 534
    :cond_2
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 535
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 536
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 537
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 539
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getScreenHeight()F
    .locals 2

    .line 496
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 498
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public getScreenWidth()F
    .locals 2

    .line 490
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 491
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mCtx:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 492
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    return v1
.end method

.method public load(Landroid/view/View;Landroid/widget/ProgressBar;Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->placeHolderBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 153
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 154
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 155
    :cond_0
    instance-of v1, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    if-eqz v1, :cond_1

    .line 156
    move-object v1, p1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->placeHolderBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_2
    :goto_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    invoke-static {p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 166
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Landroid/widget/ProgressBar;)V

    .line 167
    sget-object p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    .line 169
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    :goto_1
    return-void
.end method

.method public load(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->placeHolderBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 130
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 131
    move-object v1, p1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->placeHolderBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 141
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 142
    sget-object p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    :goto_1
    return-void
.end method

.method public load(Landroid/view/View;Ljava/lang/String;I)V
    .locals 2

    .line 192
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;I)V

    .line 196
    sget-object p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 198
    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    :goto_0
    return-void
.end method

.method public load(Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)V
    .locals 2

    .line 178
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->caches:Landroid/util/LruCache;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)V

    .line 182
    sget-object p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    :goto_0
    return-void
.end method

.method public pushCookie(Ljava/lang/String;)V
    .locals 1

    .line 203
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public readStream(Ljava/io/InputStream;ILcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    move v3, v2

    .line 555
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 556
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v3, v4

    int-to-float v4, v3

    int-to-float v5, p2

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 560
    invoke-interface {p3, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;->onLoadProgress(I)V

    goto :goto_0

    .line 562
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 563
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 564
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 343
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 344
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    .line 350
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 354
    :cond_1
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 359
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 361
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 363
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V
    .locals 1

    .line 469
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$2;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ProgressBar;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnLoadCompleteListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

    return-void
.end method

.method public setPlaceHolderBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->placeHolderBmp:Landroid/graphics/Bitmap;

    return-void
.end method
