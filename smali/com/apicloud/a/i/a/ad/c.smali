.class Lcom/apicloud/a/i/a/ad/c;
.super Lcom/apicloud/a/i/a/ad/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/ad/b;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/ad/j;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/ad/b;->a(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/a/ad/c;->c(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/ad/c;->a(Landroid/view/View;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    :goto_0
    iget-object p2, p1, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    check-cast p2, Lcom/apicloud/a/i/a/g/d;

    invoke-virtual {p2, p3}, Lcom/apicloud/a/i/a/g/d;->a(I)V

    iget-object p1, p1, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    return-object p1
.end method

.method protected d(I)Lcom/apicloud/a/i/a/ad/d;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/ad/b;->d(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/c;->e(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/c;->e()Lcom/apicloud/a/c/l;

    move-result-object v1

    const-string v2, "swiper-item"

    invoke-virtual {v1, v2, v0, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ad/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Lcom/apicloud/a/i/a/ad/f;

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/c;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/a/ad/f;-><init>(Lcom/apicloud/a/d;)V

    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/ad/c;->a(ILandroid/view/View;Ljava/lang/String;)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    return-object p1
.end method
