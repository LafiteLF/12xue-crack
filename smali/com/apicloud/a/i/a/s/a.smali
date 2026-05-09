.class public Lcom/apicloud/a/i/a/s/a;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/s/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/b/n;

.field private b:Lcom/apicloud/a/i/a/s/a$a;

.field private c:Z

.field private d:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/a;->setClipChildren(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/s/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/a;II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/s/a;->getChildDrawingOrder(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p1, v0

    new-instance v0, Lcom/apicloud/a/i/a/s/a$a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/s/a$a;-><init>(Lcom/apicloud/a/i/a/s/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Lcom/deepe/c/b/n;->a(Landroid/view/ViewGroup;FLcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/n;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/n;->a(F)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/s/a$a;->a(Lcom/deepe/c/b/n;)V

    return-void
.end method

.method private a(Landroid/view/View;FF)V
    .locals 10

    move-object p2, p1

    check-cast p2, Lcom/apicloud/a/i/a/g/g;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getHeight()I

    move-result v3

    invoke-interface {p2}, Lcom/apicloud/a/i/a/g/g;->d()I

    move-result v4

    invoke-interface {p2}, Lcom/apicloud/a/i/a/g/g;->e()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez p3, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-gez v0, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-le v1, v2, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    move v1, v7

    :goto_2
    if-le p1, v3, :cond_3

    goto :goto_3

    :cond_3
    move v6, v7

    :goto_3
    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v1, :cond_5

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {p2}, Lcom/apicloud/a/i/a/g/g;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/a$a;->a(I)V

    sub-int/2addr v2, v4

    sub-int/2addr v3, v5

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {p1, v7, v7, v2, v3}, Lcom/deepe/c/b/n;->a(IIII)V

    goto :goto_5

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    move p3, v7

    :cond_6
    if-eqz v9, :cond_7

    move v0, v7

    :cond_7
    if-eqz v1, :cond_8

    sub-int p3, v2, v4

    :cond_8
    if-eqz v6, :cond_9

    sub-int v0, v3, v5

    :cond_9
    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/s/a$a;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {p1, p3, v0}, Lcom/deepe/c/b/n;->a(II)Z

    :goto_5
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->invalidate()V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/a;Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/s/a;->a(Landroid/view/View;FF)V

    return-void
.end method

.method private final c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/s/a$a;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1, p2, p3}, Lcom/deepe/c/b/n;->a(Landroid/view/View;II)Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->invalidate()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/a;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/a;->d:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/s/a$1;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/s/a$1;-><init>(Lcom/apicloud/a/i/a/s/a;)V

    invoke-direct {p1, v0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/a;->d:Landroid/view/ScaleGestureDetector;

    :cond_0
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/g;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/i/a/g/g;

    invoke-interface {v0, p0}, Lcom/apicloud/a/i/a/g/g;->a(Lcom/apicloud/a/i/a/g/h;)V

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/n;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/s/a;->c(Z)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/n;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->a:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/n;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/a;->b:Lcom/apicloud/a/i/a/s/a$a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/s/a$a;->a(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[movable-area]"

    return-object v0
.end method
