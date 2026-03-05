.class Lcom/apicloud/a/i/a/ad/b;
.super Lcom/apicloud/a/i/a/ad/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ad/b$a;
    }
.end annotation


# instance fields
.field protected final a:Lcom/apicloud/a/d;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ad/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/apicloud/a/i/a/ad/b$a;

.field private final e:Lcom/apicloud/a/i/a/ad/j;

.field private f:Lcom/apicloud/a/c/l;

.field private g:Ljava/util/List;

.field private h:Lcom/apicloud/a/i/a/r/u;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    new-instance v0, Lcom/apicloud/a/i/a/ad/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/ad/b$a;-><init>(Lcom/apicloud/a/i/a/ad/b;Lcom/apicloud/a/i/a/ad/b$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->d:Lcom/apicloud/a/i/a/ad/b$a;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {p2, v0}, Lcom/apicloud/a/i/a/ad/j;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ad/b;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ad/b;->b:I

    return p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ad/b;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/b;->b:I

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/ad/f;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/b;->e(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/ad/f;->a(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ad/f;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ad/b$2;

    invoke-direct {v0, p0, p2}, Lcom/apicloud/a/i/a/ad/b$2;-><init>(Lcom/apicloud/a/i/a/ad/b;I)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ad/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ad/b;)Lcom/apicloud/a/i/a/ad/j;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    return-object p0
.end method

.method private b(II)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p2, :cond_2

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/ad/d;

    iget p2, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    if-eq p2, v1, :cond_1

    iput v1, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/d;I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/ad/b;->d(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private c(II)V
    .locals 2

    if-gtz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->a()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr p2, p1

    add-int/lit8 v0, v0, -0x1

    if-lt p2, v0, :cond_1

    move p2, v0

    :cond_1
    :goto_0
    if-lt p1, p2, :cond_4

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_2

    return-void

    :cond_2
    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/ad/d;

    iget v0, p2, Lcom/apicloud/a/i/a/ad/d;->c:I

    if-eq v0, p1, :cond_3

    iput p1, p2, Lcom/apicloud/a/i/a/ad/d;->c:I

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/d;I)V

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ad/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ad/b;->i:Z

    return p0
.end method

.method private i()V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->f()V

    return-void
.end method

.method private i(I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ad/b;->d(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, -0x2

    return p1
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/a/ad/b;->c(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    iget-object p2, p1, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/f;I)V

    return-object p2
.end method

.method protected a(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public a(I)Lcom/apicloud/a/i/a/ad/d;
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/b;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/j;->h()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/f;->b()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/ad/f;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/ad/b;->a(ILandroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/b;->d(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object v0

    iget-object v1, v0, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    check-cast v1, Lcom/apicloud/a/i/a/g/d;

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/g/d;->a(I)V

    return-object v0
.end method

.method protected a(ILandroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/d;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Lcom/deepe/c/b/d/b$c;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$c;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/apicloud/a/i/a/ad/d;

    invoke-direct {v0, p1, p2, p3}, Lcom/apicloud/a/i/a/ad/d;-><init>(ILandroid/view/View;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/apicloud/a/i/a/ad/d;

    new-instance p2, Lcom/apicloud/a/i/a/ad/f;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/b;->a:Lcom/apicloud/a/d;

    invoke-direct {p2, v1}, Lcom/apicloud/a/i/a/ad/f;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p1, v0, p2, p3}, Lcom/apicloud/a/i/a/ad/d;-><init>(ILandroid/view/View;Ljava/lang/String;)V

    return-object p1
.end method

.method protected a(Landroid/view/View;)Lcom/apicloud/a/i/a/ad/d;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/ad/d;

    iget-object v2, v1, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    if-ne v2, p1, :cond_0

    return-object v1
.end method

.method public a(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->a()I

    move-result v0

    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    if-gtz p2, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    add-int v2, p1, p2

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_1

    move v2, v0

    :cond_1
    move v0, p1

    :goto_0
    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/b;->c(II)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/b;->i()V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ad/b;->j:Z

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/b;->b(II)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/b;->i()V

    :cond_3
    :goto_1
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->h:Lcom/apicloud/a/i/a/r/u;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/apicloud/a/i/a/r/u;->a(Landroid/view/View;Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected final a(Lcom/apicloud/a/i/a/ad/d;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/b;->e(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object v1

    iget-object v2, p1, Lcom/apicloud/a/i/a/ad/d;->b:Ljava/lang/String;

    const-string v3, "swiper-item"

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    iget-object p1, p1, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ad/b$1;

    invoke-direct {v0, p0, p2}, Lcom/apicloud/a/i/a/ad/b$1;-><init>(Lcom/apicloud/a/i/a/ad/b;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/apicloud/a/i/a/ad/b;->a(ILandroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/b;->i()V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/u;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->h:Lcom/apicloud/a/i/a/r/u;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/b;->j:Z

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/b;->i(I)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/b;->i()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/b;->i:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/b;->b:I

    return-void
.end method

.method public final b(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Landroid/view/View;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    iget p1, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/b;->i()V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->h:Lcom/apicloud/a/i/a/r/u;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected c(I)Lcom/apicloud/a/i/a/ad/d;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/ad/d;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/ad/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->c:Ljava/util/List;

    return-object v0
.end method

.method protected d(I)Lcom/apicloud/a/i/a/ad/d;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/j;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/ad/f;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/a/i/a/ad/b;->a(ILandroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    return-object p1
.end method

.method protected d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/j;->g()Z

    move-result v0

    return v0
.end method

.method protected e()Lcom/apicloud/a/c/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->f:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/b;->e:Lcom/apicloud/a/i/a/ad/j;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->f:Lcom/apicloud/a/c/l;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->f:Lcom/apicloud/a/c/l;

    return-object v0
.end method

.method protected e(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
