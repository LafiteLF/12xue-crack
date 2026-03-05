.class public Lcom/apicloud/a/i/a/x/d;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/x/g;


# instance fields
.field private d:I

.field private g:I

.field private h:I

.field private i:Lcom/apicloud/a/i/a/x/i;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/x/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/x/d;-><init>(Lcom/apicloud/a/d;I)V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/x/d;->d:I

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/x/d;->d(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/d;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/i;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/x/i;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/x/h;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/x/i;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/i;->b()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/x/i;->b(I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/apicloud/a/i/a/x/i;->c()V

    :cond_0
    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/d;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/x/d;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/x/d;->g:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/x/d;->g:I

    return-void
.end method

.method public f()Lcom/apicloud/a/i/a/x/i;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/d;->i:Lcom/apicloud/a/i/a/x/i;

    return-object v0
.end method

.method public f(I)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/x/d;->h:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/apicloud/a/i/a/x/d;->h:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/d;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/x/h;

    iget v1, p0, Lcom/apicloud/a/i/a/x/d;->h:I

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/x/h;->a(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/d;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/d;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/apicloud/a/i/a/x/d;->d:I

    if-nez v0, :cond_3

    sget v0, Lcom/apicloud/a/i/a/x/g;->a:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/apicloud/a/i/a/x/g;->b:I

    :goto_1
    return v0
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/d;->e()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[refresh]"

    return-object v0
.end method
