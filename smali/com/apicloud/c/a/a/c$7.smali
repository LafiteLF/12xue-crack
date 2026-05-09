.class Lcom/apicloud/c/a/a/c$7;
.super Lcom/apicloud/c/a/a/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/c;->a(Lcom/apicloud/c/a/a/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/c;

.field private final synthetic b:Lcom/apicloud/c/a/a/c$a;

.field private final synthetic c:Landroid/view/ViewPropertyAnimator;

.field private final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/c;Lcom/apicloud/c/a/a/c$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/c$7;->a:Lcom/apicloud/c/a/a/c;

    iput-object p2, p0, Lcom/apicloud/c/a/a/c$7;->b:Lcom/apicloud/c/a/a/c$a;

    iput-object p3, p0, Lcom/apicloud/c/a/a/c$7;->c:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/apicloud/c/a/a/c$7;->d:Landroid/view/View;

    invoke-direct {p0}, Lcom/apicloud/c/a/a/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->d:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->d:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$7;->b:Lcom/apicloud/c/a/a/c$a;

    iget-object v0, v0, Lcom/apicloud/c/a/a/c$a;->a:Lcom/apicloud/c/a/a/j$w;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/c/a/a/c;->a(Lcom/apicloud/c/a/a/j$w;Z)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->a:Lcom/apicloud/c/a/a/c;

    iget-object p1, p1, Lcom/apicloud/c/a/a/c;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$7;->b:Lcom/apicloud/c/a/a/c$a;

    iget-object v0, v0, Lcom/apicloud/c/a/a/c$a;->a:Lcom/apicloud/c/a/a/j$w;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->a:Lcom/apicloud/c/a/a/c;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/c;->d()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/apicloud/c/a/a/c$7;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$7;->b:Lcom/apicloud/c/a/a/c$a;

    iget-object v0, v0, Lcom/apicloud/c/a/a/c$a;->a:Lcom/apicloud/c/a/a/j$w;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/c/a/a/c;->b(Lcom/apicloud/c/a/a/j$w;Z)V

    return-void
.end method
