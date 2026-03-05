.class public Lcom/deepe/c/j/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/j/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/j/h$1;

    invoke-direct {v0, p0, p1}, Lcom/deepe/c/j/h$1;-><init>(Lcom/deepe/c/j/h;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/deepe/c/j/h;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/j/o<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/j/h;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/j/o<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    new-instance v0, Lcom/deepe/c/j/h$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/deepe/c/j/h$a;-><init>(Lcom/deepe/c/j/h;Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->isDeliverInThread()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/h$a;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/j/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;",
            "Lcom/deepe/c/j/r;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p2

    new-instance v0, Lcom/deepe/c/j/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/deepe/c/j/h$a;-><init>(Lcom/deepe/c/j/h;Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->isDeliverInThread()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/j/h$a;->run()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/j/h;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
