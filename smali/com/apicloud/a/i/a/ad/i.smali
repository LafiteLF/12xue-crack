.class Lcom/apicloud/a/i/a/ad/i;
.super Lcom/apicloud/a/i/a/ad/a/i;

# interfaces
.implements Lcom/apicloud/a/i/a/ad/a/g;
.implements Lcom/apicloud/a/i/a/g/f;


# instance fields
.field final a:Lcom/apicloud/a/d;

.field private g:Lcom/apicloud/a/i/a/ad/a;

.field private h:I

.field private i:Lcom/apicloud/a/i/a/ad/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/i;->a:Lcom/apicloud/a/d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a;->b()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a;->c()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ad/a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ad/a;-><init>(Lcom/apicloud/a/i/a/ad/a/g;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    iget v1, p0, Lcom/apicloud/a/i/a/ad/i;->h:I

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a;->a(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/i;->b()I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/i;->h:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/b;->a(II)V

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/b;->a(ILjava/util/List;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->b(I)V

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/i;->b(IZ)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/ad/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->b(Lcom/apicloud/a/i/a/ad/f;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lcom/apicloud/a/i/a/ad/a/b;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/a/b$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->a(Lcom/deepe/c/b/d/a;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/f;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/r/u;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/r/u;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/i;->j()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/b;->a()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->b(I)V

    return-void
.end method

.method public final b(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->b(Lcom/apicloud/a/i/a/ad/f;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->j(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/i;->b_()V

    return-void
.end method

.method public final c()Lcom/apicloud/a/i/a/ad/b;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->i:Lcom/apicloud/a/i/a/ad/b;

    return-object v0
.end method

.method public final c(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->i(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/i;->s()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a;->a(Z)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/i;->g:Lcom/apicloud/a/i/a/ad/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a;->b()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->g(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/i;->r()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/i;->q()V

    :goto_0
    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/a/i;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/i;->h(Z)V

    return-void
.end method
