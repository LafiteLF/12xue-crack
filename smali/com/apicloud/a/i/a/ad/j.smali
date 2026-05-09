.class public Lcom/apicloud/a/i/a/ad/j;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/apicloud/a/i/a/ad/i;

.field private final b:Lcom/apicloud/a/d;

.field private c:Lcom/apicloud/a/i/a/ad/f;

.field private d:Lcom/apicloud/a/i/a/ad/a/a;

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Integer;

.field private h:Z

.field private i:F

.field private j:I

.field private k:I

.field private l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/apicloud/a/i/a/ad/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ad/j;->h:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/apicloud/a/i/a/ad/j;->i:F

    iput v0, p0, Lcom/apicloud/a/i/a/ad/j;->j:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/a/ad/j;->k:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->b:Lcom/apicloud/a/d;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->o()V

    return-void
.end method

.method private final b(IF)V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->d()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    add-int/lit8 v0, v0, -0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/high16 p1, 0x3f000000    # 0.5f

    if-eqz v3, :cond_3

    cmpg-float p1, p2, p1

    if-gez p1, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->p()V

    goto :goto_3

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->r()V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->q()V

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    return-void
.end method

.method private m()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/j;->setClipToPadding(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->e()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ad/j;->j(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->r()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->c()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/ad/j;->i:F

    invoke-direct {p0, v0, v1}, Lcom/apicloud/a/i/a/ad/j;->b(IF)V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a/a;->postInvalidate()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    new-instance v0, Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/j;->b:Lcom/apicloud/a/d;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/i/a/ad/i;-><init>(Landroid/content/Context;Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ad/i;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/j;->i(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/j;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    new-instance v1, Lcom/apicloud/a/i/a/ad/c;

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/j;->b:Lcom/apicloud/a/d;

    invoke-direct {v1, v2, p0}, Lcom/apicloud/a/i/a/ad/c;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/apicloud/a/i/a/ad/b;)V

    return-void
.end method

.method private final p()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingLeft()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingRight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->k()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->j()I

    move-result v4

    add-int/2addr v4, v3

    if-nez v1, :cond_2

    if-eq v2, v4, :cond_4

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v1, v1, v1, v4}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v1, v1, v4, v1}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final q()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingLeft()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingRight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->k()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->j()I

    move-result v4

    add-int/2addr v4, v3

    if-ne v1, v4, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v1, v4, v1, v1}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v4, v1, v1, v1}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final r()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->h()Z

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingTop()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/i;->getPaddingLeft()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingBottom()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ad/i;->getPaddingRight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->k()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->j()I

    move-result v4

    if-ne v1, v3, :cond_2

    if-eq v2, v4, :cond_4

    :cond_2
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v1, v3, v1, v4}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, v3, v1, v4, v1}, Lcom/apicloud/a/i/a/ad/i;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/j;->k:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/j;->b(I)V

    return-void
.end method

.method final a(IF)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lcom/apicloud/a/i/a/ad/j;->i:F

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/j;->b(IF)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/i;->a(II)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/i;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/i;->a(IZ)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/ad/j;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/apicloud/a/i/a/ad/j;->j:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/apicloud/a/i/a/ad/f;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/u;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/apicloud/a/i/a/r/u;)V

    return-void
.end method

.method public a(Lcom/deepe/c/b/d/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->b:Lcom/apicloud/a/d;

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Lcom/apicloud/a/d;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Ljava/util/List;)V

    iget v0, p0, Lcom/apicloud/a/i/a/ad/j;->k:I

    if-ltz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget p1, p0, Lcom/apicloud/a/i/a/ad/j;->k:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/j;->b(I)V

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/ad/j;->k:I

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->c(Z)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->h()Z

    move-result v0

    return v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/ad/f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ad/f;->d()Z

    move-result p2

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->c:Lcom/apicloud/a/i/a/ad/f;

    return-void

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/j;->c:Lcom/apicloud/a/i/a/ad/f;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->c:Lcom/apicloud/a/i/a/ad/f;

    :cond_1
    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/ad/f;->a(Lcom/apicloud/a/i/a/ad/j;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/j;->a(Lcom/apicloud/a/i/a/ad/f;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->n()V

    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/ad/j;->a(IZ)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->b(Lcom/apicloud/a/i/a/ad/f;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->f(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->m()V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/j;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->d()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->c_()I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/a;->d(I)V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->d(Z)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->b()I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(I)V

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->e(Z)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->l()I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->b(I)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/j;->h:Z

    return-void
.end method

.method protected f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->c:Lcom/apicloud/a/i/a/ad/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/f;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->f:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->m()V

    return-void
.end method

.method public final f(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/j;->e:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/j;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    if-nez p1, :cond_1

    new-instance p1, Lcom/apicloud/a/i/a/ad/a/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ad/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    const/high16 v1, 0x4d000000    # 1.3421773E8f

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/a;->c(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/a;->d(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/a;->a(F)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v0, 0xf

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/j;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->d:Lcom/apicloud/a/i/a/ad/a/a;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ad/a/a;->a(Lcom/apicloud/a/i/a/ad/a/g;)V

    :cond_1
    return-void
.end method

.method public final g(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/j;->g:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->m()V

    return-void
.end method

.method public g(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->a(Z)V

    return-void
.end method

.method protected g()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->c:Lcom/apicloud/a/i/a/ad/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getClipToPadding()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->getClipToPadding()Z

    move-result v0

    return v0
.end method

.method protected h()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/apicloud/a/i/a/ad/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    return-object v0
.end method

.method public final h(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->c()Lcom/apicloud/a/i/a/ad/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->f(I)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/i;->d()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->l:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->setOverScrollMode(I)V

    return-void
.end method

.method j()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->g(I)V

    return-void
.end method

.method k()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method l()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->g:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->f:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/ad/f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/j;->b(Lcom/apicloud/a/i/a/ad/f;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/j;->n()V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/j;->a:Lcom/apicloud/a/i/a/ad/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/i;->setClipToPadding(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[swiper]"

    return-object v0
.end method
