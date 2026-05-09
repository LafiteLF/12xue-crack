.class public abstract Lcom/deepe/c/l/a;
.super Lcom/deepe/c/l/c;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private e:J

.field private f:Z

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/deepe/c/l/c;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/c/l/a;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/l/a;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/a;->g:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/l/a;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/l/a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private a()V
    .locals 8

    invoke-direct {p0}, Lcom/deepe/c/l/a;->b()V

    new-instance v0, Lcom/deepe/c/l/i/d;

    const-string v1, "Deepe-Websocket-ConnectionLostChecker"

    invoke-direct {v0, v1}, Lcom/deepe/c/l/i/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/deepe/c/l/a$1;

    invoke-direct {v2, p0}, Lcom/deepe/c/l/a$1;-><init>(Lcom/deepe/c/l/a;)V

    iget-object v1, p0, Lcom/deepe/c/l/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v5, p0, Lcom/deepe/c/l/a;->e:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v3, v5

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/a;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/l/a;Lcom/deepe/c/l/b;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/l/a;->a(Lcom/deepe/c/l/b;J)V

    return-void
.end method

.method private a(Lcom/deepe/c/l/b;J)V
    .locals 2

    instance-of v0, p1, Lcom/deepe/c/l/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/deepe/c/l/d;

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->g()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-gez p2, :cond_1

    const/16 p2, 0x3ee

    const-string p3, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    invoke-virtual {p1, p2, p3}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->c()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/deepe/c/l/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/c/l/a;->e:J

    return-wide v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/l/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v1, p0, Lcom/deepe/c/l/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/l/a;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Lcom/deepe/c/l/a;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/a;->a:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/a;->b:Z

    return-void
.end method

.method protected d()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/l/a;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/l/a;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepe/c/l/a;->f:Z

    invoke-direct {p0}, Lcom/deepe/c/l/a;->b()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected e()V
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/l/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/deepe/c/l/a;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepe/c/l/a;->f:Z

    invoke-direct {p0}, Lcom/deepe/c/l/a;->a()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract f()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/deepe/c/l/b;",
            ">;"
        }
    .end annotation
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/a;->a:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/a;->b:Z

    return v0
.end method
