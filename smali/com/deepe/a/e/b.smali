.class public Lcom/deepe/a/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/e/a;


# static fields
.field private static e:Lcom/deepe/a/e/b;


# instance fields
.field private a:Lcom/deepe/a/e/c;

.field private b:Landroid/content/Context;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/a/e/a;",
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

    iput-object v0, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/a/e/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/deepe/a/e/b;
    .locals 1

    sget-object v0, Lcom/deepe/a/e/b;->e:Lcom/deepe/a/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/e/b;

    invoke-direct {v0, p0}, Lcom/deepe/a/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/deepe/a/e/b;->e:Lcom/deepe/a/e/b;

    :cond_0
    sget-object p0, Lcom/deepe/a/e/b;->e:Lcom/deepe/a/e/b;

    return-object p0
.end method

.method public static a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;FLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepe/a/e/a/a;->a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;FLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public static final a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/deepe/a/e/a/a;->a(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/deepe/a/e/b$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/a/e/b$1;-><init>(Landroid/app/Activity;Z)V

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/e/b;->a:Lcom/deepe/a/e/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/a/e/c;

    iget-object v1, p0, Lcom/deepe/a/e/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/deepe/a/e/c;-><init>(Landroid/content/ContentResolver;Lcom/deepe/a/e/a;)V

    iput-object v0, p0, Lcom/deepe/a/e/b;->a:Lcom/deepe/a/e/c;

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/e/b;->a:Lcom/deepe/a/e/c;

    invoke-virtual {v0}, Lcom/deepe/a/e/c;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/e/b;->c:Z

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/e/b;->a:Lcom/deepe/a/e/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/e/c;->b()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/a/e/b;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/deepe/a/e/a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/a/e/b;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/deepe/a/e/b;->b()V

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

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/a/e/a;

    invoke-interface {v1, p1}, Lcom/deepe/a/e/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/e/b;->c:Z

    return v0
.end method

.method public final b(Lcom/deepe/a/e/a;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepe/a/e/b;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/deepe/a/e/b;->c()V

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
