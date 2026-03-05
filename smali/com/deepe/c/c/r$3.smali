.class Lcom/deepe/c/c/r$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/r;->a(Ljava/lang/String;Lcom/deepe/c/c/r$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/r;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$3;->a:Lcom/deepe/c/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/c/c/r$3;->a:Lcom/deepe/c/c/r;

    invoke-static {v0}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/r;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/r$3;->a:Lcom/deepe/c/c/r;

    invoke-static {v0}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/r;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/deepe/c/c/r$3;->a:Lcom/deepe/c/c/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/c/c/r;->a(Lcom/deepe/c/c/r;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/r$a;

    invoke-static {v1}, Lcom/deepe/c/c/r$a;->a(Lcom/deepe/c/c/r$a;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/r$b;

    invoke-static {v3}, Lcom/deepe/c/c/r$b;->a(Lcom/deepe/c/c/r$b;)Lcom/deepe/c/c/r$d;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/deepe/c/c/r$a;->a()Lcom/deepe/c/j/r;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/deepe/c/c/r$a;->b(Lcom/deepe/c/c/r$a;)Lcom/deepe/c/c/m;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/deepe/c/c/r$b;->a(Lcom/deepe/c/c/r$b;Lcom/deepe/c/c/m;)V

    invoke-static {v3}, Lcom/deepe/c/c/r$b;->a(Lcom/deepe/c/c/r$b;)Lcom/deepe/c/c/r$d;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/deepe/c/c/r$d;->a(Lcom/deepe/c/c/r$b;Z)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/deepe/c/c/r$b;->a(Lcom/deepe/c/c/r$b;)Lcom/deepe/c/c/r$d;

    move-result-object v3

    invoke-virtual {v1}, Lcom/deepe/c/c/r$a;->a()Lcom/deepe/c/j/r;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/deepe/c/c/r$d;->onErrorResponse(Lcom/deepe/c/j/r;)V

    goto :goto_1
.end method
