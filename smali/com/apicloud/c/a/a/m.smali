.class public abstract Lcom/apicloud/c/a/a/m;
.super Lcom/apicloud/c/a/a/j$e;


# instance fields
.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$e;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/m;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/c/a/a/j$w;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/m;->d(Lcom/apicloud/c/a/a/j$w;Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->f(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/m;->h:Z

    return-void
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;)Z
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;IIII)Z
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
    .locals 6

    iget v2, p2, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v3, p2, Lcom/apicloud/c/a/a/j$e$c;->b:I

    iget-object p2, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    if-nez p3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    :goto_0
    move v4, v0

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    :goto_1
    move v5, p3

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/m;->a(Lcom/apicloud/c/a/a/j$w;IIII)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->a(Lcom/apicloud/c/a/a/j$w;)Z

    move-result p1

    return p1
.end method

.method public abstract a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$w;IIII)Z
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
    .locals 7

    iget v3, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v4, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p4, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget p3, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    :cond_0
    iget p3, p4, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget p4, p4, Lcom/apicloud/c/a/a/j$e$c;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/apicloud/c/a/a/m;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$w;IIII)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/apicloud/c/a/a/j$w;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/m;->c(Lcom/apicloud/c/a/a/j$w;Z)V

    return-void
.end method

.method public abstract b(Lcom/apicloud/c/a/a/j$w;)Z
.end method

.method public b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
    .locals 8

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v1, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/apicloud/c/a/a/j$e$c;->b:I

    iget v1, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v4, p2, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v5, p2, Lcom/apicloud/c/a/a/j$e$c;->b:I

    iget v6, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v7, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/apicloud/c/a/a/m;->a(Lcom/apicloud/c/a/a/j$w;IIII)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->b(Lcom/apicloud/c/a/a/j$w;)Z

    move-result p1

    return p1
.end method

.method public c(Lcom/apicloud/c/a/a/j$w;Z)V
    .locals 0

    return-void
.end method

.method public c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)Z
    .locals 6

    iget v0, p2, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v1, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lcom/apicloud/c/a/a/j$e$c;->b:I

    iget v1, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->j(Lcom/apicloud/c/a/a/j$w;)V

    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    iget v2, p2, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v3, p2, Lcom/apicloud/c/a/a/j$e$c;->b:I

    iget v4, p3, Lcom/apicloud/c/a/a/j$e$c;->a:I

    iget v5, p3, Lcom/apicloud/c/a/a/j$e$c;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/m;->a(Lcom/apicloud/c/a/a/j$w;IIII)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/apicloud/c/a/a/j$w;Z)V
    .locals 0

    return-void
.end method

.method public h(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/m;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final i(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->p(Lcom/apicloud/c/a/a/j$w;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->f(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public final j(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->t(Lcom/apicloud/c/a/a/j$w;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->f(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public final k(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->r(Lcom/apicloud/c/a/a/j$w;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->f(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public final l(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->o(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public final m(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->s(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public final n(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/m;->q(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method

.method public o(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public p(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public q(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public r(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public s(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method

.method public t(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    return-void
.end method
