.class public Lcom/deepe/a/b/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/b/e$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/deepe/a/b/e$a;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/a/b/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/deepe/a/b/e;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/b/e;Lcom/deepe/a/b/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/b/e;->a(Lcom/deepe/a/b/f;)V

    return-void
.end method

.method private a(Lcom/deepe/a/b/f;)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/a/b/h;

    invoke-interface {v2, p1}, Lcom/deepe/a/b/h;->a(Lcom/deepe/a/b/f;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/e;->b:Lcom/deepe/a/b/e$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/deepe/a/b/e$a;-><init>(Lcom/deepe/a/b/e;Lcom/deepe/a/b/e$a;)V

    iput-object v0, p0, Lcom/deepe/a/b/e;->b:Lcom/deepe/a/b/e$a;

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/deepe/a/b/e;->b:Lcom/deepe/a/b/e$a;

    invoke-static {v0, v1}, Lcom/deepe/c/a/f;->a(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/deepe/a/b/e;->b:Lcom/deepe/a/b/e$a;

    invoke-static {v0, v1}, Lcom/deepe/c/a/f;->b(Landroid/content/Context;Lcom/deepe/c/a/f$a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/deepe/a/b/e;->c()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/deepe/a/b/h;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/a/b/e;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/deepe/a/b/e;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
