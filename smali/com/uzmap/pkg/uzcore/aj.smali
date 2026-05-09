.class public Lcom/uzmap/pkg/uzcore/aj;
.super Lcom/uzmap/pkg/uzcore/d/l;


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/l;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/View;ZZ)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/aj;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p2, p1, p3}, Lcom/uzmap/pkg/uzcore/a;->a(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/aj;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/i/t;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/aj;->e(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->J()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->K()V

    :cond_0
    return-void
.end method

.method public f()Lcom/uzmap/pkg/uzcore/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->L()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType()I
    .locals 2

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/d/l;->getLayerType()I

    move-result v0

    return v0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/l;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frameh["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/aj;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
