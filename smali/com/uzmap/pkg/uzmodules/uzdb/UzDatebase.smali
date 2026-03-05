.class public Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzDatebase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "db"


# instance fields
.field err:Lorg/json/JSONObject;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field ret:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 29
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    .line 30
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    return-void
.end method

.method private formatDouble(D)Ljava/lang/String;
    .locals 2

    .line 471
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    const/4 v1, 0x0

    .line 472
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x6

    .line 473
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 474
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    const-string v0, ""

    .line 475
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public generatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file://"

    .line 82
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "android_asset"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    :goto_0
    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public jsmethod_closeDatabase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "db"

    const-string v1, "closeDatabase"

    .line 118
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 119
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "status"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 124
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v2, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 131
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 132
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_closeDatabaseSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "db"

    const-string v1, "closeDatabase"

    .line 142
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 143
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status"

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 148
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 154
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 155
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 160
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_executeSql(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6

    const-string v0, "db"

    const-string v1, "executeSql"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 244
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sql"

    .line 245
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "msg"

    const/4 v3, 0x0

    const-string v4, "status"

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 250
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    const-string v1, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    .line 254
    :cond_0
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    :catch_1
    move-exception v0

    .line 257
    :try_start_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 258
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 260
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 262
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_executeSqlSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 4

    const-string v0, "db"

    const-string v1, "executeSql"

    .line 275
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 276
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sql"

    .line 277
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 278
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "msg"

    const/4 v2, 0x0

    const-string v3, "status"

    if-nez v0, :cond_0

    .line 281
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v0, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    :try_start_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 299
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 301
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 288
    :try_start_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 289
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 291
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 293
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_openDatabase(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    const-string v0, "db"

    const-string v1, "open"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 43
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 44
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;->openDatabase(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_openDatabaseSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "db"

    const-string v1, "open"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "name"

    .line 62
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    .line 63
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>()V

    return-object p1

    .line 67
    :cond_0
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/daoImpl/DBDaoImpl;->openDatabase(Ljava/lang/String;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 69
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    :goto_0
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method public jsmethod_selectSql(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 13

    const-string v0, "name"

    .line 310
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sql"

    .line 311
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "msg"

    const/4 v3, 0x0

    const-string v4, "status"

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 315
    :try_start_0
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    const-string v7, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v6, v7, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    .line 321
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 323
    :cond_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    const/4 v7, 0x0

    .line 325
    :try_start_1
    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 327
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 328
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 329
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    move v9, v3

    :goto_1
    if-lt v9, v1, :cond_2

    .line 367
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 331
    :cond_2
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    .line 333
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xb

    if-ge v11, v12, :cond_3

    .line 334
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 336
    :cond_3
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getType(I)I

    move-result v11

    if-eqz v11, :cond_8

    if-eq v11, v5, :cond_7

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    const/4 v12, 0x3

    if-eq v11, v12, :cond_5

    const/4 v12, 0x4

    if-eq v11, v12, :cond_4

    move-object v11, v7

    goto :goto_2

    .line 341
    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 352
    :cond_5
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 344
    :cond_6
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    .line 346
    invoke-direct {p0, v11, v12}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->formatDouble(D)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 349
    :cond_7
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 338
    :cond_8
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 358
    :goto_2
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    const-string v11, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 362
    :cond_9
    :try_start_2
    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-exception v10

    .line 364
    :try_start_3
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 371
    :cond_a
    :goto_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    .line 373
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 375
    invoke-virtual {p1, v0, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    .line 378
    :try_start_4
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 380
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-void

    :catch_3
    move-exception p1

    .line 383
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method public jsmethod_selectSqlSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 12

    const-string v0, "name"

    .line 392
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sql"

    .line 393
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "msg"

    const/4 v2, 0x0

    const-string v3, "status"

    if-nez v0, :cond_0

    .line 397
    :try_start_0
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 398
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v5, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    new-instance v4, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    .line 402
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 404
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const/4 v5, 0x0

    .line 406
    :try_start_1
    invoke-virtual {v0, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_a

    .line 408
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 450
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 409
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 410
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    move v8, v2

    :goto_1
    if-lt v8, v6, :cond_2

    .line 448
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 412
    :cond_2
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 414
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xb

    if-ge v10, v11, :cond_3

    .line 415
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 417
    :cond_3
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getType(I)I

    move-result v10

    if-eqz v10, :cond_8

    if-eq v10, v0, :cond_7

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    const/4 v11, 0x3

    if-eq v10, v11, :cond_5

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    move-object v10, v5

    goto :goto_2

    .line 422
    :cond_4
    new-instance v10, Ljava/lang/String;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 433
    :cond_5
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 425
    :cond_6
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .line 427
    invoke-direct {p0, v10, v11}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->formatDouble(D)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 430
    :cond_7
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 419
    :cond_8
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 439
    :goto_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v10, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 443
    :cond_9
    :try_start_2
    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_1
    move-exception v9

    .line 445
    :try_start_3
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 452
    :cond_a
    :goto_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "data"

    .line 453
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 455
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-object v0

    :catch_2
    move-exception p1

    .line 458
    :try_start_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 460
    new-instance v0, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 462
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 464
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>()V

    return-object p1
.end method

.method public jsmethod_transaction(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "name"

    .line 187
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "operation"

    .line 188
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "status"

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 193
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v2, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->err:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void

    :cond_0
    const-string v4, "begin"

    .line 198
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0

    :cond_1
    const-string v4, "commit"

    .line 200
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    :cond_2
    const-string v4, "rollback"

    .line 202
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 205
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_transactionSync_sync(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 3

    const-string v0, "name"

    .line 213
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "operation"

    .line 214
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "status"

    if-nez v0, :cond_0

    .line 218
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 219
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const-string v0, "msg"

    const-string v1, "\u6570\u636e\u5e93\u6ca1\u6709\u6253\u5f00"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :cond_0
    const-string v2, "begin"

    .line 223
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_0

    :cond_1
    const-string v2, "commit"

    .line 225
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_0

    :cond_2
    const-string v2, "rollback"

    .line 227
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 230
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    const/4 v0, 0x1

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->ret:Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1
.end method

.method protected onClean()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 174
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 99
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/UzDatebase;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 105
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 109
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
