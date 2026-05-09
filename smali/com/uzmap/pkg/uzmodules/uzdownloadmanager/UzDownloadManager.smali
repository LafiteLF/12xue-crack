.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzDownloadManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

.field private mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    .line 32
    const-class p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private checkInstance()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    if-nez v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->context()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->comUzDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    :cond_0
    return-void
.end method

.method private comUzDownloadPath()Ljava/lang/String;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;->id:Ljava/lang/String;

    .line 459
    invoke-static {v0}, Lcom/uzmap/pkg/openapi/FileSystem;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openFileback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V
    .locals 2

    .line 447
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 449
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "msg"

    .line 450
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 452
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x1

    .line 454
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private transReason(I)I
    .locals 3

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_6

    const/16 v1, 0x3f0

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x3e9

    if-eq p1, v1, :cond_5

    const/16 v2, 0x3f1

    if-eq p1, v2, :cond_5

    const/16 v2, 0x3ee

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3ef

    const/16 v2, 0x3ea

    if-ne p1, v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x3ed

    if-ne p1, v1, :cond_3

    const/16 p1, 0x3eb

    return p1

    :cond_3
    const/16 v1, 0x3ec

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v0
.end method

.method private transToJavaStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    return p1

    :cond_3
    const/16 p1, 0x10

    return p1
.end method

.method private transToJsStatus(I)I
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    return v0
.end method


# virtual methods
.method public jsmethod_closeManagerView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 62
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->finish()V

    :cond_0
    return-void
.end method

