.class Lcom/apicloud/a/i/a/ae/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->c(Lcom/apicloud/a/i/a/ae/a;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v1

    iget v1, v1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v3

    iget v3, v3, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object p1

    iget p1, p1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->h(Lcom/apicloud/a/i/a/ae/a;)F

    move-result v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->i(Lcom/apicloud/a/i/a/ae/a;)F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->h(Lcom/apicloud/a/i/a/ae/a;)F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->e(Lcom/apicloud/a/i/a/ae/a;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->j(Lcom/apicloud/a/i/a/ae/a;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->k(Lcom/apicloud/a/i/a/ae/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->l(Lcom/apicloud/a/i/a/ae/a;)F

    move-result v1

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->e(Lcom/apicloud/a/i/a/ae/a;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->m(Lcom/apicloud/a/i/a/ae/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->e(Lcom/apicloud/a/i/a/ae/a;)Landroid/animation/ArgbEvaluator;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v3

    iget v3, v3, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v4}, Lcom/apicloud/a/i/a/ae/a;->g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v4

    iget v4, v4, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/apicloud/a/i/a/ae/a$a;->c:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v3

    iget v3, v3, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget-object v4, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v4}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v4

    iget v4, v4, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Lcom/apicloud/a/i/a/ae/a$a;->d:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->c(Lcom/apicloud/a/i/a/ae/a;)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v1

    iget v1, v1, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v3

    iget v3, v3, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/apicloud/a/i/a/ae/a$a;->a:F

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ae/a;->d(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ae/a;->e(Lcom/apicloud/a/i/a/ae/a;)Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ae/a;->f(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ae/a;->g(Lcom/apicloud/a/i/a/ae/a;)Lcom/apicloud/a/i/a/ae/a$a;

    move-result-object v3

    iget v3, v3, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/apicloud/a/i/a/ae/a$a;->b:I

    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ae/a$2;->a:Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ae/a;->postInvalidate()V

    return-void
.end method
