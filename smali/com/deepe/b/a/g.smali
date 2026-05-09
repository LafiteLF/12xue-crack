.class Lcom/deepe/b/a/g;
.super Lcom/deepe/d/g;


# instance fields
.field private e:J

.field private f:J

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "app"

    invoke-direct {p0, v0}, Lcom/deepe/d/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/deepe/b/a/g;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/b/a/g;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/a/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/b/a/g;->e:J

    iget-wide v2, p0, Lcom/deepe/b/a/g;->f:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/b/a/g;->j()V

    const-string v0, "app"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->b(Ljava/lang/String;)V

    :cond_0
    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/b/a/g;->f:J

    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "finish"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/Object;)V

    const-string v0, "onFinish"

    invoke-virtual {p0, v0}, Lcom/deepe/b/a/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
