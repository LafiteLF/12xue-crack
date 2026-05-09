.class final Lcom/deepe/a/d/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/d/e$a;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/a/d/e$a;
    .locals 6

    invoke-static {p1}, Lcom/deepe/c/i/h;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/deepe/c/i/h;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    new-instance v0, Lcom/deepe/a/d/e$a;

    invoke-direct {v0}, Lcom/deepe/a/d/e$a;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iput-object p1, v0, Lcom/deepe/a/d/e$a;->a:Ljava/io/FileDescriptor;

    iput-wide v2, v0, Lcom/deepe/a/d/e$a;->b:J

    iput-wide v4, v0, Lcom/deepe/a/d/e$a;->c:J

    iput-object p0, v0, Lcom/deepe/a/d/e$a;->d:Ljava/io/Closeable;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_0
    const-string p0, "file://"

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_2
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    int-to-long v2, v0

    new-instance v0, Lcom/deepe/a/d/e$a;

    invoke-direct {v0}, Lcom/deepe/a/d/e$a;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iput-object p0, v0, Lcom/deepe/a/d/e$a;->a:Ljava/io/FileDescriptor;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/deepe/a/d/e$a;->b:J

    iput-wide v2, v0, Lcom/deepe/a/d/e$a;->c:J

    iput-object p1, v0, Lcom/deepe/a/d/e$a;->d:Ljava/io/Closeable;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    move-object v0, v1

    :goto_3
    return-object v0
.end method
