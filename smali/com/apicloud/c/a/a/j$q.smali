.class Lcom/apicloud/c/a/a/j$q;
.super Lcom/apicloud/c/a/a/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "q"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/j$t;->e:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->v()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/a;->a(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$q;->b()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 2

    sget-boolean v0, Lcom/apicloud/c/a/a/j;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v1, v0, Lcom/apicloud/c/a/a/j;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/j;->v:Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    :goto_0
    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/a;->b(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$q;->b()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$q;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->f:Lcom/apicloud/c/a/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/a;->c(II)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$q;->b()V

    :cond_0
    return-void
.end method
