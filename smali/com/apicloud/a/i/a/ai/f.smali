.class public Lcom/apicloud/a/i/a/ai/f;
.super Lcom/apicloud/a/i/a/q/b;

# interfaces
.implements Lcom/apicloud/a/d/b;
.implements Lcom/apicloud/a/i/a/ai/a/b;


# instance fields
.field private a:Lcom/apicloud/a/i/a/ai/g;

.field private b:Lcom/apicloud/a/i/a/ai/a/c;

.field private c:Lcom/apicloud/a/i/a/ai/a;

.field private d:Lcom/apicloud/a/d;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/q/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/f;->d:Lcom/apicloud/a/d;

    new-instance v0, Lcom/apicloud/a/i/a/ai/g;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ai/g;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    const/4 p1, -0x1

    invoke-super {p0, v0, p1, p1}, Lcom/apicloud/a/i/a/q/b;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {p1, p0}, Lcom/apicloud/a/i/a/ai/g;->a(Lcom/apicloud/a/i/a/ai/a/b;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/g;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    return-object p0
.end method

.method private final a(Lcom/apicloud/a/i/a/ai/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->a(Lcom/apicloud/a/i/a/ai/a;)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/f;->d:Lcom/apicloud/a/d;

    return-object p0
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ai/f;)Lorg/json/JSONObject;
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->p()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/ai/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/f;->d:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ai/a;-><init>(Lcom/apicloud/a/c/l;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/f;->a(Lcom/apicloud/a/i/a/ai/a;)V

    :cond_0
    return-void
.end method

.method private p()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "keyCode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "longPress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->b()V

    return-void
.end method

.method public final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->a(F)V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->c(I)V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/g;->d()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/g;->e()V

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->a(Z)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ai/g;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->p()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->d(I)V

    return-void
.end method

.method public final b(Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->b(Landroid/net/Uri;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->c(Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->q()V

    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->e(I)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->d(Z)V

    return-void
.end method

.method public final d(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/f;->f(Z)V

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/apicloud/a/i/a/ai/a/c;

    invoke-direct {v2, v1}, Lcom/apicloud/a/i/a/ai/a/c;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    new-instance v1, Lcom/apicloud/a/i/a/ai/f$1;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/ai/f$1;-><init>(Lcom/apicloud/a/i/a/ai/f;)V

    invoke-virtual {v2, v1}, Lcom/apicloud/a/i/a/ai/a/c;->a(Lcom/apicloud/a/i/a/ai/a/c$a;)V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/f;->p(Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    invoke-virtual {v1, p0, p1}, Lcom/apicloud/a/i/a/ai/a/c;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/c;->show()V

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance p1, Lcom/apicloud/a/i/a/ai/f$2;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/f$2;-><init>(Lcom/apicloud/a/i/a/ai/f;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->e(Z)V

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->c()Z

    move-result v0

    return v0
.end method

.method public final e()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->f()F

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->f(Z)V

    return-void
.end method

.method public final f()Lcom/apicloud/a/i/a/ai/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->g()Lcom/apicloud/a/i/a/ai/d;

    move-result-object v0

    return-object v0
.end method

.method public final f(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->g(Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->a(Z)V

    return-void
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->m()I

    move-result v0

    return v0
.end method

.method public final h(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->b(Z)V

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->n()I

    move-result v0

    return v0
.end method

.method public i(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->c(Z)V

    return-void
.end method

.method public j()V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->a()V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->d(Z)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final k(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->e(Z)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public final l(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->f(Z)V

    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/f;->f(Z)V

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ai/a/c;->a()V

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/f;->b:Lcom/apicloud/a/i/a/ai/a/c;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/ai/a/c;->dismiss()V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/f;->p(Z)V

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/apicloud/a/i/a/ai/f$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/ai/f$3;-><init>(Lcom/apicloud/a/i/a/ai/f;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/f;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->g(Z)V

    return-void
.end method

.method public final n(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/f;->o()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->c:Lcom/apicloud/a/i/a/ai/a;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a;->h(Z)V

    return-void
.end method

.method n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/f;->e:Z

    return v0
.end method

.method public o(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget p1, Lcom/apicloud/a/i/a/ai/g;->a:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/f;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->m()V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/q/b;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/f;->c()V

    return-void
.end method

.method p(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/f;->e:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/g;->removeViewAt(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[video]"

    return-object v0
.end method
