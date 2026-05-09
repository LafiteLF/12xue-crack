.class public Lcom/uzmap/pkg/b/c/i;
.super Lcom/deepe/c/b/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/c/i$a;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/b/c/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/b/d/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->setAnimationCacheEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->setSaveFromParentEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->setFocusable(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->setOverScrollMode(I)V

    new-instance p1, Lcom/uzmap/pkg/b/c/i$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/b/c/i$1;-><init>(Lcom/uzmap/pkg/b/c/i;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/c/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/c/i;->b(Z)V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/i;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/b/c/i$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/i;->a(Lcom/deepe/c/b/d/b$e;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    :cond_0
    return-void
.end method

.method protected final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    return v0
.end method

.method protected d(I)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/b/c/i;->b(Z)V

    :try_start_0
    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/c/i;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/deepe/c/b/d/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method
