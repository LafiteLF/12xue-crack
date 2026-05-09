.class Lcom/uzmap/pkg/uzcore/d/b$a;
.super Lcom/deepe/c/b/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/d/b;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-direct {p0}, Lcom/deepe/c/b/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/uzmap/pkg/uzcore/d/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    :cond_0
    return p1
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/uzmap/pkg/uzcore/d/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 p1, 0x4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->getVisibility()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/d/b;->b(Lcom/uzmap/pkg/uzcore/d/b;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/b;->k(I)Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    move-result-object p1

    iget-object p2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->Q:Lcom/deepe/c/i/t;

    invoke-virtual {v0, p2, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_2
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/uzmap/pkg/uzcore/d/b;)Lcom/deepe/c/i/v;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz p1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b$a;->a:Lcom/uzmap/pkg/uzcore/d/b;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/uzmap/pkg/uzcore/d/b;)Lcom/deepe/c/i/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    return v0
.end method
