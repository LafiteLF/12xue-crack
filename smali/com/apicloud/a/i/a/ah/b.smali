.class public Lcom/apicloud/a/i/a/ah/b;
.super Lcom/apicloud/a/i/a/i/d;


# instance fields
.field private a:Lcom/apicloud/a/i/a/ah/a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "root-view"

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/i/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ah/b;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ah/a;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ah/a;
    .locals 2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ah/b;->a:Lcom/apicloud/a/i/a/ah/a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/ah/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ah/b;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ah/a;-><init>(Lcom/apicloud/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ah/b;->a:Lcom/apicloud/a/i/a/ah/a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ah/a;->setClickable(Z)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ah/b;->a:Lcom/apicloud/a/i/a/ah/a;

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/ah/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ah/b;->e()Lcom/apicloud/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/a/d;->o()Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ah/b;->a:Lcom/apicloud/a/i/a/ah/a;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ah/b;->a:Lcom/apicloud/a/i/a/ah/a;

    return-object p1
.end method
