.class public final Lcom/deepe/b/a/a;
.super Ljava/lang/Object;


# static fields
.field private static h:Lcom/deepe/b/a/a;


# instance fields
.field private a:Lcom/deepe/b/a/g;

.field private b:Lcom/deepe/b/a/b;

.field private c:Lcom/deepe/b/a/c;

.field private d:Lcom/deepe/b/a/f;

.field private e:Z

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/deepe/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/deepe/b/a/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/deepe/b/a/a;
    .locals 2

    sget-object v0, Lcom/deepe/b/a/a;->h:Lcom/deepe/b/a/a;

    if-nez v0, :cond_0

    const-string v0, "app3c"

    const-string v1, "AnalysisManager is not createInstance.."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/deepe/b/a/a;->h:Lcom/deepe/b/a/a;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;Lcom/deepe/b/a;)Lcom/deepe/b/a/a;
    .locals 2

    const-class v0, Lcom/deepe/b/a/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/deepe/b/a/a;->h:Lcom/deepe/b/a/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepe/b/a/a;

    invoke-direct {v1}, Lcom/deepe/b/a/a;-><init>()V

    sput-object v1, Lcom/deepe/b/a/a;->h:Lcom/deepe/b/a/a;

    invoke-direct {v1, p0, p1}, Lcom/deepe/b/a/a;->b(Landroid/content/Context;Lcom/deepe/b/a;)V

    :cond_0
    sget-object p0, Lcom/deepe/b/a/a;->h:Lcom/deepe/b/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/c;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    return-object p0
.end method

.method private a(Lcom/deepe/d/g;)V
    .locals 1

    const-string v0, "analysisPageImmediately ----------------------------------"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/b/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/deepe/b/a/a$2;-><init>(Lcom/deepe/b/a/a;Lcom/deepe/d/g;)V

    iget-object p1, p0, Lcom/deepe/b/a/a;->b:Lcom/deepe/b/a/b;

    invoke-virtual {p1, v0}, Lcom/deepe/b/a/b;->a(Lcom/deepe/b/a/e;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/b/a/a;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/deepe/b/a/a;)Lcom/deepe/b/a/g;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/deepe/b/a;)V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/a/a;->f:Ljava/util/Hashtable;

    new-instance v0, Lcom/deepe/b/a/g;

    invoke-direct {v0}, Lcom/deepe/b/a/g;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    new-instance v0, Lcom/deepe/b/a/b;

    invoke-direct {v0}, Lcom/deepe/b/a/b;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/a/a;->b:Lcom/deepe/b/a/b;

    new-instance v0, Lcom/deepe/b/a/c;

    invoke-direct {v0, p1}, Lcom/deepe/b/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    new-instance p1, Lcom/deepe/b/a/f;

    iget-object v0, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    invoke-direct {p1, v0, p2}, Lcom/deepe/b/a/f;-><init>(Lcom/deepe/b/a/c;Lcom/deepe/b/a;)V

    iput-object p1, p0, Lcom/deepe/b/a/a;->d:Lcom/deepe/b/a/f;

    new-instance p1, Lcom/deepe/b/a/d;

    invoke-direct {p1, p0}, Lcom/deepe/b/a/d;-><init>(Lcom/deepe/b/a/a;)V

    iput-object p1, p0, Lcom/deepe/b/a/a;->g:Lcom/deepe/b/a/d;

    return-void
.end method

.method private b(Z)V
    .locals 1

    const-string v0, "analysisAppImmediately ----------------------------------"

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    iget-object v0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    invoke-virtual {p1, v0}, Lcom/deepe/b/a/c;->a(Lcom/deepe/b/a/g;)V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/b/a/a$3;

    invoke-direct {p1, p0}, Lcom/deepe/b/a/a$3;-><init>(Lcom/deepe/b/a/a;)V

    iget-object v0, p0, Lcom/deepe/b/a/a;->b:Lcom/deepe/b/a/b;

    invoke-virtual {v0, p1}, Lcom/deepe/b/a/b;->a(Lcom/deepe/b/a/e;)V

    return-void
.end method

.method private final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/b/a/a;->e:Z

    return v0
.end method

.method private h()Z
    .locals 1

    invoke-static {}, Lcom/deepe/f/a;->f()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    invoke-virtual {p1}, Lcom/deepe/b/a/c;->g()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    invoke-virtual {p1}, Lcom/deepe/b/a/c;->h()V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/deepe/b/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/deepe/b/f;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    invoke-virtual {v0}, Lcom/deepe/b/a/g;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepe/b/a/a;->a(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    invoke-virtual {v0}, Lcom/deepe/b/a/g;->c()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepe/b/a/a;->b(Z)V

    invoke-virtual {p0}, Lcom/deepe/b/a/a;->e()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepe/b/a/a;->a(Z)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/a;->a:Lcom/deepe/b/a/g;

    invoke-virtual {v0}, Lcom/deepe/b/a/g;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepe/b/a/a;->b(Z)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/deepe/b/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepe/b/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "analysisReport >>>>>>> "

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/a/a;->d:Lcom/deepe/b/a/f;

    invoke-virtual {v0}, Lcom/deepe/b/a/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/a;->c:Lcom/deepe/b/a/c;

    invoke-virtual {v0}, Lcom/deepe/b/a/c;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
