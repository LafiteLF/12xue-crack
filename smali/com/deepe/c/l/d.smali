.class public Lcom/deepe/c/l/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/l/b;


# static fields
.field static final synthetic c:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/deepe/c/l/e;

.field private e:Ljava/nio/channels/SelectionKey;

.field private f:Ljava/nio/channels/ByteChannel;

.field private g:Z

.field private volatile h:Lcom/deepe/c/l/c/d;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/l/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/deepe/c/l/b/a;

.field private k:Lcom/deepe/c/l/c/e;

.field private l:Ljava/nio/ByteBuffer;

.field private m:Lcom/deepe/c/l/g/a;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/Integer;

.field private p:Ljava/lang/Boolean;

.field private q:Ljava/lang/String;

.field private r:J

.field private final s:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/deepe/c/l/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/deepe/c/l/d;->c:Z

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/l/e;Lcom/deepe/c/l/b/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/l/d;->g:Z

    sget-object v1, Lcom/deepe/c/l/c/d;->a:Lcom/deepe/c/l/c/d;

    iput-object v1, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    iput-object v1, p0, Lcom/deepe/c/l/d;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/deepe/c/l/d;->o:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/deepe/c/l/d;->p:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/deepe/c/l/d;->q:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/c/l/d;->r:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/d;->s:Ljava/lang/Object;

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v1, Lcom/deepe/c/l/c/e;->b:Lcom/deepe/c/l/c/e;

    if-eq v0, v1, :cond_2

    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/d;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/d;->b:Ljava/util/concurrent/BlockingQueue;

    iput-object p1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    sget-object p1, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    iput-object p1, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/deepe/c/l/b/a;->c()Lcom/deepe/c/l/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameters must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/l/g/f;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/d;->b:Lcom/deepe/c/l/c/d;

    iput-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    invoke-virtual {p0}, Lcom/deepe/c/l/d;->h()V

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/f;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 2

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d;->e(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/deepe/c/l/f/f;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/l/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d;->a(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/l/f/f;

    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v2, v1}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/f/f;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/h;

    invoke-direct {p1}, Lcom/deepe/c/l/d/h;-><init>()V

    throw p1
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/d;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/deepe/c/l/d;->e(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private b(I)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x194

    if-eq p1, v0, :cond_0

    const-string p1, "500 Internal Server Error"

    goto :goto_0

    :cond_0
    const-string p1, "404 WebSocket Upgrade Failure"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP/1.1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\nContent-Type: text/html\r\nServer: TooTallNate Java-WebSocket\r\nContent-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\r\n\r\n<html><head></head><body><h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</h1></body></html>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/l/i/c;->b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/deepe/c/l/d/c;)V
    .locals 2

    const/16 v0, 0x194

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d;->b(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/c/l/d;->e(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcom/deepe/c/l/d/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/deepe/c/l/d/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;)Z
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v3, Lcom/deepe/c/l/c/e;->b:Lcom/deepe/c/l/c/e;
    :try_end_0
    .catch Lcom/deepe/c/l/d/e; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/deepe/c/l/d/b; {:try_start_0 .. :try_end_0} :catch_5

    const/4 v4, 0x1

    const-string v5, "wrong http function"

    const/16 v6, 0x3ea

    if-ne v2, v3, :cond_9

    :try_start_1
    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/deepe/c/l/d;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    if-nez v2, :cond_3

    new-instance v2, Lcom/deepe/c/l/d/c;

    const-string v3, "no draft matches"

    invoke-direct {v2, v6, v3}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/deepe/c/l/d;->b(Lcom/deepe/c/l/d/c;)V

    :cond_3
    return v1

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/l/b/a;

    invoke-virtual {v3}, Lcom/deepe/c/l/b/a;->c()Lcom/deepe/c/l/b/a;

    move-result-object v3
    :try_end_1
    .catch Lcom/deepe/c/l/d/e; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/deepe/c/l/d/b; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v7, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    invoke-virtual {v3, v7}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/c/e;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Lcom/deepe/c/l/b/a;->d(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/g/f;

    move-result-object v7

    instance-of v8, v7, Lcom/deepe/c/l/g/a;

    if-nez v8, :cond_5

    new-instance v3, Lcom/deepe/c/l/d/c;

    invoke-direct {v3, v6, v5}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/deepe/c/l/d;->b(Lcom/deepe/c/l/d/c;)V

    return v1

    :cond_5
    check-cast v7, Lcom/deepe/c/l/g/a;

    invoke-virtual {v3, v7}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/c/b;

    move-result-object v8

    sget-object v9, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne v8, v9, :cond_2

    invoke-interface {v7}, Lcom/deepe/c/l/g/a;->a()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/deepe/c/l/d;->q:Ljava/lang/String;
    :try_end_2
    .catch Lcom/deepe/c/l/d/e; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/deepe/c/l/d/b; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v8, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v8, p0, v3, v7}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/b/a;Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/g/i;

    move-result-object v8
    :try_end_3
    .catch Lcom/deepe/c/l/d/c; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/deepe/c/l/d/e; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/deepe/c/l/d/b; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {v3, v7, v8}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/i;)Lcom/deepe/c/l/g/c;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/deepe/c/l/b/a;->b(Lcom/deepe/c/l/g/f;)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/deepe/c/l/d;->a(Ljava/util/List;)V

    iput-object v3, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-direct {p0, v7}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/g/f;)V

    return v4

    :catch_1
    move-exception v3

    iget-object v7, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v7, p0, v3}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    invoke-direct {p0, v3}, Lcom/deepe/c/l/d;->a(Ljava/lang/RuntimeException;)V

    return v1

    :catch_2
    move-exception v3

    invoke-direct {p0, v3}, Lcom/deepe/c/l/d;->b(Lcom/deepe/c/l/d/c;)V
    :try_end_4
    .catch Lcom/deepe/c/l/d/e; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/deepe/c/l/d/b; {:try_start_4 .. :try_end_4} :catch_5

    return v1

    :cond_6
    :try_start_5
    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v2, v0}, Lcom/deepe/c/l/b/a;->d(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/g/f;

    move-result-object v2

    instance-of v3, v2, Lcom/deepe/c/l/g/a;

    if-nez v3, :cond_7

    invoke-virtual {p0, v6, v5, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return v1

    :cond_7
    check-cast v2, Lcom/deepe/c/l/g/a;

    iget-object v3, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v3, v2}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/c/b;

    move-result-object v3

    sget-object v5, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne v3, v5, :cond_8

    invoke-direct {p0, v2}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/g/f;)V

    return v4

    :cond_8
    const-string v2, "the handshake did finally not match"

    invoke-virtual {p0, v6, v2}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;)V

    return v1

    :cond_9
    iget-object v2, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v3, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    iget-object v3, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    invoke-virtual {v2, v3}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/c/e;)V

    iget-object v2, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v2, v0}, Lcom/deepe/c/l/b/a;->d(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/g/f;

    move-result-object v2

    instance-of v3, v2, Lcom/deepe/c/l/g/h;

    if-nez v3, :cond_a

    invoke-virtual {p0, v6, v5, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return v1

    :cond_a
    check-cast v2, Lcom/deepe/c/l/g/h;

    iget-object v3, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    iget-object v5, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    invoke-virtual {v3, v5, v2}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/h;)Lcom/deepe/c/l/c/b;

    move-result-object v3

    sget-object v5, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;
    :try_end_5
    .catch Lcom/deepe/c/l/d/e; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/deepe/c/l/d/b; {:try_start_5 .. :try_end_5} :catch_5

    if-ne v3, v5, :cond_b

    :try_start_6
    iget-object v3, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    iget-object v5, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    invoke-interface {v3, p0, v5, v2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/h;)V
    :try_end_6
    .catch Lcom/deepe/c/l/d/c; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/deepe/c/l/d/e; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/deepe/c/l/d/b; {:try_start_6 .. :try_end_6} :catch_5

    :try_start_7
    invoke-direct {p0, v2}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/g/f;)V

    return v4

    :catch_3
    move-exception v2

    iget-object v3, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v3, p0, v2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return v1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Lcom/deepe/c/l/d/c;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/deepe/c/l/d/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    return v1

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "draft "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " refuses handshake"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;)V
    :try_end_7
    .catch Lcom/deepe/c/l/d/e; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/deepe/c/l/d/b; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1

    :catch_6
    move-exception v2

    :try_start_8
    invoke-virtual {p0, v2}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/d/c;)V
    :try_end_8
    .catch Lcom/deepe/c/l/d/b; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    :goto_1
    iget-object v3, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v2}, Lcom/deepe/c/l/d/b;->a()I

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v2, v0, 0x10

    :cond_c
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_d
    iget-object p1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_e
    :goto_2
    return v1
