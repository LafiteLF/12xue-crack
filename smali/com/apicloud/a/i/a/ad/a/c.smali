.class public abstract Lcom/apicloud/a/i/a/ad/a/c;
.super Lcom/deepe/c/b/d/a;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ad/a/e;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/c/b/d/a;-><init>()V

    const/16 v0, 0x32

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->d:I

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/e;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/ad/a/e;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->a:Lcom/apicloud/a/i/a/ad/a/e;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/c;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/e;->a(I)V

    return-void
.end method

.method private final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->b:Z

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
.end method

.method public abstract a(I)Lcom/apicloud/a/i/a/ad/d;
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/a/c;->g(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/apicloud/a/i/a/ad/a/c;->a(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/a/c;->a(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p2

    iget-object v0, p2, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->b:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/c;->b:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/c;->f()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/c;->a:Lcom/apicloud/a/i/a/ad/a/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a/e;->a()V

    invoke-super {p0}, Lcom/deepe/c/b/d/a;->f()V

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/c;->d:I

    return-void
.end method

.method public final g()I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/c;->c:I

    mul-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public final g(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/c;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/c;->b()Z

    move-result v1

    if-nez v1, :cond_1

    return p1

    :cond_1
    rem-int/2addr p1, v0

    return p1
.end method

.method public h(I)F
    .locals 1

    iget p1, p0, Lcom/apicloud/a/i/a/ad/a/c;->d:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
