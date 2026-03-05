.class public Lcom/apicloud/pdfReader/PdfReader;
.super Lcom/apicloud/pdfReader/Pdfium;
.source "PdfReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;
    }
.end annotation


# static fields
.field public static final BACK_BTN_TAG:Ljava/lang/String; = "backBtn"


# instance fields
.field protected buffer:[B

.field protected canvasH:I

.field protected canvasW:I

.field protected currentPage:I

.field protected displayDPI:F

.field protected doc:Lcom/artifex/mupdf/fitz/Document;

.field protected fitPage:Z

.field private fixed:Z

.field private fixedOn:Ljava/lang/String;

.field private h:I

.field protected hasLoaded:Z

.field protected history:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected isReflowable:Z

.field protected key:Ljava/lang/String;

.field protected layoutEm:F

.field protected layoutH:F

.field protected layoutW:F

.field private mBackBtnConfig:Lcom/apicloud/pdfReader/BtnConfig;

.field private mCachePath:Ljava/lang/String;

.field private mMupdfView:Landroid/view/View;

.field protected mimetype:Ljava/lang/String;

.field protected pageCount:I

.field protected pageView:Lcom/artifex/mupdf/mini/PageView;

.field protected pageZoom:F

.field protected path:Ljava/lang/String;

.field protected searchHitPage:I

.field protected searchNeedle:Ljava/lang/String;

.field protected stopSearch:Z

.field protected title:Ljava/lang/String;

.field private w:I

.field protected wentBack:Z

.field protected worker:Lcom/artifex/mupdf/mini/Worker;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 3

    .line 61
    invoke-direct {p0, p1}, Lcom/apicloud/pdfReader/Pdfium;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const-string p1, "auto"

    .line 142
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/apicloud/pdfReader/PdfReader;->w:I

    .line 143
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->h:I

    const-string p1, ""

    .line 145
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->fixedOn:Ljava/lang/String;

    const/4 p1, 0x1

    .line 146
    iput-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader;->fixed:Z

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "law"

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " == "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->md51(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "xDebug"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "===========================>"

    .line 64
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->md5(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v1, 0xbb8

    .line 67
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 71
    :goto_0
    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->md51(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/apicloud/pdfReader/PdfReader;->mCachePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apicloud/pdfReader/PdfReader;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Lcom/apicloud/pdfReader/PdfReader;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/apicloud/pdfReader/PdfReader;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/apicloud/pdfReader/PdfReader;->w:I

    return p0
.end method

.method static synthetic access$300(Lcom/apicloud/pdfReader/PdfReader;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/apicloud/pdfReader/PdfReader;->h:I

    return p0
.end method

.method static synthetic access$400(Lcom/apicloud/pdfReader/PdfReader;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/apicloud/pdfReader/PdfReader;->x:I

    return p0
.end method

.method static synthetic access$500(Lcom/apicloud/pdfReader/PdfReader;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/apicloud/pdfReader/PdfReader;->y:I

    return p0
.end method

.method static synthetic access$600(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/apicloud/pdfReader/PdfReader;->fixedOn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/apicloud/pdfReader/PdfReader;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/apicloud/pdfReader/PdfReader;->fixed:Z

    return p0
.end method

.method private static forceGetFileUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 4

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 130
    :try_start_0
    const-class v0, Landroid/os/StrictMode;

    const-string v1, "disableDeathOnFileUriExposure"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 131
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Share"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 633
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 638
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 648
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 649
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xDebug==>"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    .line 651
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 656
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 643
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 640
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method

.method public static md51(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 667
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 677
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    .line 678
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xDebug"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    const-string v4, "0"

    .line 680
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit16 v3, v3, 0xff

    .line 682
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 684
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 672
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p0

    .line 669
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V
    .locals 3

    .line 620
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    const-string v2, "show"

    .line 622
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pdfCachePath"

    .line 623
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "totalPage"

    .line 624
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 625
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 627
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public clearCache()V
    .locals 4

    .line 697
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 698
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    .line 700
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 702
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public goBackward()V
    .locals 2

    .line 416
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 417
    iput-boolean v1, p0, Lcom/apicloud/pdfReader/PdfReader;->wentBack:Z

    sub-int/2addr v0, v1

    .line 418
    iput v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 419
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .line 424
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    iget v1, p0, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 425
    iput v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 426
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    :cond_0
    return-void
.end method

.method public gotoPage(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 431
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pageCount:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    if-eq p1, v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader;->history:Ljava/util/Stack;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 434
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    :cond_0
    return-void
.end method

.method public gotoURI(Ljava/lang/String;)V
    .locals 2

    .line 439
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 440
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 442
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/apicloud/pdfReader/PdfReader;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 444
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public init(Landroid/net/Uri;)V
    .locals 5

    .line 220
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->key:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->path:Ljava/lang/String;

    goto :goto_1

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 226
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 229
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 230
    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 232
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->buffer:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    :goto_1
    new-instance p1, Lcom/artifex/mupdf/mini/Worker;

    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/artifex/mupdf/mini/Worker;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->worker:Lcom/artifex/mupdf/mini/Worker;

    .line 239
    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/Worker;->start()V

    const/high16 p1, 0x41000000    # 8.0f

    .line 240
    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->layoutEm:F

    .line 241
    iput-boolean v2, p0, Lcom/apicloud/pdfReader/PdfReader;->fitPage:Z

    .line 242
    iput v2, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 243
    iput v1, p0, Lcom/apicloud/pdfReader/PdfReader;->searchHitPage:I

    .line 244
    iput-boolean v2, p0, Lcom/apicloud/pdfReader/PdfReader;->hasLoaded:Z

    .line 246
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/apicloud/pdfReader/PdfReader$3;

    invoke-direct {v0, p0}, Lcom/apicloud/pdfReader/PdfReader$3;-><init>(Lcom/apicloud/pdfReader/PdfReader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public jsmethod_clearCache(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 536
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->clearCache()V

    return-void
.end method

.method public jsmethod_closePdfView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 527
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/PdfReader;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 529
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    :cond_0
    return-void
.end method

.method public jsmethod_closeView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 467
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/PdfReader;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 469
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public jsmethod_hideView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 455
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "path"

    .line 78
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/apicloud/pdfReader/BtnConfig;

    invoke-direct {v1, p1}, Lcom/apicloud/pdfReader/BtnConfig;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v1, p0, Lcom/apicloud/pdfReader/PdfReader;->mBackBtnConfig:Lcom/apicloud/pdfReader/BtnConfig;

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/pdfReader/PdfReader;->mCachePath:Ljava/lang/String;

    const-string v1, "http"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader;->mCachePath:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;-><init>(Lcom/apicloud/pdfReader/PdfReader;Ljava/lang/String;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-virtual {v1, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 88
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/apicloud/pdfReader/PdfReader$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/apicloud/pdfReader/PdfReader$1;-><init>(Lcom/apicloud/pdfReader/PdfReader;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 112
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public jsmethod_openPdfView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    .line 478
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, v0}, Lcom/apicloud/pdfReader/PdfReader;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 481
    :cond_0
    new-instance v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    const-string v0, "auto"

    .line 484
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v1

    .line 485
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v2

    const-string v3, "rect"

    .line 486
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v1, "x"

    .line 488
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "y"

    .line 489
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "w"

    .line 490
    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v2

    const-string v5, "h"

    .line 491
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v0

    move v6, v2

    move v2, v0

    move v0, v4

    move v4, v1

    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v4

    .line 494
    :goto_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 495
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 496
    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const-string v0, "fixedOn"

    .line 497
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    .line 498
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_2

    const-string v2, ""

    .line 500
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 501
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/apicloud/pdfReader/PdfReader;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    goto :goto_1

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {p0, v0, v3}, Lcom/apicloud/pdfReader/PdfReader;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 506
    :goto_1
    invoke-virtual {p0, p1}, Lcom/apicloud/pdfReader/PdfReader;->loadPdf(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_openView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "path"

    .line 150
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rect"

    .line 151
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "x"

    .line 153
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/apicloud/pdfReader/PdfReader;->x:I

    const-string v2, "y"

    .line 154
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/apicloud/pdfReader/PdfReader;->y:I

    const-string v2, "auto"

    const-string v3, "w"

    .line 155
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/apicloud/pdfReader/PdfReader;->w:I

    const-string v3, "h"

    .line 156
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/apicloud/pdfReader/PdfReader;->h:I

    :cond_0
    const-string v1, "fixedOn"

    .line 159
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/pdfReader/PdfReader;->fixedOn:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "fixed"

    .line 160
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apicloud/pdfReader/PdfReader;->fixed:Z

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/apicloud/pdfReader/PdfReader;->mCachePath:Ljava/lang/String;

    const-string v2, "http"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v2, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader;->mCachePath:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;-><init>(Lcom/apicloud/pdfReader/PdfReader;Ljava/lang/String;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-virtual {v2, p1}, Lcom/apicloud/pdfReader/PdfReader$DownLoadAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 169
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/apicloud/pdfReader/PdfReader$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/apicloud/pdfReader/PdfReader$2;-><init>(Lcom/apicloud/pdfReader/PdfReader;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public jsmethod_showView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 461
    iget-object p1, p0, Lcom/apicloud/pdfReader/PdfReader;->mMupdfView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_zoomCenteredTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "zoom"

    .line 512
    invoke-virtual {p1, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    const-string v2, "center"

    .line 515
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v2, "x"

    .line 517
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "y"

    .line 518
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 520
    :goto_0
    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader;->pdfView:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    double-to-float v0, v0

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v2

    int-to-float p1, p1

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    :cond_1
    return-void
.end method

.method protected loadDocument()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/apicloud/pdfReader/PdfReader$5;

    invoke-direct {v1, p0}, Lcom/apicloud/pdfReader/PdfReader$5;-><init>(Lcom/apicloud/pdfReader/PdfReader;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected loadPage()V
    .locals 4

    .line 371
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->currentPage:I

    .line 372
    iget v1, p0, Lcom/apicloud/pdfReader/PdfReader;->pageZoom:F

    const/4 v2, 0x1

    .line 373
    iput-boolean v2, p0, Lcom/apicloud/pdfReader/PdfReader;->stopSearch:Z

    .line 374
    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v3, Lcom/apicloud/pdfReader/PdfReader$7;

    invoke-direct {v3, p0, v0, v1}, Lcom/apicloud/pdfReader/PdfReader$7;-><init>(Lcom/apicloud/pdfReader/PdfReader;IF)V

    invoke-virtual {v2, v3}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method public onPageViewSizeChanged(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 283
    iput v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pageZoom:F

    .line 284
    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->canvasW:I

    .line 285
    iput p2, p0, Lcom/apicloud/pdfReader/PdfReader;->canvasH:I

    mul-int/lit8 p1, p1, 0x48

    int-to-float p1, p1

    .line 286
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->displayDPI:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->layoutW:F

    mul-int/lit8 p2, p2, 0x48

    int-to-float p1, p2

    div-float/2addr p1, v0

    .line 287
    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->layoutH:F

    .line 288
    iget-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader;->hasLoaded:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 289
    iput-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader;->hasLoaded:Z

    .line 290
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->openDocument()V

    goto :goto_0

    .line 291
    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/pdfReader/PdfReader;->isReflowable:Z

    if-eqz p1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->relayoutDocument()V

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    :goto_0
    return-void
.end method

.method public onPageViewZoomChanged(F)V
    .locals 1

    .line 299
    iget v0, p0, Lcom/apicloud/pdfReader/PdfReader;->pageZoom:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 300
    iput p1, p0, Lcom/apicloud/pdfReader/PdfReader;->pageZoom:F

    .line 301
    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->loadPage()V

    :cond_0
    return-void
.end method

.method protected openDocument()V
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/apicloud/pdfReader/PdfReader$4;

    invoke-direct {v1, p0}, Lcom/apicloud/pdfReader/PdfReader$4;-><init>(Lcom/apicloud/pdfReader/PdfReader;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method protected relayoutDocument()V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader;->worker:Lcom/artifex/mupdf/mini/Worker;

    new-instance v1, Lcom/apicloud/pdfReader/PdfReader$6;

    invoke-direct {v1, p0}, Lcom/apicloud/pdfReader/PdfReader$6;-><init>(Lcom/apicloud/pdfReader/PdfReader;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/Worker;->add(Lcom/artifex/mupdf/mini/Worker$Task;)V

    return-void
.end method

.method public viewPDFFile(Ljava/io/File;Lcom/apicloud/pdfReader/BtnConfig;)V
    .locals 3

    .line 688
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 689
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/artifex/mupdf/MuPDFActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 690
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "backBtn"

    .line 692
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 693
    invoke-virtual {p0, v0}, Lcom/apicloud/pdfReader/PdfReader;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public viewPdf(Ljava/io/File;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x80000

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug__"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v0}, Lcom/apicloud/pdfReader/PdfReader;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
