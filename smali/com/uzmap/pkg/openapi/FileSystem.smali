.class public final Lcom/uzmap/pkg/openapi/FileSystem;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getApploaderPath()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMediaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getPicturePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getRootPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/f;->a()Lcom/uzmap/pkg/uzcore/g/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/g/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzapp/DataProvider;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized isLocked()Z
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/FileSystem;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/f/a;->e()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
