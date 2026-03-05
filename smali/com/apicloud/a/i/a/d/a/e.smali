.class public Lcom/apicloud/a/i/a/d/a/e;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/d/a/e$a;,
        Lcom/apicloud/a/i/a/d/a/e$b;,
        Lcom/apicloud/a/i/a/d/a/e$c;
    }
.end annotation


# instance fields
.field a:Lcom/apicloud/a/i/a/d/a/f;

.field private final b:Lcom/apicloud/a/i/a/d/a/e$b;

.field private c:Z

.field private final d:Lcom/apicloud/a/i/a/d/a/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/d/a/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/d/a/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/e;->d:Lcom/apicloud/a/i/a/d/a/i;

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/e;->a(Landroid/content/Context;)Lcom/apicloud/a/i/a/d/a/j;

    move-result-object p2

    new-instance p3, Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-direct {p3, p0}, Lcom/apicloud/a/i/a/d/a/e$b;-><init>(Lcom/apicloud/a/i/a/d/a/e;)V

    iput-object p3, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge p3, v0, :cond_1

    new-instance p3, Lcom/apicloud/a/i/a/d/a/b;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-direct {p3, v0, p2}, Lcom/apicloud/a/i/a/d/a/b;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V

    :goto_0
    iput-object p3, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    goto :goto_1

    :cond_1
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p3, v0, :cond_2

    new-instance p3, Lcom/apicloud/a/i/a/d/a/c;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-direct {p3, v0, p2, p1}, Lcom/apicloud/a/i/a/d/a/c;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance p3, Lcom/apicloud/a/i/a/d/a/d;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-direct {p3, v0, p2, p1}, Lcom/apicloud/a/i/a/d/a/d;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;Landroid/content/Context;)V

    goto :goto_0

    :goto_1
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/apicloud/a/i/a/d/a/e;->c:Z

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/d/a/e;->a(I)V

    sget-object p2, Lcom/apicloud/a/i/a/d/a/g;->a:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/d/a/e;->b(Z)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/d/a/e;->b(I)V

    new-instance p2, Lcom/apicloud/a/i/a/d/a/e$1;

    invoke-direct {p2, p0, p1}, Lcom/apicloud/a/i/a/d/a/e$1;-><init>(Lcom/apicloud/a/i/a/d/a/e;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/d/a/e;->d:Lcom/apicloud/a/i/a/d/a/i;

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/apicloud/a/i/a/d/a/j;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/a/m;

    invoke-direct {v0, p1, p0}, Lcom/apicloud/a/i/a/d/a/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/d/a/n;

    invoke-direct {v0, p1, p0}, Lcom/apicloud/a/i/a/d/a/n;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/f/c;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/apicloud/a/i/a/d/f;->a:Lcom/apicloud/a/i/a/d/f;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/e$b;->a(Lcom/apicloud/a/i/a/d/f;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/d/a/b;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/d/a/e;->a(Landroid/content/Context;)Lcom/apicloud/a/i/a/d/a/j;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/apicloud/a/i/a/d/a/b;-><init>(Lcom/apicloud/a/i/a/d/a/f$a;Lcom/apicloud/a/i/a/d/a/j;)V

    iput-object v1, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/e;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->a()Z

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/f;->a(I)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/f;->a(Lcom/apicloud/a/i/a/d/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/e$b;->a(Lcom/apicloud/a/i/a/d/a/e$a;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/f;->a(Lcom/apicloud/a/i/a/d/a;)V

    return-void
.end method

.method public a(Ljava/io/File;Lcom/apicloud/a/i/a/d/a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/f/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    if-eqz p1, :cond_0

    sget-object p2, Lcom/apicloud/a/i/a/d/f;->b:Lcom/apicloud/a/i/a/d/f;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/a/e$b;->a(Lcom/apicloud/a/i/a/d/f;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a;)V

    :cond_2
    iget-object p2, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/d/a/f;->a(Ljava/io/File;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/e;->c:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/a/e;->c:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->requestLayout()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->b()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/f;->b(I)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/d/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a;)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/f;->j()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/d/a/f;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->d()Z

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->e()I

    move-result v0

    return v0
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->f()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/apicloud/a/i/a/d/a/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->g()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->h()Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->i()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->m()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->d:Lcom/apicloud/a/i/a/d/a/i;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/d/a/i;->a(Landroid/view/Display;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->d:Lcom/apicloud/a/i/a/d/a/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/i;->a()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/e;->c:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->b:Lcom/apicloud/a/i/a/d/a/e$b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e$b;->c()V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v0, v1, :cond_3

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->f()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/a;->a()F

    move-result v0

    mul-float/2addr v4, v0

    float-to-int v0, v4

    if-ne v2, v3, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_3
    if-eq v0, v1, :cond_5

    if-ne v2, v1, :cond_5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->f()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/d/a/a;->a()F

    move-result v2

    mul-float/2addr v4, v2

    float-to-int v2, v4

    if-ne v0, v3, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_4
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e;->a:Lcom/apicloud/a/i/a/d/a/f;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/f;->p()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/d/a/e$c;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/apicloud/a/i/a/d/a/e$c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/e$c;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Lcom/apicloud/a/i/a/d/a/e$c;->a:I

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/e;->a(I)V

    iget-object v0, p1, Lcom/apicloud/a/i/a/d/a/e$c;->b:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/e;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    iget-boolean v0, p1, Lcom/apicloud/a/i/a/d/a/e$c;->c:Z

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/e;->b(Z)V

    iget p1, p1, Lcom/apicloud/a/i/a/d/a/e$c;->d:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/e;->b(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/d/a/e$c;

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/d/a/e$c;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->d()I

    move-result v1

    iput v1, v0, Lcom/apicloud/a/i/a/d/a/e$c;->a:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->f()Lcom/apicloud/a/i/a/d/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/a/i/a/d/a/e$c;->b:Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->g()Z

    move-result v1

    iput-boolean v1, v0, Lcom/apicloud/a/i/a/d/a/e$c;->c:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/e;->h()I

    move-result v1

    iput v1, v0, Lcom/apicloud/a/i/a/d/a/e$c;->d:I

    return-object v0
.end method
