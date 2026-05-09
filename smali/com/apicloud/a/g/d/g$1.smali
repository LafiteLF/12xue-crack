.class Lcom/apicloud/a/g/d/g$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/g/d/g;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/g/d/g;

.field private final synthetic b:Lcom/apicloud/a/g/d/g$a;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/a/g/d/g;Lcom/apicloud/a/g/d/g$a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/d/g$1;->a:Lcom/apicloud/a/g/d/g;

    iput-object p2, p0, Lcom/apicloud/a/g/d/g$1;->b:Lcom/apicloud/a/g/d/g$a;

    iput-object p3, p0, Lcom/apicloud/a/g/d/g$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/g/d/g$1;->b:Lcom/apicloud/a/g/d/g$a;

    iget-object v0, p0, Lcom/apicloud/a/g/d/g$1;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/d/g$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/g/d/g$1;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/apicloud/a/g/d/g;->a(Landroid/view/View;)V

    return-void
.end method
