.class Lcom/apicloud/a/i/a/r/k;
.super Lcom/apicloud/c/a/a/j;


# instance fields
.field private I:Z

.field private J:Z

.field private K:Lcom/apicloud/a/i/a/r/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/c/a/a/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/k;->I:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/k;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/k;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/k;->setVerticalScrollBarEnabled(Z)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/r/k;->setScrollBarSize(I)V

    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/r/k;->setScrollBarStyle(I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/k;->setNestedScrollingEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/k;->setVerticalFadingEdgeEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/k;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->k(I)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/k;->I:Z

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/k;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/k;->K:Lcom/apicloud/a/i/a/r/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/s;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/c/a/a/j;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/r/k;->I:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/r/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/k;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/r/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/l;->a(Landroid/view/View;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/apicloud/a/i/a/r/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/k;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/r/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/l;->b(Landroid/view/View;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/r/k;->J:Z

    if-eq v0, p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Lcom/apicloud/c/a/a/j;->setNestedScrollingEnabled(Z)V

    :goto_0
    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/k;->J:Z

    :cond_1
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/k;->K:Lcom/apicloud/a/i/a/r/s;

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/r/s;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/a/i/a/r/s;-><init>(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/r/k;->K:Lcom/apicloud/a/i/a/r/s;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/j;->setOverScrollMode(I)V

    return-void
.end method
