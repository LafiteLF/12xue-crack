.class Lcom/deepe/c/c/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/j;->a(Ljava/lang/String;Lcom/deepe/c/c/j$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/j;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/j;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$3;->a:Lcom/deepe/c/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/c/c/j$3;->a:Lcom/deepe/c/c/j;

    invoke-static {v0}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/j;)Lcom/deepe/c/i/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/w;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/j$3;->a:Lcom/deepe/c/c/j;

    invoke-static {v0}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/j;)Lcom/deepe/c/i/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/w;->clear()V

    iget-object v0, p0, Lcom/deepe/c/c/j$3;->a:Lcom/deepe/c/c/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/c/c/j;->a(Lcom/deepe/c/c/j;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/j$a;

    invoke-static {v1}, Lcom/deepe/c/c/j$a;->a(Lcom/deepe/c/c/j$a;)Lcom/deepe/c/i/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/j$b;

    invoke-static {v3}, Lcom/deepe/c/c/j$b;->a(Lcom/deepe/c/c/j$b;)Lcom/deepe/c/c/j$c;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/deepe/c/c/j$a;->a()Lcom/deepe/c/j/r;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/deepe/c/c/j$a;->b(Lcom/deepe/c/c/j$a;)Lcom/deepe/c/c/g;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/deepe/c/c/j$b;->a(Lcom/deepe/c/c/j$b;Lcom/deepe/c/c/g;)V

    invoke-static {v3}, Lcom/deepe/c/c/j$b;->a(Lcom/deepe/c/c/j$b;)Lcom/deepe/c/c/j$c;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5}, Lcom/deepe/c/c/j$c;->a(Lcom/deepe/c/c/j$b;Z)V

    goto :goto_1

    :cond_3
    invoke-static {v3}, Lcom/deepe/c/c/j$b;->a(Lcom/deepe/c/c/j$b;)Lcom/deepe/c/c/j$c;

    move-result-object v3

    invoke-virtual {v1}, Lcom/deepe/c/c/j$a;->a()Lcom/deepe/c/j/r;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/deepe/c/c/j$c;->onErrorResponse(Lcom/deepe/c/j/r;)V

    goto :goto_1
.end method
