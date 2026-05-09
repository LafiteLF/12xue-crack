.class public Lcom/dbc/docreader/UzDocReader;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzDocReader.java"


# static fields
.field public static final FILE_NOT_EXIST:I = 0x1

.field public static final FORMAT_DISMATCH:I = 0x2

.field public static final OPEN_SUCCESSED:I = 0x0

.field public static final UNKNOW_ERROR:I = -0x1


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 100
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [B

    .line 103
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v1, p2, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 109
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 113
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 115
    throw p1

    .line 113
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p2

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz p1, :cond_4

    .line 109
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 115
    :cond_3
    throw p1

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 116
    :cond_5
    throw p2
.end method


# virtual methods
.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZI)V
    .locals 3

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "status"

    .line 81
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 82
    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 84
    invoke-virtual {p3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, v0, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_1

    .line 89
    :cond_0
    invoke-virtual {p1, v0, v1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_1
    return-void
.end method

.method public isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 30
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

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    const-string v0, "file://"

    const-string v1, "path"

    .line 48
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/dbc/docreader/UzDocReader;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android_asset"

    .line 52
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const-string v0, "/"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    .line 55
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 54
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/dbc/docreader/UzDocReader;->mContext:Lcom/uzmap/pkg/uzcore/UZAppActivity;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzcore/UZAppActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 58
    invoke-direct {p0, v0, v4}, Lcom/dbc/docreader/UzDocReader;->copy(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 60
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0, v1, v0}, Lcom/dbc/docreader/UzDocReader;->substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0, p1, v3, v5}, Lcom/dbc/docreader/UzDocReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZI)V

    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Lcom/dbc/docreader/UzDocReader;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->viewFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1, v5, v2}, Lcom/dbc/docreader/UzDocReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/dbc/docreader/UzDocReader;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZI)V

    :goto_1
    return-void
.end method

.method public substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 34
    invoke-virtual {p0, p1}, Lcom/dbc/docreader/UzDocReader;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, ""

    if-nez p2, :cond_1

    return-object v0

    .line 40
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 44
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
