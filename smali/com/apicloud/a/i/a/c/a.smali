.class public Lcom/apicloud/a/i/a/c/a;
.super Landroid/widget/Button;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;
.implements Lcom/apicloud/a/i/a/g/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/c/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/i;->b(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/a;->setMaxLines(I)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/a;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/a;->setAllCaps(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/apicloud/a/i/d/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/c/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/c/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/Button;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[button]"

    return-object v0
.end method
