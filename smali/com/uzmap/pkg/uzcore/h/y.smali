.class public Lcom/uzmap/pkg/uzcore/h/y;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/y$a;
    }
.end annotation


# instance fields
.field private a:Lcom/uzmap/pkg/uzcore/external/h;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/h/y$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/h/y$1;-><init>(Lcom/uzmap/pkg/uzcore/h/y;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final I()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->b:Z

    return v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final K()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/external/h;->c()V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/AttributeSet;)Lcom/uzmap/pkg/uzcore/h/y$a;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/y$a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/h/y$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/external/g$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/external/g;->a(Landroid/widget/RelativeLayout;Lcom/uzmap/pkg/uzcore/external/g$a;)Lcom/uzmap/pkg/uzcore/external/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/external/g;->a()V

    return-void
.end method

.method public final b(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/external/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/external/h;->a()V

    invoke-static {}, Lcom/deepe/c/b/e;->c()Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/external/h;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {v0, p4}, Lcom/uzmap/pkg/uzcore/external/h;->a(Z)V

    iget-object p4, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p4, p3, p2}, Lcom/uzmap/pkg/uzcore/external/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/external/h;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/external/h;->bringToFront()V

    return-void

    :cond_1
    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/external/h;->a(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->a:Lcom/uzmap/pkg/uzcore/external/h;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/external/h;->b()V

    return-void
.end method

.method protected c(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/y;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return p1
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/y;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/c/a/i;->b(Landroid/view/View;)V

    return-void
.end method

.method protected final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->b:Z

    return-void
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/uzmap/pkg/uzcore/h/y$a;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/y$a;

    check-cast p1, Lcom/uzmap/pkg/uzcore/h/y$a;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/h/y$a;-><init>(Lcom/uzmap/pkg/uzcore/h/y$a;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/y$a;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/h/y$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzcore/h/y$a;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/h/y$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;->a(Landroid/util/AttributeSet;)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object p1

    return-object p1
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->c:Ljava/lang/String;

    const-string v1, "root"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->c:Ljava/lang/String;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/y;->d:Ljava/lang/String;

    return-void
.end method

.method protected final onAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/y;->f(Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationEnd()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/y;->e:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/y;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/y;->a()V

    :cond_0
    return-void
.end method

.method protected final onAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/y;->f(Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAnimationStart()V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/y;->c(Landroid/view/View;)V

    :cond_0
    return-void
.end method
