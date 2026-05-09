.class Lcom/deepe/c/a/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/a/b;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/deepe/c/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/a/b$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/a/b;Lcom/deepe/c/a/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/a/b$a;-><init>(Lcom/deepe/c/a/b;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/a/b$a;->b:Z

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1, p2}, Lcom/deepe/c/a/b$c;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/a/b$a;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/a/b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/a/b$a;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->c(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1, p2}, Lcom/deepe/c/a/b$c;->b(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/a/b$a;->a:Lcom/deepe/c/a/b;

    invoke-static {v0}, Lcom/deepe/c/a/b;->a(Lcom/deepe/c/a/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/a/b$c;

    invoke-interface {v1, p1}, Lcom/deepe/c/a/b$c;->d(Landroid/app/Activity;)V

    goto :goto_0
.end method
