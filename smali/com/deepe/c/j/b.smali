.class public Lcom/deepe/c/j/b;
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

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/deepe/c/j/a;

.field private final d:Lcom/deepe/c/j/p;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/deepe/c/j/a;Lcom/deepe/c/j/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;",
            "Lcom/deepe/c/j/a;",
            "Lcom/deepe/c/j/p;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-Ajax-CacheDispatcher-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/j/b;->e:Z

    iput-object p1, p0, Lcom/deepe/c/j/b;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/deepe/c/j/b;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/deepe/c/j/b;->c:Lcom/deepe/c/j/a;

    iput-object p4, p0, Lcom/deepe/c/j/b;->d:Lcom/deepe/c/j/p;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/j/b;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/j/b;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/b;->e:Z

    invoke-virtual {p0}, Lcom/deepe/c/j/b;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "start new dispatcher"

    invoke-static {v1, v0}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/deepe/c/j/b;->c:Lcom/deepe/c/j/a;

    invoke-interface {v0}, Lcom/deepe/c/j/a;->a()V

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/j/b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/j/l;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/j/l;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cache-discard-canceled"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->finish(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/j/b;->c:Lcom/deepe/c/j/a;

    invoke-virtual {v0}, Lcom/deepe/c/j/l;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/deepe/c/j/a;->a(Ljava/lang/String;)Lcom/deepe/c/j/a$a;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/deepe/c/j/b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/deepe/c/j/a$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cache-hit-expired"

    invoke-virtual {v0, v2}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->setCacheEntry(Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/l;

    goto :goto_1

    :cond_3
    const-string v2, "cache-hit"

    invoke-virtual {v0, v2}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    new-instance v2, Lcom/deepe/c/j/k;

    iget-object v3, v1, Lcom/deepe/c/j/a$a;->a:[B

    iget-object v4, v1, Lcom/deepe/c/j/a$a;->g:Ljava/util/Map;

    invoke-direct {v2, v3, v4}, Lcom/deepe/c/j/k;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/deepe/c/j/l;->parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;

    move-result-object v2

    const-string v3, "cache-hit-parsed"

    invoke-virtual {v0, v3}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepe/c/j/a$a;->b()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v1, p0, Lcom/deepe/c/j/b;->d:Lcom/deepe/c/j/p;

    invoke-interface {v1, v0, v2}, Lcom/deepe/c/j/p;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;)V

    goto :goto_0

    :cond_4
    const-string v3, "cache-hit-refresh-needed"

    invoke-virtual {v0, v3}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->setCacheEntry(Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/l;

    const/4 v1, 0x1

    iput-boolean v1, v2, Lcom/deepe/c/j/o;->d:Z

    iget-object v1, p0, Lcom/deepe/c/j/b;->d:Lcom/deepe/c/j/p;

    new-instance v3, Lcom/deepe/c/j/b$1;

    invoke-direct {v3, p0, v0}, Lcom/deepe/c/j/b$1;-><init>(Lcom/deepe/c/j/b;Lcom/deepe/c/j/l;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/deepe/c/j/p;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-boolean v0, p0, Lcom/deepe/c/j/b;->e:Z

    if-eqz v0, :cond_0

    return-void
.end method
