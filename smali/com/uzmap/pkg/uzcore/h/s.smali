.class Lcom/uzmap/pkg/uzcore/h/s;
.super Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/o;

    if-ne v2, p1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/h/o;->setSelected(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzcore/h/o;->setSelected(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final a(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v2, p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(ILcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/o;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/o;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final b()I
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-lt v1, v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/o;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/o;->b()I

    move-result v3

    if-le v3, v2, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public final b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/h/o;->b(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/s;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/h/o;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
