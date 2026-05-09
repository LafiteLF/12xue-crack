.class public Lcom/uzmap/pkg/uzkit/UZUtility;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SDCardOnWork()Z
    .locals 2

    invoke-static {}, Lcom/deepe/c/a/k;->b()Ljava/lang/String;

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

.method public static assetFileExists(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/h;->k(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/w;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/w;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UZUtility.bitmapToBase64: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Exception!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "data:image/jpeg;base64,"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/c/c/af;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    return p0
.end method

.method public static dipToPix(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p0

    return p0
.end method

.method public static formatFileSize(J)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppVersionCode()I
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getAppVersionCode()I

    move-result v0

    return v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraStoragePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepe/c/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultUseragent()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternaDownloadDir()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/k;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternaStoragePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/deepe/c/a/k;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExternaStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getExternaStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExternalCacheDir()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/i/h;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static guessVideoDuration(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/af;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isHtmlColor(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->isHtmlColor(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static makeAbsUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/af;->b(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static makeDrawable(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/UZUtility;->isHtmlColor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseColor(Ljava/lang/String;)I

    move-result p0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    sget p1, Lcom/deepe/c/b/c;->a:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method public static makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final parseCssColor(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final parseCssPixel(Ljava/lang/String;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const-string v0, "px"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setGlobalLocation(DDLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static toMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->toMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static transcoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/i/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static xmlToJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    :try_start_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/a/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static xmlToJsonObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/uzmap/pkg/uzkit/a/a;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/a/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {}, Lcom/uzmap/pkg/uzkit/a/a;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/a/a;->a()V

    const/4 p0, 0x0

    return-object p0
.end method
