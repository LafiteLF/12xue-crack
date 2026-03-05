.class Lcom/apicloud/a/i/a/s/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/s/h;->a(FFFF)Lcom/apicloud/a/i/a/s/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/s/h;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/s/h;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/h$1;->a:Lcom/apicloud/a/i/a/s/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h$1;->a:Lcom/apicloud/a/i/a/s/h;

    invoke-static {p1}, Lcom/apicloud/a/i/a/s/h;->a(Lcom/apicloud/a/i/a/s/h;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h$1;->a:Lcom/apicloud/a/i/a/s/h;

    invoke-static {p1}, Lcom/apicloud/a/i/a/s/h;->a(Lcom/apicloud/a/i/a/s/h;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h$1;->a:Lcom/apicloud/a/i/a/s/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/s/h;->a(Lcom/apicloud/a/i/a/s/h;Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/s/h$1;->a:Lcom/apicloud/a/i/a/s/h;

    invoke-static {p1}, Lcom/apicloud/a/i/a/s/h;->b(Lcom/apicloud/a/i/a/s/h;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
