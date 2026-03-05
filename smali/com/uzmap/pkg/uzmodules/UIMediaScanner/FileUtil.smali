.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRealPath(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;
    .locals 5

    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "widget"

    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 24
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ".+widget"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil;->isAssertFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    new-instance p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p0

    .line 29
    :cond_1
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "file://"

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 31
    new-instance p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;

    invoke-direct {p1, p0, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p1

    .line 35
    :cond_2
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 37
    new-instance p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;

    invoke-direct {p1, p0, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileUtil$FileInfo;-><init>(Ljava/lang/String;Z)V

    return-object p1

    :cond_3
    return-object v1
.end method

.method public static isAssertFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 46
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

    .line 49
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
