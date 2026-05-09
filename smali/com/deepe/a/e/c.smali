.class Lcom/deepe/a/e/c;
.super Landroid/database/ContentObserver;


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/deepe/a/e/a;

.field private d:Landroid/content/ContentResolver;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/deepe/a/e/c;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/a/e/c;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/deepe/a/e/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/deepe/a/e/c;->d:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/deepe/a/e/c;->c:Lcom/deepe/a/e/a;

    return-void
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/deepe/a/e/c;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/deepe/a/e/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/deepe/a/e/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lcom/deepe/a/e/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/deepe/a/e/c;->c:Lcom/deepe/a/e/a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/deepe/a/e/a;->a(Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screenshots/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/a/c;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/a/e/c;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/e/c;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/deepe/a/e/c;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v2, p0, Lcom/deepe/a/e/c;->f:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/e/c;->f:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/e/c;->d:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/a/e/c;->f:Z

    return-void
.end method

.method public declared-synchronized onChange(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object p1, Lcom/deepe/a/e/c;->a:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/deepe/a/e/c;->a(Landroid/net/Uri;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onChange(ZLandroid/net/Uri;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/deepe/a/e/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/deepe/a/e/c;->a(Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
