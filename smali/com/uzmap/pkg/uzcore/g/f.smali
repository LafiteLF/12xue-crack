.class public Lcom/uzmap/pkg/uzcore/g/f;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/uzmap/pkg/uzcore/g/f;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Lcom/uzmap/pkg/uzcore/g/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/g/f;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final a()Lcom/uzmap/pkg/uzcore/g/f;
    .locals 3

    sget-object v0, Lcom/uzmap/pkg/uzcore/g/f;->f:Lcom/uzmap/pkg/uzcore/g/f;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    new-instance v2, Lcom/uzmap/pkg/uzcore/g/f;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/g/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v2, Lcom/uzmap/pkg/uzcore/g/f;->f:Lcom/uzmap/pkg/uzcore/g/f;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "APP FileSystem not initialize!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    sget-object v0, Lcom/uzmap/pkg/uzcore/g/f;->f:Lcom/uzmap/pkg/uzcore/g/f;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/g/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->e:Ljava/lang/String;

    new-instance v0, Lcom/uzmap/pkg/uzcore/g/c;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g/f;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/uzmap/pkg/uzcore/g/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g/f;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "box"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g/f;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p2, 0x5

    const-string v0, "FileSystem getExternalCacheDir is null."

    invoke-static {p2, v0}, Lcom/deepe/d/a;->b(ILjava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/f;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/g/f;->c:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "datacache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long p1, p2, v4

    if-lez p1, :cond_0

    invoke-static {v0, p2, p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    invoke-static {v1, p2, p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    invoke-static {v2, p2, p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    invoke-static {v3, p2, p3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;J)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->delete(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g/c;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;)I
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->h:Lcom/uzmap/pkg/uzcore/g/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/g/c;->a(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    return v0

    :cond_2
    const-string v0, "/storage/emulated/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/f;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->f(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final h(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    add-long/2addr v0, v2

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/g/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/deepe/c/i/h;->b(Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
