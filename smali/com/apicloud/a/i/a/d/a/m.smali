.class Lcom/apicloud/a/i/a/d/a/m;
.super Lcom/apicloud/a/i/a/d/a/j;


# instance fields
.field final a:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/j;-><init>()V

    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setType(I)V

    new-instance p2, Lcom/apicloud/a/i/a/d/a/m$1;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/d/a/m$1;-><init>(Lcom/apicloud/a/i/a/d/a/m;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method a()Landroid/view/Surface;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/m;->f()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 0

    return-void
.end method

.method a(II)V
    .locals 0

    return-void
.end method

.method b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    return-object v0
.end method

.method c()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/m;->h()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/m;->i()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method f()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method
