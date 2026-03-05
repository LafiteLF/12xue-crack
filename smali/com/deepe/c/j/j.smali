.class public Lcom/deepe/c/j/j;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/deepe/c/j/i;

.field private final c:Lcom/deepe/c/j/a;

.field private final d:Lcom/deepe/c/j/p;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/deepe/c/j/i;Lcom/deepe/c/j/a;Lcom/deepe/c/j/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;",
            "Lcom/deepe/c/j/i;",
            "Lcom/deepe/c/j/a;",
            "Lcom/deepe/c/j/p;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-Ajax-Dispatcher-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/j/j;->e:Z

    iput-object p1, p0, Lcom/deepe/c/j/j;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/deepe/c/j/j;->b:Lcom/deepe/c/j/i;

    iput-object p3, p0, Lcom/deepe/c/j/j;->c:Lcom/deepe/c/j/a;

    iput-object p4, p0, Lcom/deepe/c/j/j;->d:Lcom/deepe/c/j/p;

    return-void
.end method

.method private a(Lcom/deepe/c/j/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)V"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/j/r;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/deepe/c/j/l;->parseNetworkError(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/r;

    move-result-object p2

    iget-object v0, p0, Lcom/deepe/c/j/j;->d:Lcom/deepe/c/j/p;

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/j/p;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/j;->e:Z

    invoke-virtual {p0}, Lcom/deepe/c/j/j;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/deepe/c/j/j;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/j/l;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "network-queue-take"

    invoke-virtual {v2, v3}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/deepe/c/j/l;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "network-discard-cancelled"

    :goto_1
    invoke-virtual {v2, v3}, Lcom/deepe/c/j/l;->finish(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/deepe/c/j/j;->a(Lcom/deepe/c/j/l;)V

    iget-object v3, p0, Lcom/deepe/c/j/j;->b:Lcom/deepe/c/j/i;

    invoke-interface {v3, v2}, Lcom/deepe/c/j/i;->a(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/k;

    move-result-object v3

    const-string v4, "network-http-complete"

    invoke-virtual {v2, v4}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/deepe/c/j/k;->d:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/deepe/c/j/l;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, "not-modified"

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/deepe/c/j/l;->parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;

    move-result-object v3

    const-string v4, "network-parse-complete"

    invoke-virtual {v2, v4}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/deepe/c/j/l;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/deepe/c/j/o;->b:Lcom/deepe/c/j/a$a;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/deepe/c/j/j;->c:Lcom/deepe/c/j/a;

    invoke-virtual {v2}, Lcom/deepe/c/j/l;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/deepe/c/j/o;->b:Lcom/deepe/c/j/a$a;

    invoke-interface {v4, v5, v6}, Lcom/deepe/c/j/a;->a(Ljava/lang/String;Lcom/deepe/c/j/a$a;)V

    const-string v4, "network-cache-written"

    invoke-virtual {v2, v4}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lcom/deepe/c/j/l;->markDelivered()V

    iget-object v4, p0, Lcom/deepe/c/j/j;->d:Lcom/deepe/c/j/p;

    invoke-interface {v4, v2, v3}, Lcom/deepe/c/j/p;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;)V
    :try_end_1
    .catch Lcom/deepe/c/j/r; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "Unhandled exception %s"

    invoke-static {v3, v5, v4}, Lcom/deepe/c/j/s;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Lcom/deepe/c/j/r;

    invoke-direct {v4, v3}, Lcom/deepe/c/j/r;-><init>(Ljava/lang/Throwable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/deepe/c/j/r;->a(J)V

    iget-object v0, p0, Lcom/deepe/c/j/j;->d:Lcom/deepe/c/j/p;

    invoke-interface {v0, v2, v4}, Lcom/deepe/c/j/p;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/deepe/c/j/r;->a(J)V

    invoke-direct {p0, v2, v3}, Lcom/deepe/c/j/j;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V

    goto/16 :goto_0

    :catch_2
    iget-boolean v0, p0, Lcom/deepe/c/j/j;->e:Z

    if-eqz v0, :cond_0

    return-void
.end method
