.class public abstract Lcom/uzmap/pkg/uzcore/d/a;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/d/j;


# instance fields
.field private a:Z

.field private b:Lcom/uzmap/pkg/uzcore/external/a;

.field private c:Lcom/uzmap/pkg/b/c/f;

.field private d:Lcom/uzmap/pkg/uzcore/ad;

.field private e:Lcom/uzmap/pkg/uzcore/q;

.field private f:Lcom/uzmap/pkg/uzcore/b;

.field private g:Z

.field private h:Z

.field private i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

.field private j:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/a$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/a$1;-><init>(Lcom/uzmap/pkg/uzcore/d/a;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->o:Ljava/lang/Runnable;

    return-void
.end method

.method private a(II)V
    .locals 7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, p1

    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, p2

    iget p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-gez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    iget p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-gez v4, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_1
    add-int v5, v3, p2

    const/4 v6, 0x0

    if-gt v5, v1, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_2

    :cond_2
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3

    :cond_3
    :goto_2
    sub-int/2addr v1, v5

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_3
    add-int p2, p1, v4

    if-gt p2, v0, :cond_6

    if-ne v4, v0, :cond_4

    goto :goto_4

    :cond_4
    if-nez p2, :cond_5

    add-int/lit8 p1, p1, 0x1

    :cond_5
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_5

    :cond_6
    :goto_4
    sub-int/2addr v0, p2

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_5
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/a;->h()V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/d/a;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/d/a;->a(II)V

    return-void
.end method

.method private final h()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->b:Lcom/uzmap/pkg/uzcore/external/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/external/a;->a()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/external/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/16 v2, 0x2710

    const/16 v3, 0x64

    if-lt p1, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/b/c/f;->a(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/b/c/f;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/d/a;->a:Z

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Lcom/uzmap/pkg/uzcore/d/a;->a:Z

    if-nez v4, :cond_1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/c/f;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->a:Z

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    mul-int/2addr p1, v2

    div-int/2addr p1, v3

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/c/f;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract a(Landroid/view/View;ZZ)V
.end method

.method public a(Lcom/uzmap/pkg/openapi/PullRefreshListener;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

    return-void
.end method

.method public abstract a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)V
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/ad;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->d:Lcom/uzmap/pkg/uzcore/ad;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/uzmap/pkg/b/c/f;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/uzmap/pkg/uzcore/ad;->b:I

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/b/c/f;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    iget p1, p1, Lcom/uzmap/pkg/uzcore/ad;->c:I

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    const/4 v0, -0x1

    invoke-static {v0, p1}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/c/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->c:Lcom/uzmap/pkg/b/c/f;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->addView(Landroid/view/View;)V

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(I)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->f:Lcom/uzmap/pkg/uzcore/b;

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/external/a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->b:Lcom/uzmap/pkg/uzcore/external/a;

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->e:Lcom/uzmap/pkg/uzcore/q;

    return-void
.end method

.method protected a(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->j:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/f;)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/a;->f(Z)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/f;->a()Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/d/a$2;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/d/a$2;-><init>(Lcom/uzmap/pkg/uzcore/d/a;Lcom/uzmap/pkg/uzcore/uzmodule/b/f;)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/external/a;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/deepe/c/i/t;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/openapi/PullRefreshListener;->onStateChange(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->l:Z

    return-void
.end method

.method public abstract c()V
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->m:Z

    return-void
.end method

.method public abstract d()V
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->n:Z

    return-void
.end method

.method public abstract e()V
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->k:Z

    return-void
.end method

.method public abstract f()Lcom/uzmap/pkg/uzcore/a;
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->g:Z

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/a;->h:Z

    return-void
.end method

.method public abstract g()Z
.end method

.method protected final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->l:Z

    return v0
.end method

.method protected l()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->j:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, ""

    invoke-virtual {v0, v3, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->k:Z

    return v0
.end method

.method public final n()Lcom/uzmap/pkg/uzcore/q;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->e:Lcom/uzmap/pkg/uzcore/q;

    return-object v0
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a;->requestFocus()Z

    return-void
.end method

.method protected final onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->o:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/a;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/a;->h()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 0

    return-void
.end method

.method public final q()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/a;->a(I)V

    return-void
.end method

.method public final r()Lcom/uzmap/pkg/uzcore/ad;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->d:Lcom/uzmap/pkg/uzcore/ad;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->g:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->h:Z

    return v0
.end method

.method public final u()Lcom/uzmap/pkg/uzcore/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->f:Lcom/uzmap/pkg/uzcore/b;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->f:Lcom/uzmap/pkg/uzcore/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected w()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/openapi/PullRefreshListener;->onRelease()V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/a;->l()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/openapi/PullRefreshListener;->onRefreshing()V

    :cond_0
    return-void
.end method

.method protected y()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/a;->i:Lcom/uzmap/pkg/openapi/PullRefreshListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/openapi/PullRefreshListener;->onForceRefresh()V

    :cond_0
    return-void
.end method
