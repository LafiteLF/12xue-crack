.class public Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzDatebaseSQL.java"


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 469
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 479
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->copyDatebase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    .line 426
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    .line 448
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method private copyDatebase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 p1, 0x2f

    .line 482
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 484
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 486
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object p2, v1

    :goto_1
    if-eqz p2, :cond_4

    .line 500
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 502
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 504
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x2000

    new-array p3, p3, [B

    .line 507
    :goto_2
    invoke-virtual {p2, p3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_3

    .line 510
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 511
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-object p1

    :cond_3
    const/4 v3, 0x0

    .line 508
    invoke-virtual {v0, p3, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 513
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    return-object v1
.end method

.method private errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 438
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x0

    .line 440
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 441
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 3

    .line 427
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x0

    .line 429
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "msg"

    .line 430
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 434
    invoke-virtual {p1, p2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private isAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "android_asset/"

    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0xe

    .line 473
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private subfileCall(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 3

    .line 109
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "status"

    .line 111
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p2, "files"

    .line 113
    invoke-virtual {v0, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "folders"

    .line 114
    invoke-virtual {v0, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p2, "msg"

    .line 116
    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "code"

    .line 117
    invoke-virtual {v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_0
    const/4 p2, 0x0

    .line 119
    invoke-virtual {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private successCallback()Lorg/json/JSONObject;
    .locals 3

    .line 460
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 462
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private successCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 3

    .line 449
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "status"

    .line 451
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 452
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :catch_0
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public jsmethod_closeDatabase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "name"

    .line 222
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Database Name Can Not Be Null!"

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->closeDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Database Not Open"

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_closeDatabaseSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 1

    const-string v0, "name"

    .line 208
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Name Can Not Be Null!"

    .line 211
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 210
    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 213
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->closeDatabase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 217
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Not Open"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_executeSql(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "name"

    .line 312
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Database Name Can Not Be Null!"

    .line 314
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "sql"

    .line 317
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "SQL Can Not Be Null!"

    .line 319
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 322
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Database Not Open"

    .line 324
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Database Readonly"

    .line 328
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 332
    :cond_3
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    .line 337
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method public jsmethod_executeSqlSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 2

    const-string v0, "name"

    .line 342
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Name Can Not Be Null!"

    .line 345
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 344
    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-string v1, "sql"

    .line 347
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "SQL Can Not Be Null!"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 351
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 353
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Not Open"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 355
    :cond_2
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Readonly"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 359
    :cond_3
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 361
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsmethod_openDatabase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "name"

    .line 127
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Database Name Can Not Be Null!"

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL$1;->start()V

    return-void
.end method

.method public jsmethod_openDatabaseSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 6

    const-string v0, "name"

    .line 169
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Name Can Not Be Null!"

    .line 172
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 171
    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-string v1, "path"

    .line 174
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->isAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v4

    const-string v5, "database"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {p0, p1, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->copyDatebase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 186
    :cond_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "I/O Error!"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    if-eqz v1, :cond_3

    const-string v2, "file://"

    .line 189
    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    :cond_3
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->openDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 195
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Database Path Can Not Access"

    goto :goto_1

    :cond_5
    const-string p1, "Exception"

    .line 197
    :goto_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsmethod_selectSql(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "name"

    .line 372
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Database Name Can Not Be Null!"

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "sql"

    .line 377
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "SQL Can Not Be Null!"

    .line 379
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 382
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "Database Not Open"

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 387
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 389
    :try_start_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->rawQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "data"

    .line 391
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    const/4 v2, 0x1

    .line 392
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 393
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public jsmethod_selectSqlSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 2

    const-string v0, "name"

    .line 401
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Name Can Not Be Null!"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-string v1, "sql"

    .line 405
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "SQL Can Not Be Null!"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 409
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 411
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Not Open"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 413
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 415
    :try_start_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->rawQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 416
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    .line 417
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "status"

    const/4 v1, 0x1

    .line 418
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 419
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 422
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public jsmethod_subfile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    const-string v0, "directory"

    .line 30
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, "\u8be5\u8def\u5f84\u4e0d\u5b58\u5728\u6587\u4ef6"

    move-object v3, p0

    move-object v4, p1

    .line 37
    invoke-direct/range {v3 .. v9}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v6, "\u8be5\u8def\u5f84\u662f\u6587\u4ef6\u8def\u5f84\u975e\u76ee\u5f55\u8def\u5f84"

    move-object v2, p0

    move-object v3, p1

    .line 41
    invoke-direct/range {v2 .. v8}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void

    .line 45
    :cond_2
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 47
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 48
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 49
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    return-void

    .line 49
    :cond_3
    aget-object v3, v0, v2

    .line 50
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 51
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 52
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 53
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public jsmethod_subfileSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 8

    const-string v0, "directory"

    .line 60
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "databases"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "\u8be5\u8def\u5f84\u4e0d\u5b58\u5728\u6587\u4ef6"

    move-object v2, p0

    .line 67
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 70
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "\u8be5\u8def\u5f84\u662f\u6587\u4ef6\u8def\u5f84\u975e\u76ee\u5f55\u8def\u5f84"

    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object v0

    .line 75
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 77
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 78
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_3

    .line 86
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->subfileCall(ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 79
    :cond_3
    aget-object v2, p1, v1

    .line 80
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public jsmethod_transaction(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "name"

    .line 241
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Database Name Can Not Be Null!"

    .line 243
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Database Not Open"

    .line 248
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    .line 251
    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Database Readonly"

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, ""

    const-string v2, "operation"

    .line 255
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "begin"

    .line 256
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 257
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->beginTransaction()V

    goto :goto_0

    :cond_3
    const-string v3, "commit"

    .line 258
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 260
    :try_start_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->setTransactionSuccessful()V

    .line 261
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    const-string v3, "rollback"

    .line 265
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 266
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->endTransaction()V

    .line 271
    :catch_0
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "Operation Error!"

    .line 268
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method public jsmethod_transactionSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "name"

    .line 276
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Name Can Not Be Null!"

    .line 279
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 278
    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 281
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 283
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Not Open"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 285
    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->readonly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Database Readonly"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_2
    const-string v1, "operation"

    const-string v2, ""

    .line 288
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "begin"

    .line 289
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->beginTransaction()V

    goto :goto_0

    :cond_3
    const-string v1, "commit"

    .line 291
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    :try_start_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->setTransactionSuccessful()V

    .line 294
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    const-string v1, "rollback"

    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 299
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->endTransaction()V

    .line 303
    :catch_0
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->successCallback()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 301
    :cond_5
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    const-string v0, "Operation Error!"

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebaseSQL;->errorCallback(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public subfileCall(ZILjava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 2

    .line 91
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    .line 92
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p1, "files"

    .line 94
    invoke-virtual {v0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "folders"

    .line 95
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p1, "msg"

    .line 97
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "code"

    .line 98
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
