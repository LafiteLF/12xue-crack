.class public Lcom/apicloud/a/a;
.super Lcom/apicloud/a/b;

# interfaces
.implements Lcom/apicloud/b/a;


# instance fields
.field private b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/a;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public static final a(Landroid/view/ViewGroup;)Lcom/apicloud/a/a;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/apicloud/a/a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/a;-><init>(Landroid/view/ViewGroup;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "root view can not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/a;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    const-string v0, "ActivityReferer onResume ... "

    invoke-static {v0}, Lcom/deepe/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/apicloud/a/d;->a(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    const-string v0, "ActivityReferer onVisibilityChanged ... "

    invoke-static {v0}, Lcom/deepe/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/b/a/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/a;->a(Lcom/apicloud/a/f/a/a;)V

    return-void
.end method

.method public a(Lcom/apicloud/b/a/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/a;->a(Lcom/apicloud/a/c/g$a;)V

    return-void
.end method

.method public final a(Lcom/apicloud/b/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/b;->a(Lcom/apicloud/b/c;)V

    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, "ActivityReferer onPause ... "

    invoke-static {v0}, Lcom/deepe/d/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/a;->a:Lcom/apicloud/a/d;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/apicloud/a/d;->a(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/a;->m()Lcom/apicloud/a/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/c/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/b;->d()V

    iget-object v0, p0, Lcom/apicloud/a/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final e()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a;->b:Landroid/view/ViewGroup;

    return-object v0
.end method
