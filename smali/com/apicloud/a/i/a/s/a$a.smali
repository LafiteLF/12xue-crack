.class Lcom/apicloud/a/i/a/s/a$a;
.super Lcom/deepe/c/b/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/s/a;

.field private b:Lcom/deepe/c/b/n;

.field private c:Landroid/view/View;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/s/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-direct {p0}, Lcom/deepe/c/b/n$a;-><init>()V

    const/4 p1, 0x4

    iput p1, p0, Lcom/apicloud/a/i/a/s/a$a;->d:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/s/a$a;->e:I

    return-void
.end method

.method private b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a$a;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/s/a$a;->d:I

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/a;->getWidth()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 1

    check-cast p1, Lcom/apicloud/a/i/a/g/g;

    const/4 p3, 0x2

    invoke-interface {p1, p3}, Lcom/apicloud/a/i/a/g/g;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    :cond_0
    if-gez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->d()I

    move-result p1

    add-int p3, p2, p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/a;->getWidth()I

    move-result v0

    if-le p3, v0, :cond_2

    sub-int/2addr v0, p1

    return v0

    :cond_2
    return p2

    :cond_3
    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->f()I

    move-result p1

    return p1
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/a$a;->d:I

    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->b:Lcom/deepe/c/b/n;

    invoke-virtual {v0}, Lcom/deepe/c/b/n;->c()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/apicloud/a/i/a/g/g;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/g/g;->a(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-static {v0, p1, p2, p3}, Lcom/apicloud/a/i/a/s/a;->a(Lcom/apicloud/a/i/a/s/a;Landroid/view/View;FF)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/a$a;->c:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/a$a;->c:Landroid/view/View;

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/s/a$a;->e:I

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/g/g;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/a$a;->b()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/apicloud/a/i/a/s/a$a;->e:I

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le p1, v2, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/s/a$a;->e:I

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/g/g;->b(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a$a;->a()I

    move-result p1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/a$a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    invoke-interface {v0}, Lcom/apicloud/a/i/a/g/g;->d()I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/s/a;->getWidth()I

    move-result v3

    if-gt v2, v3, :cond_3

    invoke-interface {v0}, Lcom/apicloud/a/i/a/g/g;->e()I

    move-result v2

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/s/a;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, p1

    :cond_3
    :goto_1
    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/apicloud/a/i/a/g/g;->a(IIIII)V

    return-void
.end method

.method public final a(Lcom/deepe/c/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/a$a;->b:Lcom/deepe/c/b/n;

    return-void
.end method

.method public a(Landroid/view/View;I)Z
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/a$a;->c:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/s/a$a;->a(I)V

    check-cast p1, Lcom/apicloud/a/i/a/g/g;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->c()Z

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/a;->getChildCount()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/apicloud/a/i/a/s/a;->a(Lcom/apicloud/a/i/a/s/a;II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/a;->getHeight()I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sub-int/2addr v0, p1

    return v0
.end method

.method public b(Landroid/view/View;II)I
    .locals 1

    check-cast p1, Lcom/apicloud/a/i/a/g/g;

    const/4 p3, 0x1

    invoke-interface {p1, p3}, Lcom/apicloud/a/i/a/g/g;->a(I)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->a()Z

    move-result p3

    if-eqz p3, :cond_0

    return p2

    :cond_0
    if-gez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->e()I

    move-result p1

    add-int p3, p2, p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/a;->getHeight()I

    move-result v0

    if-le p3, v0, :cond_2

    sub-int/2addr v0, p1

    return v0

    :cond_2
    return p2

    :cond_3
    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/g;->g()I

    move-result p1

    return p1
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a$a;->a:Lcom/apicloud/a/i/a/s/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/a$a;->b:Lcom/deepe/c/b/n;

    invoke-virtual {v1}, Lcom/deepe/c/b/n;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/i/a/s/a;->a(ILandroid/view/View;)V

    return-void
.end method
