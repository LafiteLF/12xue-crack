.class public Lcom/apicloud/a/i/a/ad/a/d;
.super Lcom/deepe/c/b/d/b;


# instance fields
.field private a:Lcom/apicloud/a/i/a/ad/a/c;

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/b/d/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Landroid/database/DataSetObserver;

.field private k:Lcom/deepe/c/b/d/b$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/b/d/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/d;->g:I

    new-instance p1, Lcom/apicloud/a/i/a/ad/a/d$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ad/a/d$1;-><init>(Lcom/apicloud/a/i/a/ad/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/d;->j:Landroid/database/DataSetObserver;

    new-instance p1, Lcom/apicloud/a/i/a/ad/a/d$2;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ad/a/d$2;-><init>(Lcom/apicloud/a/i/a/ad/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/d;->k:Lcom/deepe/c/b/d/b$e;

    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a/c;->a()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/d;->g:I

    if-eq v0, v1, :cond_2

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/c;->g()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    rem-int v3, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/a/c;->g()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-super {p0}, Lcom/deepe/c/b/d/b;->c_()I

    move-result v3

    iget v4, p0, Lcom/apicloud/a/i/a/ad/a/d;->g:I

    rem-int/2addr v3, v4

    add-int/2addr v1, v3

    :goto_0
    invoke-super {p0, v1, v2}, Lcom/deepe/c/b/d/b;->b(IZ)V

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->g:I

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ad/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ad/a/d;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/deepe/c/b/d/a;)V
    .locals 2

    instance-of v0, p1, Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d;->j:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/c;->b(Landroid/database/DataSetObserver;)V

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/ad/a/c;

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/d;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/c;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d;->j:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ad/a/c;->a(Landroid/database/DataSetObserver;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->a(Lcom/deepe/c/b/d/a;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/d;->a()V

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->a(Lcom/deepe/c/b/d/a;)V

    return-void
.end method

.method public final a(Lcom/deepe/c/b/d/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->h:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->h:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->e(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Lcom/deepe/c/b/d/b;->b(IZ)V

    return-void
.end method

.method public final b(Lcom/deepe/c/b/d/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b_()V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/d;->k()Lcom/deepe/c/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/deepe/c/b/d/b;->c_()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v2, v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-super {p0, v2}, Lcom/deepe/c/b/d/b;->c(I)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->e(I)I

    move-result p1

    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->c(I)V

    return-void
.end method

.method public final c_()I
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/b/d/b;->c_()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/a/d;->d(I)I

    move-result v0

    return v0
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/c;->g(I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public e(I)I
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/a/c;->a()I

    move-result v0

    if-lez v0, :cond_3

    invoke-super {p0}, Lcom/deepe/c/b/d/b;->c_()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ad/a/d;->d(I)I

    move-result v2

    if-le p1, v2, :cond_1

    sub-int/2addr p1, v2

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p1

    rem-int/2addr v2, v0

    neg-int p1, v2

    :goto_0
    invoke-super {p0}, Lcom/deepe/c/b/d/b;->l()I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/a/d;->g(I)V

    :cond_2
    add-int/2addr v1, p1

    return v1

    :cond_3
    :goto_1
    return p1
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->i:Z

    return v0
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->i:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/d;->i:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d;->a:Lcom/apicloud/a/i/a/ad/a/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/c;->b(Z)V

    :cond_0
    return-void
.end method
