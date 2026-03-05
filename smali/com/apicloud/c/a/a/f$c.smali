.class Lcom/apicloud/c/a/a/f$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field

.field l:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/f$c;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/c/a/a/f$c;->h:I

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/f$c;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    return-void
.end method

.method private b()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/j$w;

    iget-object v2, v2, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$i;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$i;->d()I

    move-result v3

    if-ne v4, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/f$c;->a(Landroid/view/View;)V

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/apicloud/c/a/a/j$o;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/c/a/a/f$c;->b()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$o;->a(I)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    iget v1, p0, Lcom/apicloud/c/a/a/f$c;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/f$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/f$c;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$i;->d()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$t;)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$t;->e()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/apicloud/c/a/a/f$c;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/c/a/a/j$w;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/apicloud/c/a/a/j$i;

    if-eq v4, p1, :cond_4

    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j$i;->b()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lcom/apicloud/c/a/a/j$i;->d()I

    move-result v5

    iget v6, p0, Lcom/apicloud/c/a/a/f$c;->d:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/apicloud/c/a/a/f$c;->e:I

    mul-int/2addr v5, v6

    if-gez v5, :cond_2

    goto :goto_2

    :cond_2
    if-ge v5, v2, :cond_4

    move-object v1, v4

    if-nez v5, :cond_3

    :goto_1
    return-object v1

    :cond_3
    move v2, v5

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
