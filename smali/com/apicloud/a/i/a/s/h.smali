.class Lcom/apicloud/a/i/a/s/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/animation/ScaleAnimation;

.field private final b:Landroid/view/View;

.field private c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/h;->b:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/h;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/h;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/h;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/h;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/s/h;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/h;->b:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method final a(FFFF)Lcom/apicloud/a/i/a/s/h;
    .locals 8

    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iput-object v7, p0, Lcom/apicloud/a/i/a/s/h;->a:Landroid/view/animation/ScaleAnimation;

    const-wide/16 p1, 0x15e

    invoke-virtual {v7, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h;->a:Landroid/view/animation/ScaleAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h;->a:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h;->a:Landroid/view/animation/ScaleAnimation;

    new-instance p2, Lcom/apicloud/a/i/a/s/h$1;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/s/h$1;-><init>(Lcom/apicloud/a/i/a/s/h;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object p0
.end method

.method final a(Ljava/lang/Runnable;)Lcom/apicloud/a/i/a/s/h;
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/h;->c:Ljava/lang/Runnable;

    return-object p0
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/h;->a:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/h;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
