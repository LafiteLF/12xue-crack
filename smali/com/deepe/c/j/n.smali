.class public Lcom/deepe/c/j/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/j/n$a;,
        Lcom/deepe/c/j/n$b;
    }
.end annotation


# static fields
.field private static final f:I

.field private static final g:I

.field private static final h:I


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/deepe/c/j/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/deepe/c/j/l<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/deepe/c/j/a;

.field private final j:Lcom/deepe/c/j/i;

.field private final k:Lcom/deepe/c/j/p;

.field private l:[Lcom/deepe/c/j/j;

.field private m:Lcom/deepe/c/j/b;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/j/n$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/deepe/c/k/f;->b()I

    move-result v0

    sput v0, Lcom/deepe/c/j/n;->f:I

    sput v0, Lcom/deepe/c/j/n;->g:I

    sput v0, Lcom/deepe/c/j/n;->h:I

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;)V
    .locals 1

    sget v0, Lcom/deepe/c/j/n;->h:I

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/j/n;-><init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;I)V
    .locals 3

    new-instance v0, Lcom/deepe/c/j/h;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/deepe/c/j/h;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/deepe/c/j/n;-><init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;ILcom/deepe/c/j/p;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/j/a;Lcom/deepe/c/j/i;ILcom/deepe/c/j/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/n;->n:Ljava/util/List;

    iput-object p1, p0, Lcom/deepe/c/j/n;->i:Lcom/deepe/c/j/a;

    iput-object p2, p0, Lcom/deepe/c/j/n;->j:Lcom/deepe/c/j/i;

    new-array p1, p3, [Lcom/deepe/c/j/j;

    iput-object p1, p0, Lcom/deepe/c/j/n;->l:[Lcom/deepe/c/j/j;

    iput-object p4, p0, Lcom/deepe/c/j/n;->k:Lcom/deepe/c/j/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/l;

    invoke-virtual {v3}, Lcom/deepe/c/j/l;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newRequest Cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 6

    invoke-virtual {p0}, Lcom/deepe/c/j/n;->b()V

    new-instance v0, Lcom/deepe/c/j/b;

    iget-object v1, p0, Lcom/deepe/c/j/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/deepe/c/j/n;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/deepe/c/j/n;->i:Lcom/deepe/c/j/a;

    iget-object v4, p0, Lcom/deepe/c/j/n;->k:Lcom/deepe/c/j/p;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/deepe/c/j/b;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/deepe/c/j/a;Lcom/deepe/c/j/p;)V

    iput-object v0, p0, Lcom/deepe/c/j/n;->m:Lcom/deepe/c/j/b;

    invoke-virtual {v0}, Lcom/deepe/c/j/b;->start()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->l:[Lcom/deepe/c/j/j;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/deepe/c/j/j;

    iget-object v2, p0, Lcom/deepe/c/j/n;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v3, p0, Lcom/deepe/c/j/n;->j:Lcom/deepe/c/j/i;

    iget-object v4, p0, Lcom/deepe/c/j/n;->i:Lcom/deepe/c/j/a;

    iget-object v5, p0, Lcom/deepe/c/j/n;->k:Lcom/deepe/c/j/p;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/deepe/c/j/j;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/deepe/c/j/i;Lcom/deepe/c/j/a;Lcom/deepe/c/j/p;)V

    iget-object v2, p0, Lcom/deepe/c/j/n;->l:[Lcom/deepe/c/j/j;

    aput-object v1, v2, v0

    invoke-virtual {v1}, Lcom/deepe/c/j/j;->start()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/deepe/c/j/n$a;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/j/l;

    invoke-interface {p1, v2}, Lcom/deepe/c/j/n$a;->a(Lcom/deepe/c/j/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/deepe/c/j/l;->cancel()V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/deepe/c/j/n$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/deepe/c/j/n$b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/n;->n:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->n:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/deepe/c/j/n$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/j/n$1;-><init>(Lcom/deepe/c/j/n;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/n;->a(Lcom/deepe/c/j/n$a;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/deepe/c/j/l<",
            "TT;>;)",
            "Lcom/deepe/c/j/l<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/deepe/c/j/l;->setRequestQueue(Lcom/deepe/c/j/n;)Lcom/deepe/c/j/l;

    iget-object v0, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Lcom/deepe/c/j/n;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/l;->setSequence(I)Lcom/deepe/c/j/l;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->shouldCache()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/n;->e:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/deepe/c/j/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/j/n;->m:Lcom/deepe/c/j/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/b;->a()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->l:[Lcom/deepe/c/j/j;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    aget-object v2, v1, v0

    if-eqz v2, :cond_2

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/deepe/c/j/j;->a()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method c(Lcom/deepe/c/j/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/deepe/c/j/l<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/j/n;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/deepe/c/j/n;->n:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/deepe/c/j/n;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/deepe/c/j/n;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Queue;

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/j/n;->d:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/j/n$b;

    invoke-interface {v2, p1}, Lcom/deepe/c/j/n$b;->onRequestFinished(Lcom/deepe/c/j/l;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public d()Lcom/deepe/c/j/a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/n;->i:Lcom/deepe/c/j/a;

    return-object v0
.end method
