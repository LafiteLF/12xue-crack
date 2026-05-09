.class Lcom/deepe/c/b/c/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/c/e;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-boolean p1, p1, Lcom/deepe/c/b/c/e;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-object p1, p1, Lcom/deepe/c/b/c/e;->j:Lcom/deepe/c/b/c/d;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/c/d;->setAlpha(I)V

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-object p1, p1, Lcom/deepe/c/b/c/e;->j:Lcom/deepe/c/b/c/d;

    invoke-virtual {p1}, Lcom/deepe/c/b/c/d;->start()V

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-boolean p1, p1, Lcom/deepe/c/b/c/e;->k:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-object p1, p1, Lcom/deepe/c/b/c/e;->a:Lcom/deepe/c/b/c/e$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-object p1, p1, Lcom/deepe/c/b/c/e;->a:Lcom/deepe/c/b/c/e$b;

    invoke-interface {p1}, Lcom/deepe/c/b/c/e$b;->l_()V

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    iget-object v0, p1, Lcom/deepe/c/b/c/e;->e:Lcom/deepe/c/b/c/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/a;->getTop()I

    move-result v0

    iput v0, p1, Lcom/deepe/c/b/c/e;->c:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/b/c/e$1;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {p1}, Lcom/deepe/c/b/c/e;->a()V

    :goto_0
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
