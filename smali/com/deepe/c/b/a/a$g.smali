.class Lcom/deepe/c/b/a/a$g;
.super Lcom/deepe/c/b/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/a/a;

.field private final b:I

.field private c:Lcom/deepe/c/b/n;

.field private final d:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-direct {p0}, Lcom/deepe/c/b/n$a;-><init>()V

    new-instance p1, Lcom/deepe/c/b/a/a$g$1;

    invoke-direct {p1, p0}, Lcom/deepe/c/b/a/a$g$1;-><init>(Lcom/deepe/c/b/a/a$g;)V

    iput-object p1, p0, Lcom/deepe/c/b/a/a$g;->d:Ljava/lang/Runnable;

    iput p2, p0, Lcom/deepe/c/b/a/a$g;->b:I

    return-void
.end method

.method private c()V
    .locals 2

    iget v0, p0, Lcom/deepe/c/b/a/a$g;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/a/a;->d_(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v1, v0}, Lcom/deepe/c/b/a/a;->i(Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/a/a;->g(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroid/view/View;II)I
    .locals 1

    iget-object p3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 v0, 0x3

    invoke-virtual {p3, p1, v0}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    neg-int p1, p1

    const/4 p3, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    iget-object p3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p3}, Lcom/deepe/c/b/a/a;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p3, p1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    iget-object v1, p0, Lcom/deepe/c/b/a/a$g;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/a/a;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(II)V
    .locals 2

    iget-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    iget-object p2, p0, Lcom/deepe/c/b/a/a$g;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, p2, v0, v1}, Lcom/deepe/c/b/a/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 5

    iget-object p3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p3, p1}, Lcom/deepe/c/b/a/a;->d(Landroid/view/View;)F

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;I)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_1

    if-nez p2, :cond_0

    cmpl-float p2, p3, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    neg-int p2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v1}, Lcom/deepe/c/b/a/a;->getWidth()I

    move-result v1

    cmpg-float v4, p2, v3

    if-ltz v4, :cond_3

    cmpl-float p2, p2, v3

    if-nez p2, :cond_4

    cmpl-float p2, p3, v2

    if-lez p2, :cond_4

    :cond_3
    sub-int/2addr v1, v0

    :cond_4
    move p2, v1

    :goto_1
    iget-object p3, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Lcom/deepe/c/b/n;->a(II)Z

    iget-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/a/a;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 p5, 0x3

    invoke-virtual {p4, p1, p5}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;I)Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/2addr p2, p3

    int-to-float p2, p2

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p4}, Lcom/deepe/c/b/a/a;->getWidth()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-float p2, p4

    :goto_0
    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p3, p1, p2}, Lcom/deepe/c/b/a/a;->b(Landroid/view/View;F)V

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-nez p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/a/a;->invalidate()V

    return-void
.end method

.method public a(Lcom/deepe/c/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    iget-object p2, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p2, p1}, Lcom/deepe/c/b/a/a;->g(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    iget v0, p0, Lcom/deepe/c/b/a/a$g;->b:I

    invoke-virtual {p2, p1, v0}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {p2, p1}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method b()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    invoke-virtual {v0}, Lcom/deepe/c/b/n;->b()I

    move-result v0

    iget v1, p0, Lcom/deepe/c/b/a/a$g;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v5, v4}, Lcom/deepe/c/b/a/a;->d_(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    :cond_1
    add-int/2addr v3, v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/deepe/c/b/a/a;->d_(I)Landroid/view/View;

    move-result-object v4

    iget-object v3, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v3}, Lcom/deepe/c/b/a/a;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    :goto_1
    if-eqz v4, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt v0, v3, :cond_4

    :cond_3
    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    if-le v0, v3, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0, v4}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/a/a$e;

    iget-object v1, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1, v4, v3, v5}, Lcom/deepe/c/b/n;->a(Landroid/view/View;II)Z

    iput-boolean v2, v0, Lcom/deepe/c/b/a/a$e;->c:Z

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/a/a;->invalidate()V

    invoke-direct {p0}, Lcom/deepe/c/b/a/a$g;->c()V

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/a/a;->d()V

    :cond_5
    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p1, v0}, Lcom/deepe/c/b/a/a;->d_(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/a/a;->a(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/b/n;->a(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/a/a$e;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/deepe/c/b/a/a$e;->c:Z

    invoke-direct {p0}, Lcom/deepe/c/b/a/a$g;->c()V

    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/a/a$g;->a:Lcom/deepe/c/b/a/a;

    iget v1, p0, Lcom/deepe/c/b/a/a$g;->b:I

    iget-object v2, p0, Lcom/deepe/c/b/a/a$g;->c:Lcom/deepe/c/b/n;

    invoke-virtual {v2}, Lcom/deepe/c/b/n;->c()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/deepe/c/b/a/a;->a(IILandroid/view/View;)V

    return-void
.end method

.method public d(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
