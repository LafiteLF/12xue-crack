.class Lcom/deepe/c/j/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/j/h;

.field private final b:Lcom/deepe/c/j/l;

.field private final c:Lcom/deepe/c/j/o;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/deepe/c/j/h;Lcom/deepe/c/j/l;Lcom/deepe/c/j/o;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/h$a;->a:Lcom/deepe/c/j/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    iput-object p3, p0, Lcom/deepe/c/j/h$a;->c:Lcom/deepe/c/j/o;

    iput-object p4, p0, Lcom/deepe/c/j/h$a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    invoke-virtual {v0}, Lcom/deepe/c/j/l;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->finish(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/j/h$a;->c:Lcom/deepe/c/j/o;

    invoke-virtual {v0}, Lcom/deepe/c/j/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    iget-object v1, p0, Lcom/deepe/c/j/h$a;->c:Lcom/deepe/c/j/o;

    iget-object v1, v1, Lcom/deepe/c/j/o;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->deliverResponse(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    iget-object v1, p0, Lcom/deepe/c/j/h$a;->c:Lcom/deepe/c/j/o;

    iget-object v1, v1, Lcom/deepe/c/j/o;->c:Lcom/deepe/c/j/r;

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->deliverError(Lcom/deepe/c/j/r;)V

    :goto_0
    iget-object v0, p0, Lcom/deepe/c/j/h$a;->c:Lcom/deepe/c/j/o;

    iget-boolean v0, v0, Lcom/deepe/c/j/o;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->addMarker(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/j/h$a;->b:Lcom/deepe/c/j/l;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/deepe/c/j/l;->finish(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/deepe/c/j/h$a;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
