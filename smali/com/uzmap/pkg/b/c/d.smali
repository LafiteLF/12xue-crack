.class public Lcom/uzmap/pkg/b/c/d;
.super Lcom/deepe/c/b/a/a;


# instance fields
.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/deepe/c/b/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/b/c/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/b/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->d:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->e:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->f:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/d;->h()V

    return-void
.end method

.method private h()V
    .locals 0

    return-void
.end method

.method private l(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/a/a$e;

    iget p1, p1, Lcom/deepe/c/b/a/a$e;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public b(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->g_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->g_()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->b(I)I

    move-result p1

    return p1
.end method

.method public final c_(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->c_(I)V

    return-void
.end method

.method public c_(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->d:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->d:Z

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->f:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->f:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    new-instance v0, Lcom/uzmap/pkg/b/c/d$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/c/d$1;-><init>(Lcom/uzmap/pkg/b/c/d;)V

    invoke-static {p0, p1, v0}, Lcom/deepe/c/b/n;->a(Landroid/view/ViewGroup;FLcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/b/c/d;->g:Lcom/deepe/c/b/n;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/n;->a(I)V

    :cond_0
    return-void
.end method

.method public d_(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->e:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/d;->e:Z

    :cond_0
    return-void
.end method

.method protected f_()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/c/d;->e(I)Z

    move-result v0

    return v0
.end method

.method protected g()Z
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/b/c/d;->e(I)Z

    move-result v0

    return v0
.end method

.method protected g_()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->f_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->f:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/b/c/d;->g:Lcom/deepe/c/b/n;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/c/d;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->g_()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/d;->f:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/b/c/d;->g:Lcom/deepe/c/b/n;

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v3, v0, v2}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/c/d;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/d;->g_()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/b/a/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
