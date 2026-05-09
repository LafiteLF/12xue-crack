.class public Lcom/deepe/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/deepe/a/b/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/a/b/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/a/b/a;
    .locals 1

    sget-object v0, Lcom/deepe/a/b/a;->a:Lcom/deepe/a/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/a;

    invoke-direct {v0, p0}, Lcom/deepe/a/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/a/b/a;->a:Lcom/deepe/a/b/a;

    :cond_0
    sget-object p0, Lcom/deepe/a/b/a;->a:Lcom/deepe/a/b/a;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    move v0, v2

    :cond_1
    new-instance v1, Lcom/deepe/a/b/b;

    invoke-direct {v1}, Lcom/deepe/a/b/b;-><init>()V

    iput p2, v1, Lcom/deepe/a/b/b;->a:I

    iput-boolean v0, v1, Lcom/deepe/a/b/b;->b:Z

    const-string p2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    monitor-exit p2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/a/b/g;

    invoke-interface {v2, p1, v1}, Lcom/deepe/a/b/g;->a(ZLcom/deepe/a/b/b;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/deepe/a/b/a;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/b/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/b/a;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/deepe/a/b/a$1;-><init>(Lcom/deepe/a/b/a;)V

    iput-object v0, p0, Lcom/deepe/a/b/a;->d:Landroid/content/BroadcastReceiver;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/a/b/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/deepe/a/b/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepe/a/b/a;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/a;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/deepe/a/b/a;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepe/a/b/a;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/a/b/g;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/a/b/a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/deepe/a/b/a;->b()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/b/a;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/b/a;->c:Z

    return v0
.end method

.method public b(Lcom/deepe/a/b/g;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepe/a/b/a;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/deepe/a/b/a;->c()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
