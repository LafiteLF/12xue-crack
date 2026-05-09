.class final Lcom/deepe/b/f/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0}, Lcom/deepe/c/i/h;->b(Ljava/io/InputStream;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/b;->a([B)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_0
    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/FileOutputStream;)Z

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "config.xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "key.xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/b/f/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/deepe/b/f/b;->b(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/b/f/c;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/b/f/c;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/deepe/b/f/a;->b(Ljava/util/zip/ZipFile;)J

    move-result-wide v2

    if-eqz p2, :cond_2

    invoke-virtual {p2, v2, v3}, Lcom/deepe/b/f/c;->a(J)V

    :cond_2
    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v6, 0x2000

    new-array v6, v6, [B

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_1
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p0, 0x1

    if-eqz p2, :cond_4

    const-string p1, "success"

    invoke-virtual {p2, p0, p1}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    :cond_4
    return p0

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "widget/"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_7
    invoke-static {v8}, Lcom/deepe/b/f/b;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/deepe/b/f/b;->a(Ljava/io/InputStream;Ljava/io/File;)V

    goto :goto_3

    :cond_8
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p0, v1, v8, v6}, Lcom/deepe/c/i/h;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/OutputStream;[B)V

    invoke-static {v8}, Lcom/deepe/c/i/h;->a(Ljava/io/FileOutputStream;)Z

    :goto_3
    invoke-static {v8}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    if-eqz p2, :cond_3

    long-to-float v1, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v1, v8

    long-to-float v8, v2

    div-float/2addr v1, v8

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v1, v8

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(F)D

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Lcom/deepe/b/f/c;->a(D)V

    goto/16 :goto_1

    :cond_9
    :goto_4
    return v1
.end method
