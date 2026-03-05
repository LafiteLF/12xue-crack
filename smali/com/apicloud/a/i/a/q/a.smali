.class public Lcom/apicloud/a/i/a/q/a;
.super Lcom/apicloud/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/q/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/q/a;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/q/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/q/a;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/q/a;->h(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/q/a;->i(I)V

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/q/a;->j(I)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/q/a;->k(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/q/a;->m(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/q/a;->e(F)V

    return-void
.end method

.method public static b(Z)Lcom/apicloud/a/i/a/q/a$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(II)V

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/q/a$a;->e(F)V

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/view/View;)Lcom/apicloud/c/b/b;
    .locals 1

    instance-of v0, p0, Lcom/apicloud/c/a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/apicloud/c/b/b;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/q/a$a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/apicloud/a/i/a/q/a;->b(Z)Lcom/apicloud/a/i/a/q/a$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/q/a$a;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/q/a$a;
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/q/a$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    check-cast p1, Lcom/apicloud/a/i/a/q/a$a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Lcom/apicloud/a/i/a/q/a$a;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/apicloud/a/i/a/q/a$a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/q/a$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic b(Landroid/util/AttributeSet;)Lcom/apicloud/c/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/q/a;->a(Landroid/util/AttributeSet;)Lcom/apicloud/a/i/a/q/a$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/c/a$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/q/a;->a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/a/i/a/q/a$a;

    move-result-object p1

    return-object p1
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Lcom/apicloud/a/i/a/q/a$a;

    return p1
.end method

.method public synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/q/a;->i()Lcom/apicloud/a/i/a/q/a$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/q/a;->a:Lcom/apicloud/a/d;

    return-object v0
.end method

.method public i()Lcom/apicloud/a/i/a/q/a$a;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/apicloud/a/i/a/q/a;->b(Z)Lcom/apicloud/a/i/a/q/a$a;

    move-result-object v0

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
