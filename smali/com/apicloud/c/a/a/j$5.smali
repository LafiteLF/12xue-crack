.class Lcom/apicloud/c/a/a/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/j;->C()V
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

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->indexOfChild(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/j;->k(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->removeViewAt(I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j;->addView(Landroid/view/View;I)V

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/j;->l(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Called attach on a child which is not detached: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->o()V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-static {v0, p1, p2, p3}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$5;->a()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->removeAllViews()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$5;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apicloud/c/a/a/j;->k(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$5;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called detach on an already detached child "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j$w;->b(I)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-static {v0, p1}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j;I)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$5;->a:Lcom/apicloud/c/a/a/j;

    invoke-static {p1, v0}, Lcom/apicloud/c/a/a/j$w;->b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j;)V

    :cond_0
    return-void
.end method
