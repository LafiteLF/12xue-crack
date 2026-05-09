.class Lcom/apicloud/a/i/a/d/a/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/m;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/m$1;->a:Lcom/apicloud/a/i/a/d/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m$1;->a:Lcom/apicloud/a/i/a/d/a/m;

    invoke-virtual {p1, p3, p4}, Lcom/apicloud/a/i/a/d/a/m;->b(II)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m$1;->a:Lcom/apicloud/a/i/a/d/a/m;

    iget-object p1, p1, Lcom/apicloud/a/i/a/d/a/m;->a:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->isInLayout()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m$1;->a:Lcom/apicloud/a/i/a/d/a/m;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/m;->e()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/m$1;->a:Lcom/apicloud/a/i/a/d/a/m;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/apicloud/a/i/a/d/a/m;->b(II)V

    return-void
.end method
