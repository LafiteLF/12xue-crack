.class Lcom/apicloud/c/a/a/c$6;
.super Lcom/apicloud/c/a/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/c;->b(Lcom/apicloud/c/a/a/j$w;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/c;

.field private final synthetic b:Lcom/apicloud/c/a/a/j$w;

.field private final synthetic c:I

.field private final synthetic d:Landroid/view/View;

.field private final synthetic e:I

.field private final synthetic f:Landroid/view/ViewPropertyAnimator;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/c;Lcom/apicloud/c/a/a/j$w;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/c$6;->a:Lcom/apicloud/c/a/a/c;

    iput-object p2, p0, Lcom/apicloud/c/a/a/c$6;->b:Lcom/apicloud/c/a/a/j$w;

    iput p3, p0, Lcom/apicloud/c/a/a/c$6;->c:I

    iput-object p4, p0, Lcom/apicloud/c/a/a/c$6;->d:Landroid/view/View;

    iput p5, p0, Lcom/apicloud/c/a/a/c$6;->e:I

    iput-object p6, p0, Lcom/apicloud/c/a/a/c$6;->f:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/apicloud/c/a/a/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/apicloud/c/a/a/c$6;->c:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/apicloud/c/a/a/c$6;->e:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->f:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$6;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/c;->j(Lcom/apicloud/c/a/a/j$w;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->a:Lcom/apicloud/c/a/a/c;

    iget-object p1, p1, Lcom/apicloud/c/a/a/c;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$6;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->a:Lcom/apicloud/c/a/a/c;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/c;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$6;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$6;->b:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/c;->m(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method
