.class public Lcom/apicloud/a/i/a/b/b;
.super Lcom/apicloud/a/i/a/q/b;


# instance fields
.field protected a:Lcom/apicloud/a/d;

.field private b:Lcom/apicloud/a/i/a/ai/a/d;

.field private c:Lcom/apicloud/a/i/a/b/a;

.field private d:Lcom/apicloud/a/i/a/b/e;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/q/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/b;->a:Lcom/apicloud/a/d;

    new-instance v0, Lcom/apicloud/a/i/a/b/a;

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/b/e;

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/b/e;-><init>(Lcom/apicloud/a/c/l;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/b/a;->a(Lcom/apicloud/a/i/a/b/e;)V

    :cond_0
    return-void
.end method

.method private l(Z)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/b/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    const v1, -0xb7b7b8

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->b()V

    new-instance v0, Lcom/apicloud/a/i/a/q/b$a;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/apicloud/a/i/a/q/b$a;-><init>(II)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/b/b;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->a(Lcom/apicloud/a/i/a/ai/a/d;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_0
    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->a(F)V

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->c(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->b()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->b:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->a(Ljava/lang/Float;)V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/b/b;->l(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->d()V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->a(Z)V

    return-void
.end method

.method public final d()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->j()F

    move-result v0

    return v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/a;->b(Z)V

    return-void
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->e()I

    move-result v0

    return v0
.end method

.method public final e(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->a(Z)V

    return-void
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->c:Lcom/apicloud/a/i/a/b/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/a;->f()I

    move-result v0

    return v0
.end method

.method public final f(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->b(Z)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->c(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->d(Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->e(Z)V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->f(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/b;->h()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/b;->d:Lcom/apicloud/a/i/a/b/e;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->g(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[audio]"

    return-object v0
.end method
