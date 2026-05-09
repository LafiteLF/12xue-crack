.class public Lcom/apicloud/a/i/a/r/n;
.super Lcom/apicloud/a/i/a/x/c;

# interfaces
.implements Lcom/deepe/c/h/b;


# static fields
.field static final b:I


# instance fields
.field private a:Lcom/apicloud/a/i/a/r/k;

.field private d:Lcom/apicloud/a/i/a/r/r;

.field private e:Lcom/apicloud/c/a/a/j$h;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/r/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Lcom/apicloud/a/i/a/aa/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/a/r/n;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/x/c;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/r/n;->h:Z

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private O()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/r;->a()V

    :cond_0
    return-void
.end method

.method private final P()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/k;->computeVerticalScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method private final Q()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/k;->computeHorizontalScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method private a(I)Lcom/apicloud/a/i/a/r/a;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget v0, Lcom/apicloud/a/i/a/r/l;->a:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/r/a;

    return-object p1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {v2, p1}, Lcom/apicloud/a/i/a/r/a;->b(I)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2
.end method

.method private a(Lcom/apicloud/a/i/a/r/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/f;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/f;I)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/h;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/h;I)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/x/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->d(Z)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/x/d;->d()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/x/g;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->b(Lcom/apicloud/a/i/a/x/g;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected A()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/r/k;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method protected B()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->a()V

    :cond_0
    return-void
.end method

.method protected C()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->b()V

    :cond_0
    return-void
.end method

.method protected D()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->c()V

    :cond_0
    return-void
.end method

.method protected E()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/c;->d()V

    :cond_0
    return-void
.end method

.method public a()F
    .locals 1

    const/high16 v0, -0x31000000

    return v0
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    check-cast v0, Lcom/apicloud/c/a/a/f;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/f;->a(II)V

    return-void
.end method

.method public final a(IIIZ)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(IZ)V

    return-void

    :cond_0
    const/16 p4, 0x11

    if-eq p2, p4, :cond_5

    const/16 p4, 0x30

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_1

    goto :goto_1

    :cond_1
    if-gez p3, :cond_3

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/j$h;->c(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_2
    sget p2, Lcom/apicloud/a/i/a/r/n;->b:I

    mul-int/lit8 p2, p2, 0x8

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getHeight()I

    move-result p3

    sub-int/2addr p3, p2

    sget p2, Lcom/apicloud/a/i/a/r/n;->b:I

    sub-int/2addr p3, p2

    :cond_3
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->t()V

    goto :goto_1

    :cond_4
    if-gez p3, :cond_7

    sget p3, Lcom/apicloud/a/i/a/r/n;->b:I

    goto :goto_1

    :cond_5
    if-gez p3, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getHeight()I

    move-result p2

    div-int/lit8 p3, p2, 0x2

    :cond_6
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->s()V

    :cond_7
    :goto_1
    if-lez p3, :cond_8

    goto :goto_2

    :cond_8
    const/high16 p3, -0x80000000

    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/a/r/n;->a(II)V

    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    add-int/2addr v0, p1

    const/high16 p1, -0x80000000

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/apicloud/a/i/a/r/n;->a(IIIZ)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(ILjava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/r/k;->e(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/r/k;->c(I)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/apicloud/a/d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->setEnabled(Z)V

    new-instance v0, Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/r/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    new-instance v0, Lcom/apicloud/a/i/a/x/b$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/x/b$a;-><init>(II)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/r/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->H()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->p()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->k(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->H()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->q()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->j(I)V

    new-instance v0, Lcom/apicloud/a/i/a/r/j;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/r/j;-><init>(Lcom/apicloud/a/i/a/r/n;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/c/a/a/j$h;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->H()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/apicloud/a/i/a/r/r;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/r;)V

    new-instance v0, Lcom/apicloud/a/i/a/r/m;

    invoke-direct {v0, p1, p0}, Lcom/apicloud/a/i/a/r/m;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/l;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->t()V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/aa/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/r/l;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->q()Lcom/apicloud/c/a/a/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j$a;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/r;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/r/k;->b(Lcom/apicloud/c/a/a/j$m;)V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->a(Lcom/apicloud/c/a/a/j$m;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/u;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/l;->a(Lcom/apicloud/a/i/a/r/u;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$g;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->a(Lcom/apicloud/c/a/a/j$g;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$h;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->a(Lcom/apicloud/c/a/a/j$h;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/n;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/l;->a(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/n;->O()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/n;->h:Z

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/r/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/r/a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/a;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/apicloud/a/i/a/r/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/apicloud/a/i/a/r/h;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/h;I)V

    return-void

    :cond_1
    instance-of v0, p1, Lcom/apicloud/a/i/a/r/f;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/apicloud/a/i/a/r/f;

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/r/f;I)V

    return-void

    :cond_2
    instance-of v0, p1, Lcom/apicloud/a/i/a/x/d;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/apicloud/a/i/a/x/d;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/i/a/x/d;)V

    return-void

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/x/c;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final b(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->a(II)V

    return-void
.end method

.method public b(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/r;->b()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/r/r;->c()I

    move-result v1

    sub-int/2addr p1, v0

    sub-int/2addr p2, v1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/a/i/a/r/k;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {p3, p1, p2}, Lcom/apicloud/a/i/a/r/k;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/l;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->a(Z)V

    return-void
.end method

.method public final c(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->j()Lcom/apicloud/a/i/a/r/l;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/r/l;->b(II)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method protected c()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    check-cast v1, Lcom/apicloud/c/a/a/f;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/f;->k()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method protected d(II)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/r/r;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/r/r;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->i(Z)V

    return-void
.end method

.method protected d()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    check-cast v1, Lcom/apicloud/c/a/a/f;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/f;->m()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method protected e(II)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/i/a/r/r;->a(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/r/r;->a(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->k(Z)V

    return-void
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->o(I)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->l(Z)V

    return-void
.end method

.method public g(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/n;->p(I)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/a/r/n;->a(IZ)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/r/n;->h:Z

    return v0
.end method

.method public h()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public h(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/a/r/n;->a(IZ)V

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/n;->h(Z)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lcom/apicloud/a/i/a/r/l;
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->q()Lcom/apicloud/c/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    instance-of v1, v0, Lcom/apicloud/a/i/a/r/l;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/apicloud/a/i/a/r/l;

    return-object v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->a(I)V

    return-void
.end method

.method public k(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/k;->setOverScrollMode(I)V

    return-void
.end method

.method public final k()[I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->c()[I

    move-result-object v0

    return-object v0
.end method

.method protected l(I)Lcom/apicloud/a/i/a/r/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(I)Lcom/apicloud/a/i/a/r/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/a;->b()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->a()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/r/a;->a(F)V

    return-object p1
.end method

.method public final l()[I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->d()[I

    move-result-object v0

    return-object v0
.end method

.method public m()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/n;->P()I

    move-result v0

    :goto_0
    return v0
.end method

.method protected m(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/r/n;->Q()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->getWidth()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final o()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/r;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final p()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/n;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/r;->c()I

    move-result v0

    :goto_0
    return v0
.end method

.method public q()Lcom/apicloud/c/a/a/j;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mRecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Lcom/apicloud/c/a/a/j$h;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->e:Lcom/apicloud/c/a/a/j$h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method s()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/r/k;->a(Lcom/apicloud/c/a/a/j$e;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/x/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method t()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-static {}, Lcom/apicloud/a/i/a/r/b;->a()Lcom/apicloud/a/i/a/r/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/r/k;->a(Lcom/apicloud/c/a/a/j$e;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[list-view]"

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/k;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result v0

    return v0
.end method

.method public w()Lcom/apicloud/a/i/a/r/r;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->d:Lcom/apicloud/a/i/a/r/r;

    return-object v0
.end method

.method public x()Lcom/apicloud/a/i/a/aa/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->i:Lcom/apicloud/a/i/a/aa/c;

    return-object v0
.end method

.method protected y()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected z()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/n;->a:Lcom/apicloud/a/i/a/r/k;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/r/k;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