.method public jsmethod_enqueue(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "url"

    .line 81
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "id"

    const/4 v3, 0x1

    if-nez v1, :cond_d

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "encode"

    .line 94
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 95
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    .line 96
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->urlExists(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_1

    .line 98
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 100
    :try_start_0
    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 102
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 104
    :goto_0
    invoke-virtual {p1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    :cond_1
    const-string v5, "headers"

    .line 107
    invoke-virtual {p1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "mimeType"

    .line 108
    invoke-virtual {p1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    .line 109
    invoke-virtual {p1, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "all"

    const-string v9, "networkTypes"

    .line 110
    invoke-virtual {p1, v9, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    if-eqz v4, :cond_2

    .line 112
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->encodingUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_2
    new-instance v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const-string v10, "iconPath"

    .line 115
    invoke-virtual {p1, v10}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 116
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const-string v12, "file://"

    const-string v13, "file"

    if-nez v11, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 121
    :cond_3
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setIconUri(Landroid/net/Uri;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    .line 124
    :cond_4
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x2

    if-eqz v1, :cond_5

    const/4 v8, 0x3

    goto :goto_1

    :cond_5
    const-string v1, "mobile"

    .line 126
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v8, v3

    goto :goto_1

    :cond_6
    const-string v1, "wifi"

    .line 128
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 131
    :goto_1
    invoke-virtual {v4, v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setAllowedNetworkTypes(I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    const-string v1, "savePath"

    .line 132
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->comUzDownloadPath()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[jsmethod_enqueue] defaultPath == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-static {v0, v7, v6}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 142
    :cond_7
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 144
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 145
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    .line 146
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 150
    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[jsmethod_enqueue] savePath == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_9
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    if-eqz v5, :cond_a

    .line 157
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 161
    invoke-virtual {v4, v1, v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    goto :goto_3

    .line 164
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 165
    invoke-virtual {v4, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    .line 167
    :cond_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 168
    invoke-virtual {v4, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    :cond_c
    const/4 v0, 0x0

    .line 170
    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    .line 171
    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;->setShowRunningNotification(Z)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;

    .line 172
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->enqueue(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Request;)J

    move-result-wide v0

    .line 173
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 175
    :try_start_1
    invoke-virtual {v4, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 179
    :goto_4
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 83
    :cond_d
    :goto_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, -0x1

    .line 85
    :try_start_2
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    .line 87
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 89
    :goto_6
    invoke-virtual {p1, v0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_getPrivateDirs(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "dir"

    .line 72
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_openDownloadedFile(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    const-string v0, "id"

    const/4 v1, -0x1

    .line 381
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    .line 386
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    int-to-long v4, v0

    aput-wide v4, v3, v1

    .line 387
    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    const/16 v0, 0x8

    .line 388
    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterByStatus(I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 389
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 391
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "local_uri"

    .line 392
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "media_type"

    .line 393
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 394
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "file://"

    const-string v5, ""

    .line 395
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jsmethod_openDownloadedFile] local == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->context()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 398
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[jsmethod_openDownloadedFile] localUri == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :catch_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v5, "video"

    .line 411
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v3, "video/*"

    .line 414
    :cond_0
    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10000001

    .line 415
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 417
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string v2, "\u65e0\u6cd5\u6253\u5f00\u6587\u4ef6"

    .line 421
    invoke-direct {p0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->openFileback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string v0, "\u672a\u627e\u5230\u5df2\u4e0b\u8f7d\u7684\u6587\u4ef6\u3002"

    .line 404
    invoke-direct {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->openFileback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "id\u5bf9\u5e94\u7684\u4e0b\u8f7d\u4e0d\u5b58\u5728"

    .line 426
    invoke-direct {p0, p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->openFileback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 429
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    const-string v0, "id\u4e0d\u80fd\u5c0f\u4e8e0"

    .line 434
    invoke-direct {p0, p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->openFileback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public jsmethod_openManagerView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 44
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    .line 46
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->inImmerseState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x19

    .line 48
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_0
    const-string v1, "title"

    const-string v2, "\u4e0b\u8f7d\u7ba1\u7406"

    .line 50
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->setTitle(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 53
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->onResume()V

    return-void
.end method

.method public jsmethod_pause(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    const/4 v0, -0x1

    const-string v1, "id"

    .line 340
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    new-array v0, v3, [J

    int-to-long v4, v1

    aput-wide v4, v0, v2

    .line 344
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->pause([J)I

    move-result v0

    .line 346
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-ltz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, "\u8be5id\u5bf9\u5e94\u7684\u4e0b\u8f7d\u4e0d\u5b58\u5728"

    :goto_0
    const-string v4, "status"

    .line 350
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 351
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 355
    :goto_1
    invoke-virtual {p1, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_query(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 31
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 185
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    .line 186
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    const-string v3, "ids"

    .line 187
    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const/4 v6, -0x1

    if-lez v5, :cond_3

    .line 190
    new-array v7, v5, [J

    :goto_1
    if-ge v4, v5, :cond_2

    .line 192
    invoke-virtual {v3, v4, v6}, Lorg/json/JSONArray;->optInt(II)I

    move-result v8

    if-ltz v8, :cond_1

    int-to-long v8, v8

    .line 194
    aput-wide v8, v7, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 197
    :cond_2
    invoke-virtual {v0, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    :cond_3
    const-string v3, "status"

    .line 199
    invoke-virtual {v2, v3, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 201
    invoke-direct {v1, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->transToJavaStatus(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterByStatus(I)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 203
    :cond_4
    iget-object v4, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v4

    .line 204
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    if-eqz v4, :cond_7

    .line 206
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "_id"

    .line 208
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 209
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "title"

    .line 210
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "total_size"

    .line 211
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "bytes_so_far"

    .line 212
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "media_type"

    .line 213
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "reason"

    .line 214
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string v14, "local_uri"

    .line 215
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "uri"

    .line 216
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "icon_uri"

    .line 217
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 219
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v16, v5

    .line 220
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 221
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v17

    if-nez v17, :cond_5

    move/from16 v18, v2

    move-object/from16 v17, v3

    .line 222
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v19, v0

    .line 223
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->transToJsStatus(I)I

    move-result v0

    move/from16 v20, v6

    .line 224
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    .line 225
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move/from16 v23, v8

    move/from16 v24, v9

    .line 226
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move/from16 v25, v10

    .line 227
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v26, v11

    .line 228
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-direct {v1, v11}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->transReason(I)I

    move-result v11

    .line 229
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v27, v13

    .line 230
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move/from16 v28, v14

    move/from16 v14, v18

    move/from16 v18, v15

    .line 231
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v29, v14

    .line 232
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v30, v4

    :try_start_2
    const-string v4, "id"

    .line 233
    invoke-virtual {v14, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v2, v17

    .line 234
    invoke-virtual {v14, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object/from16 v0, v22

    .line 235
    invoke-virtual {v14, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "totalSize"

    .line 236
    invoke-virtual {v14, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "finishSize"

    .line 237
    invoke-virtual {v14, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mimeType"

    .line 238
    invoke-virtual {v14, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-virtual {v14, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "savePath"

    .line 240
    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "iconPath"

    .line 241
    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url"

    .line 242
    invoke-virtual {v14, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, v21

    .line 243
    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToPrevious()Z

    move-object/from16 v1, p0

    move-object v5, v0

    move-object v3, v2

    move/from16 v15, v18

    move/from16 v0, v19

    move/from16 v6, v20

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v2, v29

    move-object/from16 v4, v30

    goto/16 :goto_2

    :cond_5
    move-object/from16 v30, v4

    move-object v0, v5

    const-string v1, "data"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, v16

    .line 246
    :try_start_3
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v30, v4

    :goto_3
    move-object/from16 v2, v16

    goto :goto_4

    :catch_3
    move-exception v0

    move-object/from16 v30, v4

    move-object v2, v5

    .line 248
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object/from16 v30, v4

    move-object v2, v5

    .line 251
    :goto_5
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_7
    move-object v2, v5

    :goto_6
    const/4 v0, 0x1

    move-object/from16 v1, p1

    .line 253
    invoke-virtual {v1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_remove(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 258
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    const-string v0, "ids"

    .line 259
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "deleteFiles"

    .line 260
    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-lez v3, :cond_9

    .line 264
    new-array v5, v3, [J

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_2

    .line 266
    invoke-virtual {v0, v6, v4}, Lorg/json/JSONArray;->optInt(II)I

    move-result v7

    if-ltz v7, :cond_1

    int-to-long v7, v7

    .line 268
    aput-wide v7, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 273
    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    invoke-direct {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;-><init>()V

    .line 274
    invoke-virtual {v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;->setFilterById([J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;

    .line 275
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v6, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->query(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 276
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-lez v6, :cond_6

    .line 278
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    const-string v0, "local_uri"

    .line 279
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 281
    new-array v6, v6, [Ljava/lang/String;

    .line 282
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v7

    if-nez v7, :cond_5

    .line 283
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 285
    aput-object v7, v6, v1

    .line 287
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_3

    .line 289
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    .line 291
    :cond_6
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->markRowDeleted([J)I

    .line 292
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v3, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->remove([J)I

    move-result v3

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v4, v3

    :goto_4
    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    .line 300
    array-length v2, v0

    :goto_5
    if-ge v1, v2, :cond_9

    aget-object v3, v0, v1

    .line 301
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 302
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jsmethod_remove] deleteFiles=true; path =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "file://"

    const-string v6, ""

    .line 303
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 304
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jsmethod_remove] deleteFiles=true; path ==========="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[jsmethod_remove]  dele == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 308
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->TAG:Ljava/lang/String;

    const-string v6, "[jsmethod_remove]  path exists"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 328
    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "number"

    .line 330
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    .line 332
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_6
    const/4 v1, 0x1

    .line 334
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_resume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 6
    .annotation runtime Lcom/uzmap/pkg/uzcore/annotation/UzJavascriptMethod;
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->checkInstance()V

    const/4 v0, -0x1

    const-string v1, "id"

    .line 361
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    new-array v0, v3, [J

    int-to-long v4, v1

    aput-wide v4, v0, v2

    .line 365
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadManager:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->resume([J)I

    move-result v0

    .line 367
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-ltz v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    :try_start_0
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, "\u8be5id\u5bf9\u5e94\u7684\u4e0b\u8f7d\u4e0d\u5b58\u5728"

    :goto_0
    const-string v4, "status"

    .line 371
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "msg"

    .line 372
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 374
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 376
    :goto_1
    invoke-virtual {p1, v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->onPause()V

    .line 511
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->removeViewFromCurWindow(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/UzDownloadManager;->mDownloadListView:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    return-void
.end method
