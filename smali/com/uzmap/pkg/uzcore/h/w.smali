.class public Lcom/uzmap/pkg/uzcore/h/w;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/w$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/uzmap/pkg/uzcore/h/w$a;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/w$a;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1, v1}, Lcom/uzmap/pkg/uzcore/h/w$a;-><init>(IIII)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/w$a;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/h/w$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/h/w;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/uzmap/pkg/uzcore/h/w$a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingLeft()I

    move-result p5

    iget v0, p4, Lcom/uzmap/pkg/uzcore/h/w$a;->a:I

    add-int/2addr p5, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingTop()I

    move-result v0

    iget p4, p4, Lcom/uzmap/pkg/uzcore/h/w$a;->b:I

    add-int/2addr v0, p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, p5, v0, p4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/w;->measureChildren(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/w;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/uzmap/pkg/uzcore/h/w;->resolveSize(II)I

    move-result p1

    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzcore/h/w;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/w;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/w;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzcore/h/w$a;

    iget v6, v5, Lcom/uzmap/pkg/uzcore/h/w$a;->a:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v5, v5, Lcom/uzmap/pkg/uzcore/h/w$a;->b:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v5, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
