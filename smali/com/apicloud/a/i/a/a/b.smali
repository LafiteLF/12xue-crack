.class public Lcom/apicloud/a/i/a/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/animation/ObjectAnimator;

.field private final b:Lcom/apicloud/a/d;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/apicloud/a/i/a/a/b;->b:Lcom/apicloud/a/d;

    return-void
.end method

.method private c(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/d/l;->d(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/apicloud/a/i/a/a/b$a;

    invoke-direct {v2, v0}, Lcom/apicloud/a/i/a/a/b$a;-><init>(Lcom/apicloud/a/c/l;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/a/b;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->b:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    const-class v1, Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public b(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(J)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/a/b;->c(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public c(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public e(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public f(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public i(F)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/a/b;->c:Ljava/util/List;

    sget-object v1, Landroid/view/View;->ROTATION_Y:Landroid/util/Property;

    invoke-virtual {p0, v1, p1}, Lcom/apicloud/a/i/a/a/b;->a(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
