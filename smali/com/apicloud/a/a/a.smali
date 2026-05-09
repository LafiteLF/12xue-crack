.class public Lcom/apicloud/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/d;


# instance fields
.field private final a:Lcom/apicloud/a/b;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private e:Lcom/apicloud/a/d/g;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/apicloud/a/e/a;

.field private h:Lcom/apicloud/a/c/o;

.field private i:Lcom/apicloud/a/e/f;

.field private final j:Lcom/apicloud/a/e/d;

.field private k:Lcom/apicloud/a/d/c;

.field private l:Lcom/apicloud/a/c/v;

.field private final m:Lcom/apicloud/a/i/c/g;

.field private n:Lcom/apicloud/a/c/u;

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:Z

.field private s:Lcom/apicloud/a/g/h;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/b;Lcom/apicloud/a/c/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    iput-object p2, p0, Lcom/apicloud/a/a/a;->n:Lcom/apicloud/a/c/u;

    new-instance p1, Lcom/apicloud/a/e/a;

    invoke-direct {p1}, Lcom/apicloud/a/e/a;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->g:Lcom/apicloud/a/e/a;

    new-instance p1, Lcom/apicloud/a/e/d;

    invoke-direct {p1}, Lcom/apicloud/a/e/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->j:Lcom/apicloud/a/e/d;

    new-instance p1, Lcom/apicloud/a/i/c/g;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/c/g;-><init>(Lcom/apicloud/a/d;)V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->m:Lcom/apicloud/a/i/c/g;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->p:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->b:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->o:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->f:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->q:Ljava/util/List;

    new-instance p1, Lcom/apicloud/a/g/h;

    invoke-direct {p1}, Lcom/apicloud/a/g/h;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/a/a;->s:Lcom/apicloud/a/g/h;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/a/a;)Lcom/apicloud/a/b;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/a/a;)Lcom/apicloud/a/c/o;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/a/a;->h:Lcom/apicloud/a/c/o;

    return-object p0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->e:Lcom/apicloud/a/d/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/d/g;->a()V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->o()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/a/a;->i:Lcom/apicloud/a/e/f;

    invoke-virtual {v1, v0}, Lcom/apicloud/a/e/f;->b(Ljava/lang/Object;)Lcom/apicloud/a/e/f$a;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v0, Lcom/apicloud/a/i/a/i/b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/a/a;->j:Lcom/apicloud/a/e/d;

    invoke-virtual {v1}, Lcom/apicloud/a/e/f$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/apicloud/a/e/d;->a(Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/apicloud/a/e/b;->b(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/a/a;->i:Lcom/apicloud/a/e/f;

    invoke-virtual {v0}, Lcom/apicloud/a/e/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/e/f$a;

    iget-object v2, p0, Lcom/apicloud/a/a/a;->i:Lcom/apicloud/a/e/f;

    invoke-virtual {v1}, Lcom/apicloud/a/e/f$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apicloud/a/e/f;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apicloud/a/a/a;->j:Lcom/apicloud/a/e/d;

    invoke-virtual {v1}, Lcom/apicloud/a/e/f$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/apicloud/a/e/d;->a(Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/apicloud/a/e/f$a;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/apicloud/a/e/b;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private z()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/a/a;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apicloud/a/a/a;->d:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/a/a;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    const-class v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/e/f;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2
.end method

.method public a()Lcom/apicloud/a/c/o;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->h:Lcom/apicloud/a/c/o;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    const-string v1, "onHide"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    const-string v1, "onhide"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    const-string v1, "onShow"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    const-string v1, "onshow"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/a/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/a/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/d/b;

    invoke-interface {v1, p1, p2}, Lcom/apicloud/a/d/b;->a(ILandroid/content/Intent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/apicloud/a/c/o;Lcom/apicloud/a/d/g;Lcom/apicloud/a/e/f;Lcom/apicloud/a/c/v;Lcom/apicloud/a/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/a/a;->h:Lcom/apicloud/a/c/o;

    iput-object p2, p0, Lcom/apicloud/a/a/a;->e:Lcom/apicloud/a/d/g;

    iput-object p3, p0, Lcom/apicloud/a/a/a;->i:Lcom/apicloud/a/e/f;

    iput-object p4, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    iput-object p5, p0, Lcom/apicloud/a/a/a;->k:Lcom/apicloud/a/d/c;

    return-void
.end method

.method public a(Lcom/apicloud/a/d/b;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/a/a;->z()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->z()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public b()Lcom/apicloud/a/e/f;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->i:Lcom/apicloud/a/e/f;

    return-object v0
.end method

.method public b(Lcom/apicloud/a/d/b;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->z()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public c()Lcom/apicloud/a/e/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->j:Lcom/apicloud/a/e/d;

    return-object v0
.end method

.method public d()Lcom/apicloud/a/e/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->g:Lcom/apicloud/a/e/a;

    return-object v0
.end method

.method public e()Lcom/apicloud/a/i/c/g;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->m:Lcom/apicloud/a/i/c/g;

    return-object v0
.end method

.method public f()Lcom/apicloud/a/d/g;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->e:Lcom/apicloud/a/d/g;

    return-object v0
.end method

.method public g()Lcom/apicloud/a/g/h;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->s:Lcom/apicloud/a/g/h;

    return-object v0
.end method

.method public h()Lcom/apicloud/a/d/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->k:Lcom/apicloud/a/d/c;

    return-object v0
.end method

.method public i()Lcom/apicloud/a/c/x;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->b()Lcom/apicloud/a/c/x;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->l:Lcom/apicloud/a/c/v;

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->c()Z

    move-result v0

    return v0
.end method

.method public final k()V
    .locals 1

    new-instance v0, Lcom/apicloud/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/a/a$1;-><init>(Lcom/apicloud/a/a/a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/a/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l()Lcom/apicloud/a/f/a/a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->f()Lcom/apicloud/a/f/a/a;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/apicloud/a/c/g$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->h()Lcom/apicloud/a/c/g$a;

    move-result-object v0

    return-object v0
.end method

.method public n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public o()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->e()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public p()I
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->o()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->o()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverScrollMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->i()Lcom/apicloud/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->i()Lcom/apicloud/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/b/c;->a()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->n()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10104ce

    invoke-static {v0, v1}, Lcom/apicloud/a/b/c;->c(Landroid/content/Context;I)I

    move-result v0

    return v0

    :cond_1
    const v0, -0xa0a0b

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->l()Z

    move-result v0

    return v0
.end method

.method public s()Lcom/apicloud/a/c/u;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/a/a;->n:Lcom/apicloud/a/c/u;

    return-object v0
.end method

.method public t()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->w()V

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->x()V

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->y()V

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->z()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/apicloud/a/a/a;->z()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/a/a$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/a/a$2;-><init>(Lcom/apicloud/a/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/a/a;->r:Z

    invoke-virtual {p0}, Lcom/apicloud/a/a/a;->t()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/a/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/a/a;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/a/a;->a:Lcom/apicloud/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
