.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UIMediaScanner.java"


# static fields
.field public static CACHE_PATH:Ljava/lang/String; = null

.field public static final CONFIG_TAG:Ljava/lang/String; = "configData"

.field public static ImmerseState:Z = false

.field public static final REQUEST_CODE:I = 0x100

.field public static final RESULT_CODE:I = 0x101

.field public static final TAG:Ljava/lang/String;

.field public static mMContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public final EVENT_TYPE_CANCEL:Ljava/lang/String;

.field public final EVENT_TYPE_CONFIRM:Ljava/lang/String;

.field private allScanFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private dataFormat:Ljava/text/SimpleDateFormat;

.field private fetchCount:I

.field private startIndex:I

.field public thumbHeight:I

.field public thumbWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->ImmerseState:Z

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 1

    .line 59
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const-string p1, "confirm"

    .line 55
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->EVENT_TYPE_CONFIRM:Ljava/lang/String;

    const-string p1, "cancel"

    .line 56
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->EVENT_TYPE_CANCEL:Ljava/lang/String;

    const/4 p1, -0x1

    .line 258
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->startIndex:I

    .line 259
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->fetchCount:I

    const/16 p1, 0x64

    .line 261
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbWidth:I

    .line 262
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbHeight:I

    .line 467
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 468
    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->dataFormat:Ljava/text/SimpleDateFormat;

    .line 60
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->inImmerseState()Z

    move-result p1

    sput-boolean p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->ImmerseState:Z

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Ljava/util/ArrayList;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->allScanFileList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->allScanFileList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->fetchCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V
    .locals 0

    .line 258
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->startIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I
    .locals 0

    .line 258
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->startIndex:I

    return p0
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I
    .locals 0

    .line 259
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->fetchCount:I

    return p0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 677
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 680
    :try_start_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 681
    :try_start_1
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v1

    .line 683
    :goto_0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_2

    :cond_0
    move-object p0, v1

    :goto_2
    if-eqz v1, :cond_1

    .line 688
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 690
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object p0
.end method

