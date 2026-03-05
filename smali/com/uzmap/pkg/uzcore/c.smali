.class public Lcom/uzmap/pkg/uzcore/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/animation/Animation;

.field public b:Landroid/view/animation/Animation;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    sget v3, Lcom/deepe/c/b/c;->a:I

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    sget v2, Lcom/deepe/c/b/c;->a:I

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/c;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    :cond_2
    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/c;->c:Z

    return v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/c;->c:Z

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    return-void
.end method
