.class Lcom/deepe/c/b/b/a$b;
.super Lcom/deepe/c/b/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/b/a;


# direct methods
.method private constructor <init>(Lcom/deepe/c/b/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-direct {p0}, Lcom/deepe/c/b/n$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/c/b/b/a;Lcom/deepe/c/b/b/a$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/b/b/a$b;-><init>(Lcom/deepe/c/b/b/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->f(Lcom/deepe/c/b/b/a;)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;II)I
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->e(Lcom/deepe/c/b/b/a;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/b/a$c;

    iget-object p3, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-virtual {p3}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result p3

    iget p1, p1, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->f(Lcom/deepe/c/b/b/a;)I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;FF)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/deepe/c/b/b/a$c;

    iget-object v0, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v0

    iget p3, p3, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr v0, p3

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    if-gtz p2, :cond_0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p2}, Lcom/deepe/c/b/b/a;->d(Lcom/deepe/c/b/b/a;)F

    move-result p2

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p2}, Lcom/deepe/c/b/b/a;->f(Lcom/deepe/c/b/b/a;)I

    move-result p2

    add-int/2addr v0, p2

    :cond_1
    iget-object p2, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p2}, Lcom/deepe/c/b/b/a;->c(Lcom/deepe/c/b/b/a;)Lcom/deepe/c/b/n;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/deepe/c/b/n;->a(II)Z

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/b/a;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1, p2}, Lcom/deepe/c/b/b/a;->a(Lcom/deepe/c/b/b/a;I)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/b/a;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 0

    iget-object p2, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p2}, Lcom/deepe/c/b/b/a;->b(Lcom/deepe/c/b/b/a;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/b/a$c;

    iget-boolean p1, p1, Lcom/deepe/c/b/b/a$c;->b:Z

    return p1
.end method

.method public b(II)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->c(Lcom/deepe/c/b/b/a;)Lcom/deepe/c/b/n;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {v0}, Lcom/deepe/c/b/b/a;->e(Lcom/deepe/c/b/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/deepe/c/b/n;->a(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/b/a;->a()V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->c(Lcom/deepe/c/b/b/a;)Lcom/deepe/c/b/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/c/b/n;->a()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->d(Lcom/deepe/c/b/b/a;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->e(Lcom/deepe/c/b/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/b/a;->d(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->e(Lcom/deepe/c/b/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/b/a;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    invoke-static {p1}, Lcom/deepe/c/b/b/a;->e(Lcom/deepe/c/b/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/b/a;->b(Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a$b;->a:Lcom/deepe/c/b/b/a;

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, v0}, Lcom/deepe/c/b/b/a;->a(Lcom/deepe/c/b/b/a;Z)V

    :cond_1
    return-void
.end method
