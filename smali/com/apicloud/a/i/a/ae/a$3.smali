.class Lcom/apicloud/a/i/a/ae/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ae/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ae/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ae/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->c(Lcom/apicloud/a/i/a/ae/a;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->o(Lcom/apicloud/a/i/a/ae/a;)Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a;Z)V

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->n(Lcom/apicloud/a/i/a/ae/a;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a;I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ae/a;->a(Lcom/apicloud/a/i/a/ae/a;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object p1

    iput v1, p1, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->l(Lcom/apicloud/a/i/a/ae/a;)F

    move-result v0

    iput v0, p1, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$3;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
