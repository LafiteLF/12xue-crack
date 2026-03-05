.class public Lcom/uzmap/pkg/uzcore/ae;
.super Lcom/uzmap/pkg/uzcore/d/k;


# static fields
.field private static b:F


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/uzmap/pkg/uzcore/z;->c:F

    sput v0, Lcom/uzmap/pkg/uzcore/ae;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/k;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

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

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/ae;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {p2, p1, p3}, Lcom/uzmap/pkg/uzcore/a;->a(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-static {}, Lcom/deepe/c/b/e;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/ae;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/ae;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/c/i/t;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/ae;->e(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->J()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->K()V

    :cond_0
    return-void
.end method

.method public f()Lcom/uzmap/pkg/uzcore/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/d/k;->getLayerType()I

    move-result v0

    return v0
.end method

.method protected h()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->E()V

    return-void
.end method

.method protected i()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected j()Z
    .locals 4

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->getContentHeight()I

    move-result v0

    int-to-float v0, v0

    sget v2, Lcom/uzmap/pkg/uzcore/ae;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/a;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/k;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "frameh["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/ae;->a:Lcom/uzmap/pkg/uzcore/a;

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