.end method

.method private d(Ljava/nio/ByteBuffer;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/b/a;->c(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/l/f/f;

    iget-object v1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v1, p0, v0}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    :try_end_0
    .catch Lcom/deepe/c/l/d/f; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/deepe/c/l/d/c; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v1, p0, v0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Got error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3f3

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    :goto_1
    throw p1

    :catch_4
    move-exception p1

    :goto_2
    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/d/c;)V

    goto :goto_3

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Lcom/deepe/c/l/d/f;->b()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    goto :goto_2

    :goto_3
    return-void
.end method

.method private e(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/d;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {p1, p0}, Lcom/deepe/c/l/e;->b(Lcom/deepe/c/l/b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->a:Lcom/deepe/c/l/c/d;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/deepe/c/l/d;->a(IZ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/deepe/c/l/d;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/l/d;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/l/d;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/l/d;->p:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v0}, Lcom/deepe/c/l/b/a;->b()Lcom/deepe/c/l/c/a;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/l/c/a;->a:Lcom/deepe/c/l/c/a;

    const/16 v3, 0x3e8

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/deepe/c/l/d;->a(IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v0}, Lcom/deepe/c/l/b/a;->b()Lcom/deepe/c/l/c/a;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/l/c/a;->b:Lcom/deepe/c/l/c/a;

    const/16 v4, 0x3ee

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v1, Lcom/deepe/c/l/c/e;->b:Lcom/deepe/c/l/c/e;

    if-ne v0, v1, :cond_2

    :cond_4
    invoke-virtual {p0, v4, v2}, Lcom/deepe/c/l/d;->a(IZ)V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized a(ILjava/lang/String;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->d:Lcom/deepe/c/l/c/d;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->b:Lcom/deepe/c/l/c/d;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_0

    sget-object p3, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    iput-object p3, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    invoke-virtual {p0, p1, p2, v2}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v1}, Lcom/deepe/c/l/b/a;->b()Lcom/deepe/c/l/c/a;

    move-result-object v1

    sget-object v3, Lcom/deepe/c/l/c/a;->a:Lcom/deepe/c/l/c/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v3, :cond_2

    if-nez p3, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v1, p0, p1, p2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/deepe/c/l/d/c; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v3, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v3, p0, v1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/l/d;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/deepe/c/l/f/b;

    invoke-direct {v1}, Lcom/deepe/c/l/f/b;-><init>()V

    invoke-virtual {v1, p2}, Lcom/deepe/c/l/f/b;->a(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/deepe/c/l/f/b;->a(I)V

    invoke-virtual {v1}, Lcom/deepe/c/l/f/b;->c()V

    invoke-virtual {p0, v1}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/f/f;)V
    :try_end_3
    .catch Lcom/deepe/c/l/d/c; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    iget-object v3, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v3, p0, v1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    const-string v1, "generated frame is invalid"

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, v2}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    :goto_2
    sget-object p1, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    iput-object p1, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a(IZ)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/d/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/deepe/c/l/d/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/deepe/c/l/d/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/f/f;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/deepe/c/l/g/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/b/a;->a(Lcom/deepe/c/l/g/b;)Lcom/deepe/c/l/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    invoke-interface {p1}, Lcom/deepe/c/l/g/b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/l/d;->q:Ljava/lang/String;

    sget-boolean v0, Lcom/deepe/c/l/d;->c:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    iget-object v0, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    invoke-interface {p1, p0, v0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/g/a;)V
    :try_end_0
    .catch Lcom/deepe/c/l/d/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    iget-object v0, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    invoke-virtual {p1, v0}, Lcom/deepe/c/l/b/a;->b(Lcom/deepe/c/l/g/f;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->a(Ljava/util/List;)V

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    new-instance v0, Lcom/deepe/c/l/d/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rejected because of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance p1, Lcom/deepe/c/l/d/e;

    const-string v0, "Handshake data rejected by client."

    invoke-direct {p1, v0}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    iget-object v1, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v2, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/l/b/a;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->a(Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->a:Lcom/deepe/c/l/c/d;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->b:Lcom/deepe/c/l/c/d;

    if-ne v0, v1, :cond_2

    :goto_0
    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->d(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->c(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/l/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/l/d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepe/c/l/d;->l:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a([B)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/l/d;->b(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;)Lcom/deepe/c/l/f/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/deepe/c/l/d;->a(Lcom/deepe/c/l/f/f;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "onPreparePing(WebSocket) returned null. PingFrame to sent can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized b(ILjava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->d:Lcom/deepe/c/l/c/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->b:Lcom/deepe/c/l/c/d;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    iput-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/l/d;->e:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/l/d;->e:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/l/d;->f:Ljava/nio/channels/ByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/deepe/c/l/d;->f:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Broken pipe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v1, p0, v0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;ILjava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    iget-object p2, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {p2, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    :goto_1
    iget-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {p1}, Lcom/deepe/c/l/b/a;->a()V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;

    sget-object p1, Lcom/deepe/c/l/c/d;->d:Lcom/deepe/c/l/c/d;

    iput-object p1, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    iget-object v1, p0, Lcom/deepe/c/l/d;->k:Lcom/deepe/c/l/c/e;

    sget-object v2, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/l/b/a;->a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/d;->a(Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot send \'null\' data to a WebSocketImpl."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized c(ILjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/deepe/c/l/d;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/d;->o:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/deepe/c/l/d;->n:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/l/d;->p:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/l/d;->g:Z

    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0}, Lcom/deepe/c/l/e;->b(Lcom/deepe/c/l/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/deepe/c/l/e;->b(Lcom/deepe/c/l/b;ILjava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    iget-object p2, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    invoke-interface {p2, p0, p1}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    :goto_0
    iget-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/l/d;->j:Lcom/deepe/c/l/b/a;

    invoke-virtual {p1}, Lcom/deepe/c/l/b/a;->a()V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/d;->m:Lcom/deepe/c/l/g/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->b:Lcom/deepe/c/l/c/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    sget-object v1, Lcom/deepe/c/l/c/d;->d:Lcom/deepe/c/l/c/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/deepe/c/l/c/d;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/d;->h:Lcom/deepe/c/l/c/d;

    return-object v0
.end method

.method g()J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/c/l/d;->r:J

    return-wide v0
.end method

.method public h()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/c/l/d;->r:J

    return-void
.end method

.method public i()Lcom/deepe/c/l/e;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/d;->d:Lcom/deepe/c/l/e;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
