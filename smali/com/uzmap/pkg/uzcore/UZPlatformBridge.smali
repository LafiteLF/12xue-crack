.class public Lcom/uzmap/pkg/uzcore/UZPlatformBridge;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;


# instance fields
.field private a:Lcom/deepe/f/a;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/uzmap/pkg/uzcore/ac;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c:Landroid/content/Context;

    new-instance p1, Lcom/deepe/c/i/v;

    invoke-direct {p1}, Lcom/deepe/c/i/v;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/UZPlatformBridge;
    .locals 2

    const-class v0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-nez v1, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :cond_0
    sget-object p1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private e()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "UZMAP.DOWNLOAD.COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->e()Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c:Landroid/content/Context;

    sget-object v2, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-static {v1, v2, v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/uzmap/pkg/uzcore/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->e:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->e:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->e()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c:Landroid/content/Context;

    sget-object v1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-static {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->c:Landroid/content/Context;

    sget-object v1, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->f:Lcom/uzmap/pkg/uzcore/UZPlatformBridge;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/uzmap/pkg/uzcore/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a:Lcom/deepe/f/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a:Lcom/deepe/f/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a:Lcom/deepe/f/a;

    invoke-virtual {v0}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->getMobileOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "none"

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepe/f/a;->d()Lcom/deepe/f/a;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a:Lcom/deepe/f/a;

    if-eq p2, p1, :cond_5

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->a:Lcom/deepe/f/a;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/ac;

    invoke-virtual {p1}, Lcom/deepe/f/a;->c()Z

    move-result v1

    invoke-virtual {p1}, Lcom/deepe/f/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/ac;->onNetworkChanged(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "UZMAP.DOWNLOAD.COMPLETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/ac;

    invoke-interface {v0, p2}, Lcom/uzmap/pkg/uzcore/ac;->onDownloadComplete(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/UZPlatformBridge;->d:Lcom/deepe/c/i/v;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/ac;

    invoke-interface {v0, p2}, Lcom/uzmap/pkg/uzcore/ac;->onHomeKeyPress(Landroid/content/Intent;)V

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method
