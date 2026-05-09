.class public Lcom/apicloud/a/i/a/ag/a;
.super Landroid/widget/TextView;

# interfaces
.implements Lcom/apicloud/a/i/a/g/k;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/ag/a;->b:I

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ag/a;->setGravity(I)V

    invoke-static {p0}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/q/a$a;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ag/a;->a(Lcom/apicloud/a/i/a/q/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getLineHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    div-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/a/i/a/ag/a;->b:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ag/a;->setLines(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ag/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ag/a;->a()V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/q/a$a;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/q/a$a;->t()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isSingleLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ag/a;->a:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->isSingleLine()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/ag/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ag/a$1;-><init>(Lcom/apicloud/a/i/a/ag/a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ag/a;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setLines(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    iput p1, p0, Lcom/apicloud/a/i/a/ag/a;->b:I

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ag/a;->a:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ag/a;->a()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/apicloud/a/i/a/ag/a;->b:I

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ag/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[text]"

    return-object v0
.end method
