.class public Lcom/apicloud/a/i/a/q/b;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/q/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/q/b$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/q/b$a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/q/b$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/q/b$a;
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/q/b$a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/q/b$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/a/i/a/q/b$a;

    return p1
.end method

.method protected g()Lcom/apicloud/a/i/a/q/b$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/q/b$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/b$a;-><init>(II)V

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->g()Lcom/apicloud/a/i/a/q/b$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/q/b;->a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/q/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/q/b;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/q/b$a;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/q/b;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingTop()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/q/b;->measureChildren(II)V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-lt v2, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingRight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getPaddingBottom()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/b;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1, v1}, Lcom/apicloud/a/i/a/q/b;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v1}, Lcom/apicloud/a/i/a/q/b;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/q/b;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/q/b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