.method private removeTmpThumbnail(Ljava/lang/String;)V
    .locals 3

    .line 707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 711
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 716
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    .line 717
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_2

    return-void

    .line 719
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;J)V
    .locals 2

    .line 457
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "duration"

    .line 459
    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 461
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 463
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public cancelCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 491
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    const-string v2, "cancel"

    .line 493
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 496
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 498
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;Z)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/16 v4, 0x9d

    const/16 v5, 0x9d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
            ">;ZII)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p4

    move/from16 v3, p5

    const-string v4, ".jpg"

    const-string v5, "/.thumbnails_for_me"

    .line 568
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 569
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    .line 572
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_0

    goto/16 :goto_4

    .line 573
    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "path"

    .line 574
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v11, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 581
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 583
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    new-instance v10, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v13, v13, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v13}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "TT"

    const-string v13, "thumbPath"

    if-eqz v11, :cond_1

    :try_start_1
    const-string v11, "use cache"

    .line 587
    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 590
    :cond_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v10, v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v10, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->createThumbPath(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 592
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "create image "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 594
    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    :cond_2
    :goto_1
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v10, v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x0

    const-string v12, ""

    if-eqz v10, :cond_3

    :try_start_2
    const-string v14, "image"

    .line 603
    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v11, "image/"

    .line 604
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    :cond_3
    if-eqz v10, :cond_8

    const-string v14, "video"

    .line 608
    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v11, "video/"

    .line 609
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 612
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v10, v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 613
    new-instance v10, Ljava/io/File;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v12, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    .line 634
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v10, v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 616
    :cond_5
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 617
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_6

    .line 619
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 621
    :cond_6
    new-instance v10, Ljava/io/File;

    .line 622
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v15, v15, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v15}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 621
    invoke-direct {v10, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 625
    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 629
    :cond_7
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v12, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 628
    invoke-static {v12}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 630
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v14, v14, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v14, v12}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 631
    invoke-virtual {v9, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 638
    :cond_8
    :goto_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "jpeg"

    invoke-virtual {v11, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v11, "jpg"

    :cond_9
    const-string v10, "suffix"

    .line 642
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "size"

    .line 643
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v11, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    invoke-virtual {v9, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v10, "groupName"

    .line 644
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v11, v11, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->groupName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    iget-object v10, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->dataFormat:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v12, v12, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->time:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "time"

    .line 647
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 648
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-wide v10, v10, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->size:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_a

    .line 649
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 653
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-eqz p3, :cond_b

    .line 657
    :try_start_3
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->allScanFileList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    const-string v0, "total"

    .line 658
    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->allScanFileList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_b
    const-string v0, "list"

    .line 660
    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 662
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 664
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "eventType"

    move-object/from16 v2, p1

    .line 666
    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 668
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    :goto_6
    return-object v6
.end method

.method public createThumbPath(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 512
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "degree : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TT"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 533
    :cond_0
    invoke-static {v1, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 536
    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 540
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/.thumbnails_for_me"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 541
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_2

    .line 543
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 546
    :cond_2
    new-instance p3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ".jpg"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 551
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 552
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p2, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 554
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 557
    :goto_0
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public jsmethod_fetch(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 383
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public jsmethod_getVideoDuration(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "path"

    .line 426
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-static {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil;->getRealPath(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 437
    :cond_1
    new-instance v8, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v8}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 438
    iget-boolean v2, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;->isAssert:Z

    if-eqz v2, :cond_2

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 443
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v8

    .line 442
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 449
    :cond_2
    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x9

    .line 452
    invoke-virtual {v8, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;J)V

    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 68
    sput-object p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mMContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 70
    new-instance v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;-><init>()V

    const-string v1, "column"

    .line 71
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    .line 73
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 74
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    :cond_0
    const-string v1, "max"

    .line 78
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMax:I

    :cond_1
    const-string v1, "classify"

    .line 82
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 83
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->classify:Z

    :cond_2
    const-string v1, "type"

    .line 86
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 87
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    :cond_3
    const-string v1, "rotation"

    .line 90
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 91
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->rotation:Z

    :cond_4
    const-string v1, "showPreview"

    .line 94
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 95
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    :cond_5
    const-string v1, "showBrowser"

    .line 98
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 99
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showBrowser:Z

    .line 105
    :cond_6
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 107
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 109
    iget v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->col:I

    div-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_size:I

    const-string v1, "bounces"

    .line 111
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 112
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->isBounces:Z

    :cond_7
    const-string v1, "scrollToBottom"

    .line 116
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v2, "intervalTime"

    .line 118
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 119
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->intervalTime:I

    :cond_8
    const-string v1, "exchange"

    .line 122
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 123
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->exchange:Z

    :cond_9
    const-string v1, "sort"

    .line 126
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v2, "key"

    .line 128
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 129
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->key:Ljava/lang/String;

    :cond_a
    const-string v2, "order"

    .line 131
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 132
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->order:Ljava/lang/String;

    :cond_b
    const-string v1, "texts"

    .line 136
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v2, "stateText"

    .line 138
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 139
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title:Ljava/lang/String;

    :cond_c
    const-string v2, "cancelText"

    .line 141
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 142
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title:Ljava/lang/String;

    :cond_d
    const-string v2, "finishText"

    .line 144
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 145
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title:Ljava/lang/String;

    :cond_e
    const-string v2, "selectedMaxText"

    .line 147
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 148
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->selectedMaxText:Ljava/lang/String;

    :cond_f
    const-string v2, "classifyTitle"

    .line 151
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 152
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->clasifyTitle:Ljava/lang/String;

    :cond_10
    const-string v1, "styles"

    .line 156
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_21

    const-string v1, "bg"

    .line 159
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 161
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->bgColor:I

    :cond_11
    const-string v2, "mark"

    .line 164
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v3, "position"

    .line 166
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 167
    iget-boolean v4, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-eqz v4, :cond_12

    const-string v3, "top_right"

    .line 168
    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_position:Ljava/lang/String;

    goto :goto_0

    .line 170
    :cond_12
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_position:Ljava/lang/String;

    :cond_13
    :goto_0
    const-string v3, "icon"

    .line 173
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 174
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_icon:Ljava/lang/String;

    :cond_14
    const-string v3, "size"

    .line 176
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "size"

    .line 177
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->mark_size:I

    :cond_15
    const-string v2, "nav"

    .line 181
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 183
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 185
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 187
    sput-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navBgBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 190
    :cond_16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_bg:I

    :cond_17
    :goto_1
    const-string v1, "stateColor"

    .line 194
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "stateColor"

    .line 196
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_color:I

    :cond_18
    const-string v1, "stateSize"

    .line 199
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "stateSize"

    .line 200
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navi_title_size:I

    :cond_19
    const-string v1, "cancleBg"

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 205
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 208
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 211
    :cond_1a
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_bg:I

    :cond_1b
    :goto_2
    const-string v1, "cancelColor"

    .line 215
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "cancelColor"

    .line 217
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_color:I

    :cond_1c
    const-string v1, "cancelSize"

    .line 220
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "cancelSize"

    .line 221
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title_size:I

    :cond_1d
    const-string v1, "finishBg"

    .line 225
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 227
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 229
    sput-object v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 232
    :cond_1e
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_bg:I

    :cond_1f
    :goto_3
    const-string v1, "finishColor"

    .line 236
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "finishColor"

    .line 238
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_color:I

    :cond_20
    const-string v1, "finishSize"

    .line 241
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "finishSize"

    .line 242
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finish_title_size:I

    .line 247
    :cond_21
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 248
    iget-boolean v1, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->classify:Z

    if-eqz v1, :cond_22

    .line 249
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v1

    const-class v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4

    .line 251
    :cond_22
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v1

    const-class v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4
    const-string v1, "configData"

    .line 253
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v0, 0x100

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public jsmethod_scan(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "thumbnail"

    .line 267
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    const-string v2, "w"

    .line 269
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbWidth:I

    const-string v2, "h"

    .line 270
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbHeight:I

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 365
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public jsmethod_transPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "path"

    .line 369
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 373
    :try_start_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p1, "LYH"

    const-string p2, "onActivityResult"

    .line 476
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "files"

    .line 480
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 479
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 483
    sget-object p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mMContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p3, 0x0

    const-string v0, "confirm"

    .line 484
    invoke-virtual {p0, v0, p1, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p3, 0x1

    .line 483
    invoke-virtual {p2, p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 486
    :cond_1
    sget-object p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->mMContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->cancelCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 698
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    const/4 v0, 0x0

    .line 700
    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancelBgBitmap:Landroid/graphics/Bitmap;

    .line 701
    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->finishBgBitmap:Landroid/graphics/Bitmap;

    .line 702
    sput-object v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->navBgBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
