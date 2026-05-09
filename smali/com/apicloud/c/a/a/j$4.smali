.class Lcom/apicloud/c/a/a/j$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/p$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/c/a/a/j$w;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;Lcom/apicloud/c/a/a/j$o;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$o;->c(Lcom/apicloud/c/a/a/j$w;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j;->b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V

    return-void
.end method

.method public c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Z)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->w:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/apicloud/c/a/a/j$e;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j$e;->c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/apicloud/c/a/a/j$4;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->q()V

    :cond_1
    return-void
.end method
