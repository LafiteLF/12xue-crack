.class public Lcom/uzmap/pkg/a/c;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/apicloud/b/a/d;


# instance fields
.field private final a:Lcom/uzmap/pkg/uzcore/d/i;

.field private b:Lcom/uzmap/pkg/uzcore/a;

.field private c:Lcom/deepe/c/i/i;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/a/c;->d:Z

    iput-object p2, p0, Lcom/uzmap/pkg/a/c;->a:Lcom/uzmap/pkg/uzcore/d/i;

    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    return-void
.end method

.method private a()V
    .locals 7

    iget-boolean v0, p0, Lcom/uzmap/pkg/a/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/a/c;->d:Z

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->a:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    iget-object v2, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    invoke-virtual {v2}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/a/a;->a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    iget-object v2, p0, Lcom/uzmap/pkg/a/c;->a:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/d/i;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->setBaseUrl(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->t:Z

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->c(Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/c;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/uzmap/pkg/a/c;->a:Lcom/uzmap/pkg/uzcore/d/i;

    const/4 v5, 0x2

    iget-object v6, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;ILjava/lang/String;Z)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    iget-boolean v3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->E:Z

    invoke-interface {v2, v3}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    iget-boolean v3, v0, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d(Z)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/uzmap/pkg/uzcore/a;->setHorizontalScrollBarEnabled(Z)V

    iget-boolean v3, v0, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e(Z)Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/uzmap/pkg/uzcore/a;->setVerticalScrollBarEnabled(Z)V

    iget v3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->S:I

    invoke-interface {v2, v3}, Lcom/uzmap/pkg/uzcore/a;->setOverScrollMode(I)V

    iget-object v3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {v2, v3}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    iget-object v3, v0, Lcom/uzmap/pkg/uzcore/b/d;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/uzmap/pkg/a/c;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->P:Lcom/uzmap/pkg/uzcore/ad;

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/ad;)V

    iget-boolean v4, v0, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    const-string v5, "bounces"

    invoke-virtual {v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-boolean v4, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->A:Z

    :cond_1
    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d:Lcom/uzmap/pkg/uzcore/b;

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/b;)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    :cond_2
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->f()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzcore/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/a/c;->addView(Landroid/view/View;)V

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/a;->f()V

    iget-boolean v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->C:Z

    invoke-interface {v2, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    iget-boolean v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->D:Z

    invoke-interface {v2, v0}, Lcom/uzmap/pkg/uzcore/a;->c(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->a:Lcom/uzmap/pkg/uzcore/d/i;

    iget-object v4, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lcom/uzmap/pkg/uzcore/d/i;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V

    iget-object v0, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    iget-object v3, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->y:Ljava/lang/String;

    invoke-static {v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->Q:Lcom/deepe/c/i/t;

    invoke-interface {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v2, v0, v3, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object v2, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/b/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    invoke-interface {p1}, Lcom/apicloud/b/a/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "headers"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "avm"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/b/a/b;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    invoke-interface {p1}, Lcom/apicloud/b/a/b;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pageParam"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c(Lcom/apicloud/b/a/b;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "showProgress"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    invoke-interface {p1}, Lcom/apicloud/b/a/b;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "progress"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v1}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "bounces"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "overScrollMode"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "vScrollBarEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "customRefreshHeader"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "hScrollBarEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "scaleEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "reload"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->reload()V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->c:Lcom/deepe/c/i/i;

    const-string v1, "allowEdit"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/a/c;->b:Lcom/uzmap/pkg/uzcore/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/uzmap/pkg/a/c;->a()V

    return-void
.end method
