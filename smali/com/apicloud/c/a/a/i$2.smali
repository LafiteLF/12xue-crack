.class Lcom/apicloud/c/a/a/i$2;
.super Lcom/apicloud/c/a/a/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/i;->b(Lcom/apicloud/c/a/a/j$h;)Lcom/apicloud/c/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j$h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/i;-><init>(Lcom/apicloud/c/a/a/j$h;Lcom/apicloud/c/a/a/i;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->i(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->j(I)V

    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->k(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/i$2;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->b:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/i$2;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v0

    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->g(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/apicloud/c/a/a/j$i;->topMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j$h;->f(Landroid/view/View;)I

    move-result p1

    iget v1, v0, Lcom/apicloud/c/a/a/j$i;->leftMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/i$2;->a:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->x()I

    move-result v0

    return v0
.end method
