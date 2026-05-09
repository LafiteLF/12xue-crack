.class Lcom/apicloud/c/a/a/c$4;
.super Lcom/apicloud/c/a/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/c;->u(Lcom/apicloud/c/a/a/j$w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/c;

.field private final synthetic b:Lcom/apicloud/c/a/a/j$w;

.field private final synthetic c:Landroid/view/ViewPropertyAnimator;

.field private final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/c;Lcom/apicloud/c/a/a/j$w;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/c$4;->a:Lcom/apicloud/c/a/a/c;

    iput-object p2, p0, Lcom/apicloud/c/a/a/c$4;->b:Lcom/apicloud/c/a/a/j$w;

    iput-object p3, p0, Lcom/apicloud/c/a/a/c$4;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/apicloud/c/a/a/c$4;->d:Landroid/view/View;

    invoke-direct {p0}, Lcom/apicloud/c/a/a/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->d:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$4;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/c;->i(Lcom/apicloud/c/a/a/j$w;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->a:Lcom/apicloud/c/a/a/c;

    iget-object p1, p1, Lcom/apicloud/c/a/a/c;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$4;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->a:Lcom/apicloud/c/a/a/c;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/c;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$4;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$4;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/c;->l(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method
