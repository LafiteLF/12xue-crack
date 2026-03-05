.class public final Lcom/deepe/b/f/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/b/f/a$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:J

.field private static c:Lcom/deepe/b/f/a;


# instance fields
.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/f/a;->d:Landroid/content/Context;

    return-void
.end method

.method static a(Ljava/util/zip/ZipFile;)J
    .locals 5

    invoke-static {}, Lcom/deepe/d/f;->a()J

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "assets/widget/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/deepe/d/f;->a()J

    return-wide v0
.end method

.method static a(DLcom/deepe/b/f/c;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->b()J

    move-result-wide v0

    sget-wide v2, Lcom/deepe/b/f/a;->b:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x20

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    sput-wide v0, Lcom/deepe/b/f/a;->b:J

    invoke-virtual {p2, p0, p1}, Lcom/deepe/b/f/c;->a(D)V

    return-void
.end method

.method static a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/deepe/b/f/a;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/deepe/b/f/a;->c:Lcom/deepe/b/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/b/f/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/deepe/b/f/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/b/f/a;->c:Lcom/deepe/b/f/a;

    :cond_0
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Lcom/deepe/b/f/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v1, 0x0

    invoke-static {v0}, Lcom/deepe/b/f/a;->a(Ljava/util/zip/ZipFile;)J

    move-result-wide v3

    if-eqz p2, :cond_2

    invoke-virtual {p2, v3, v4}, Lcom/deepe/b/f/c;->a(J)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    const/16 v5, 0x2000

    new-array v5, v5, [B

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    return-void

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "assets/widget/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v9

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v6, v7, v5}, Lcom/deepe/c/i/h;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/OutputStream;[B)V

    invoke-static {v7}, Lcom/deepe/c/i/h;->a(Ljava/io/FileOutputStream;)Z

    invoke-static {v7}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    add-long/2addr v1, v9

    invoke-static {v1, v2, v3, v4}, Lcom/deepe/c/i/e;->a(JJ)D

    move-result-wide v6

    invoke-static {v6, v7, p2}, Lcom/deepe/b/f/a;->a(DLcom/deepe/b/f/c;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;II)V
    .locals 3

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "inc_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-lez p1, :cond_0

    const-string v1, "version_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_0
    if-ltz p2, :cond_1

    const-string p1, "sub_version"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "version_name"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Lcom/deepe/b/f/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/b/f/a;->d(Ljava/lang/String;Lcom/deepe/b/f/c;)V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/b/f/a;->b(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/deepe/b/f/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepe/b/f/a;->b()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static a(ILjava/lang/String;Lcom/deepe/b/f/c;)Z
    .locals 2

    invoke-static {}, Lcom/deepe/b/f/a;->b()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/deepe/b/f/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/deepe/b/f/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/deepe/b/f/c;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/deepe/b/f/a;->a(I)V

    :cond_2
    return v1
.end method

.method public static a(Lcom/deepe/b/f/c;)Z
    .locals 1

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/p;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/deepe/b/f/a;->c(Lcom/deepe/b/f/c;)Z

    move-result p0

    return p0
.end method

.method public static b()I
    .locals 4

    invoke-static {}, Lcom/deepe/b/f/a;->i()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "inc_package"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sub_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static b(Ljava/util/zip/ZipFile;)J
    .locals 4

    invoke-static {}, Lcom/deepe/d/f;->a()J

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/deepe/d/f;->a()J

    return-wide v0
.end method

.method static synthetic b(Ljava/lang/String;Lcom/deepe/b/f/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/b/f/a;->c(Ljava/lang/String;Lcom/deepe/b/f/c;)V

    return-void
.end method

.method private static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepe/b/f/a;->a:Z

    return-void
.end method

.method public static b(Lcom/deepe/b/f/c;)Z
    .locals 0

    invoke-static {p0}, Lcom/deepe/b/f/a;->d(Lcom/deepe/b/f/c;)Z

    move-result p0

    return p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/b/f/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Lcom/deepe/b/f/c;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/deepe/b/f/a;->j()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, p1}, Lcom/deepe/b/f/a;->a(Ljava/io/File;Ljava/io/File;Lcom/deepe/b/f/c;)V

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    const-string v1, "success"

    invoke-virtual {p1, p0, v1}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/deepe/d/f;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/deepe/b/f/a;->b(Z)V

    return-void

    :goto_1
    invoke-static {v0}, Lcom/deepe/b/f/a;->b(Z)V

    throw p0
.end method

.method private static c(Lcom/deepe/b/f/c;)Z
    .locals 2

    invoke-static {}, Lcom/deepe/b/f/a;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/b/f/a$a;

    invoke-direct {v0, p0}, Lcom/deepe/b/f/a$a;-><init>(Lcom/deepe/b/f/c;)V

    invoke-static {v0}, Lcom/deepe/b/f/a;->e(Lcom/deepe/b/f/c;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/deepe/b/f/a;->b()I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_privacy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/lang/String;Lcom/deepe/b/f/c;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/b/f/a;->j()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v3, v4}, Lcom/deepe/b/f/c;->a(J)V

    :cond_2
    cmp-long p0, v3, v1

    if-lez p0, :cond_3

    new-instance v1, Lcom/deepe/b/f/a$3;

    invoke-direct {v1, v3, v4, p1}, Lcom/deepe/b/f/a$3;-><init>(JLcom/deepe/b/f/c;)V

    invoke-static {v0, v1}, Lcom/deepe/c/i/h;->a(Ljava/io/File;Lcom/deepe/c/i/h$a;)V

    :cond_3
    if-lez p0, :cond_4

    invoke-static {}, Lcom/deepe/b/f/a;->h()V

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    const-string v0, "success"

    invoke-virtual {p1, p0, v0}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/deepe/d/f;->a()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/deepe/b/f/a;->h()V

    :goto_1
    return-void
.end method

.method private static d(Lcom/deepe/b/f/c;)Z
    .locals 4

    invoke-static {}, Lcom/deepe/b/f/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/b/f/a;->b()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/deepe/b/f/c;->a(J)V

    const-string v0, "success"

    invoke-virtual {p0, v1, v0}, Lcom/deepe/b/f/c;->a(ZLjava/lang/String;)V

    return v1

    :cond_1
    invoke-static {v1}, Lcom/deepe/b/f/a;->b(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/deepe/b/f/a$1;

    invoke-direct {v2, p0}, Lcom/deepe/b/f/a$1;-><init>(Lcom/deepe/b/f/c;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Deepe-doPackageRecover-"

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Lcom/deepe/b/f/c;)V
    .locals 3

    invoke-static {}, Lcom/deepe/b/f/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/deepe/b/f/a;->b(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/deepe/b/f/a$2;

    invoke-direct {v1, p0}, Lcom/deepe/b/f/a$2;-><init>(Lcom/deepe/b/f/c;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Deepe-doPackageInstalleAsyn-"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/b/f/a;->a:Z

    return v0
.end method

.method static f()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/deepe/b/f/a;->c:Lcom/deepe/b/f/a;

    iget-object v0, v0, Lcom/deepe/b/f/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method static g()V
    .locals 3

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/z;->h()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/deepe/b/f/a;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static h()V
    .locals 3

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v0

    const-string v1, "inc_package"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "version_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "version_code"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "sub_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static i()Z
    .locals 6

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "inc_package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "version_name"

    const-string v3, "0.0.0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/z;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "version_code"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v4

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/z;->h()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    if-le v4, v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v5

    :cond_3
    return v1
.end method

.method private static j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/deepe/b/f/a;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "widget"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
