.class public Lcom/apicloud/a/i/a/y/a;
.super Lcom/apicloud/a/i/a/y/a/k;


# instance fields
.field private a:Lcom/apicloud/a/i/a/y/a/n;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/k;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/apicloud/a/i/a/y/a/n;

    invoke-direct {v0, p1, p0}, Lcom/apicloud/a/i/a/y/a/n;-><init>(Lcom/apicloud/a/d;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a;->a:Lcom/apicloud/a/i/a/y/a/n;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/y/a/n;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/i/a/y/a/l;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/y/a/n;->a(Lcom/apicloud/a/i/a/y/a/m;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a;->b:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/apicloud/a/i/a/y/a/k;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/apicloud/a/i/a/y/a$1;

    invoke-direct {v1, p0, v0}, Lcom/apicloud/a/i/a/y/a$1;-><init>(Lcom/apicloud/a/i/a/y/a;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/y/a;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/y/a/k;->requestLayout()V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/y/a/k;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/y/a;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/y/a/k;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[rich-text]"

    return-object v0
.end method
