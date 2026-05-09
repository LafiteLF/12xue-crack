.class public Lcom/uzmap/pkg/openapi/mam/DataCollector;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized addEvent(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepe/b/a/a;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized appOnFinish()V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/a/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized appOnPause()V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/a/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized appOnResume()V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/a/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized pageOnFinish(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepe/b/a/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized pageOnPause(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepe/b/a/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final declared-synchronized pageOnStart(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/uzmap/pkg/openapi/mam/DataCollector;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/deepe/b/a/a;->a()Lcom/deepe/b/a/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepe/b/a/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
