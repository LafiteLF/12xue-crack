.class public Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field static final DB_VERSION:I = 0x1

.field private static instance:Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;


# instance fields
.field private mDBbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->mDBbMap:Ljava/util/Map;

    return-void
.end method

.method private formatDouble(D)Ljava/lang/String;
    .locals 2

    .line 170
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    const/4 v1, 0x0

    .line 171
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumFractionDigits(I)V

    const/4 v1, 0x6

    .line 172
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 173
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    const-string v0, ""

    .line 174
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static instance()Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;
    .locals 1

    .line 40
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance:Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance:Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    .line 43
    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->instance:Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;

    return-object v0
.end method


# virtual methods
.method public closeDatabase(Ljava/lang/String;)Z
    .locals 3

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->mDBbMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    if-eqz v0, :cond_2

    .line 103
    :try_start_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->inTransaction()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->setTransactionSuccessful()V

    .line 105
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->endTransaction()V

    .line 107
    :cond_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->mDBbMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    return-object p1
.end method

.method public openDatabase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    .line 49
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_3

    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 51
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 56
    :try_start_0
    invoke-static {p3, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdb/DBHelper;

    invoke-direct {v0, p1, p3, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdb/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    .line 74
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    .line 78
    :cond_2
    :try_start_1
    invoke-static {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :goto_0
    if-eqz v3, :cond_4

    .line 84
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    invoke-direct {p1, v3}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 85
    invoke-virtual {p1, p4}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->setReadonly(Z)V

    .line 86
    invoke-virtual {p0, p2, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->putDatabase(Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;)V

    :cond_4
    if-eqz v3, :cond_5

    return v1

    :cond_5
    return v2
.end method

.method public putDatabase(Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->mDBbMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rawQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->getDatabase(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;

    move-result-object p1

    .line 119
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1, p2, v1}, Lcom/uzmap/pkg/uzmodules/uzdb/DBWrap;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 122
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 163
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    .line 123
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    .line 124
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    :goto_1
    if-lt v3, p2, :cond_1

    .line 161
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    .line 128
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_2

    .line 129
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 131
    :cond_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const/4 v6, 0x4

    if-eq v5, v6, :cond_3

    move-object v5, v1

    goto :goto_2

    .line 136
    :cond_3
    new-instance v5, Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    .line 146
    :cond_4
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 139
    :cond_5
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    .line 140
    invoke-direct {p0, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdb/DBManager;->formatDouble(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 143
    :cond_6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 133
    :cond_7
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 152
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v5, ""

    .line 156
    :cond_8
    :try_start_0
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 158
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :goto_4
    return-object v0
.end method
