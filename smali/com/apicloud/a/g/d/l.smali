.class public Lcom/apicloud/a/g/d/l;
.super Landroid/transition/TransitionSet;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/transition/Transition;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:J

.field private d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apicloud/a/g/d/l;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/g/d/l;->setOrdering(I)Landroid/transition/TransitionSet;

    return-void
.end method

.method public static a(Landroid/view/View;Z)Lcom/apicloud/a/g/d/l;
    .locals 2

    const v0, 0x7f040016

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/g/d/l;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/apicloud/a/g/d/l;

    invoke-direct {v1}, Lcom/apicloud/a/g/d/l;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/View;Z)Lcom/apicloud/a/g/d/l;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/d/l;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    invoke-virtual {v0, p0}, Lcom/apicloud/a/g/d/l;->removeTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/g/d/l;->addTarget(Landroid/view/View;)Landroid/transition/TransitionSet;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/ViewGroup;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/transition/Transition;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/apicloud/a/g/d/l;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    invoke-virtual {p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/apicloud/a/g/d/l;->c:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-virtual {p2, v2, v3}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    :cond_0
    invoke-virtual {p0, p2}, Lcom/apicloud/a/g/d/l;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/g/d/l;->a()V

    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/g/d/l;->removeTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Landroid/view/animation/Interpolator;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ease"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    :sswitch_1
    const-string v0, "ease-in-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p0

    :sswitch_2
    const-string v0, "ease-out"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p0

    :sswitch_3
    const-string v0, "linear"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    return-object p0

    :sswitch_4
    const-string v0, "ease-in"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75215c9c -> :sswitch_4
        -0x41b970db -> :sswitch_3
        -0x2f0a1f11 -> :sswitch_2
        -0x15938a9b -> :sswitch_1
        0x2f63ee -> :sswitch_0
    .end sparse-switch
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->f()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->e()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->g()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->h()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->i()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->j()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->k()V

    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/g/d/l;->b:Z

    return-void
.end method

.method private e()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/b;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/b;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/d/b;->setReparent(Z)V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/f;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/f;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/d/f;->setReparent(Z)V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/c;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/c;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/d/c;->setReparent(Z)V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/e;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/e;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/d/e;->setReparent(Z)V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/a;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/a;-><init>()V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->l()V

    return-void
.end method

.method private j()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/g;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/g;-><init>()V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/h;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/h;-><init>()V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/g/d/d;

    invoke-direct {v0}, Lcom/apicloud/a/g/d/d;-><init>()V

    invoke-virtual {v0}, Lcom/apicloud/a/g/d/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/g/d/l;->a(Ljava/lang/String;Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->d:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/g/d/l;->d:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/apicloud/a/g/d/l;->c:J

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/d/l;->setDuration(J)Landroid/transition/TransitionSet;

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/d/l;->d:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "margin-bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "min-height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "margin-top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->k()V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "transform-origin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "background-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "transform"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->j()V

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "margin-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "padding-left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "background-color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "padding-bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->c()V

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->d()V

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "background-position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "padding-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "max-height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :sswitch_16
    const-string v0, "padding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :sswitch_17
    const-string v0, "margin-right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "min-width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :sswitch_19
    const-string v0, "margin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->g()V

    goto :goto_0

    :sswitch_1a
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :sswitch_1b
    const-string v0, "opacity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->l()V

    goto :goto_0

    :sswitch_1c
    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->i()V

    goto :goto_0

    :sswitch_1d
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->f()V

    goto :goto_0

    :sswitch_1e
    const-string v0, "padding-top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->h()V

    goto :goto_0

    :sswitch_1f
    const-string v0, "max-width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/apicloud/a/g/d/l;->e()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6316b3e3 -> :sswitch_1f
        -0x5987fe67 -> :sswitch_1e
        -0x527265d5 -> :sswitch_1d
        -0x4f67aad2 -> :sswitch_1c
        -0x4b8807f5 -> :sswitch_1b
        -0x48c76ed9 -> :sswitch_1a
        -0x40737a52 -> :sswitch_19
        -0x350b9d75 -> :sswitch_18
        -0x34ed1ec3 -> :sswitch_17
        -0x300fc3ef -> :sswitch_16
        -0x198ec250 -> :sswitch_15
        -0x17a0fea0 -> :sswitch_14
        -0x13c4518 -> :sswitch_13
        0x179a1 -> :sswitch_12
        0x1c155 -> :sswitch_11
        0x32a007 -> :sswitch_10
        0x33af38 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x6be2dc6 -> :sswitch_d
        0x88e4367 -> :sswitch_c
        0x24147e04 -> :sswitch_b
        0x2467f7fc -> :sswitch_a
        0x28846843 -> :sswitch_9
        0x2c929929 -> :sswitch_8
        0x381698c6 -> :sswitch_7
        0x3ebe6b6c -> :sswitch_6
        0x4b83b940 -> :sswitch_5
        0x509c3ca7 -> :sswitch_4
        0x73b66312 -> :sswitch_3
        0x756c34b6 -> :sswitch_2
        0x79c8f502 -> :sswitch_1
        0x7c565f2a -> :sswitch_0
    .end sparse-switch
.end method

.method public b(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/d/l;->setStartDelay(J)Landroid/transition/TransitionSet;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/g/d/l;->d(Ljava/lang/String;)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/g/d/l;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    return-void
.end method

.method public b()Z
    .locals 4

    invoke-virtual {p0}, Lcom/apicloud/a/g/d/l;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/g/d/l;->getTransitionCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/g/d/l;->b()Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/g/d/l;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/apicloud/a/g/d/l;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/g/d/l;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
