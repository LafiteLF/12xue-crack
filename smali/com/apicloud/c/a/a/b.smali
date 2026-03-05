.class Lcom/apicloud/c/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/b$a;,
        Lcom/apicloud/c/a/a/b$b;
    }
.end annotation


# instance fields
.field final a:Lcom/apicloud/c/a/a/b$b;

.field final b:Lcom/apicloud/c/a/a/b$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    new-instance p1, Lcom/apicloud/c/a/a/b$a;

    invoke-direct {p1}, Lcom/apicloud/c/a/a/b$a;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    return-void
.end method

.method private f(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v1}, Lcom/apicloud/c/a/a/b$b;->a()I

    move-result v1

    move v2, p1

    :goto_0
    if-lt v2, v1, :cond_1

    return v0

    :cond_1
    iget-object v3, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v3, v2}, Lcom/apicloud/c/a/a/b$a;->e(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_3

    :goto_1
    iget-object p1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {p1, v2}, Lcom/apicloud/c/a/a/b$a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->c(Landroid/view/View;)V

    return-void
.end method

.method private h(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->d(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/b$a;->a()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/b$b;->b()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    iget-object v2, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Lcom/apicloud/c/a/a/b$b;->d(Landroid/view/View;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method a(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->f(I)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->b(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/b$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/apicloud/c/a/a/b;->h(Landroid/view/View;)Z

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(I)V

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/b$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->h(Landroid/view/View;)Z

    :cond_1
    iget-object p1, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {p1, v0}, Lcom/apicloud/c/a/a/b$b;->a(I)V

    return-void
.end method

.method a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {p2}, Lcom/apicloud/c/a/a/b$b;->a()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/b;->f(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v0, p2, p4}, Lcom/apicloud/c/a/a/b$a;->a(IZ)V

    if-eqz p4, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->g(Landroid/view/View;)V

    :cond_1
    iget-object p4, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {p4, p1, p2, p3}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method a(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {p2}, Lcom/apicloud/c/a/a/b$b;->a()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/b;->f(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v0, p2, p3}, Lcom/apicloud/c/a/a/b$a;->a(IZ)V

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->g(Landroid/view/View;)V

    :cond_1
    iget-object p3, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {p3, p1, p2}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;I)V

    return-void
.end method

.method a(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/apicloud/c/a/a/b;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method b()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/b$b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method b(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b$a;->e(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method b(I)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->f(I)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method c()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0}, Lcom/apicloud/c/a/a/b$b;->a()I

    move-result v0

    return v0
.end method

.method c(I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v3, v2}, Lcom/apicloud/c/a/a/b$b;->b(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method c(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method d(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/b$a;->a(I)V

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->g(Landroid/view/View;)V

    return-void
.end method

.method e(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->f(I)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b$a;->d(I)Z

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->c(I)V

    return-void
.end method

.method e(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/b$a;->b(I)V

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/b;->h(Landroid/view/View;)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v0, p1}, Lcom/apicloud/c/a/a/b$b;->a(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/b$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/b$a;->d(I)Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->a:Lcom/apicloud/c/a/a/b$b;

    invoke-interface {v1, p1}, Lcom/apicloud/c/a/a/b$b;->a(I)V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->b:Lcom/apicloud/c/a/a/b$a;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/b$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/c/a/a/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
