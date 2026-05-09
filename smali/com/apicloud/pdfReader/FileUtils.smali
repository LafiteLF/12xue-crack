.class public Lcom/apicloud/pdfReader/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/pdfReader/FileUtils$FileInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 21
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p1, 0x400

    :try_start_1
    new-array p1, p1, [B

    .line 24
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, p1, v2, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 30
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 36
    throw p0

    .line 34
    :cond_2
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_1
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception p1

    :goto_2
    if-eqz p0, :cond_4

    .line 30
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p0

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 36
    :cond_3
    throw p0

    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 37
    :cond_5
    throw p1
.end method

.method public static copyToSdcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 91
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/apicloud/pdfReader/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getRealPath(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)Lcom/apicloud/pdfReader/FileUtils$FileInfo;
    .locals 5

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "widget"

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 46
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".+widget"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {p0, v0}, Lcom/apicloud/pdfReader/FileUtils;->isAssertFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    new-instance p0, Lcom/apicloud/pdfReader/FileUtils$FileInfo;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/apicloud/pdfReader/FileUtils$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "file://"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 52
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 53
    new-instance p1, Lcom/apicloud/pdfReader/FileUtils$FileInfo;

    invoke-direct {p1, p0, v3}, Lcom/apicloud/pdfReader/FileUtils$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 57
    :cond_2
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 59
    new-instance p1, Lcom/apicloud/pdfReader/FileUtils$FileInfo;

    invoke-direct {p1, p0, v3}, Lcom/apicloud/pdfReader/FileUtils$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static isAssertFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
