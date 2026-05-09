.class Lcom/apicloud/a/i/a/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/ai/a/d$a;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Ljava/lang/Float;

.field private e:Lcom/apicloud/a/i/a/ai/a/d;

.field private f:Lcom/deepe/a/d/c;

.field private g:Z

.field private h:Landroid/net/Uri;

.field private i:I

.field private final j:Landroid/content/Context;

.field private k:Lcom/apicloud/a/i/a/b/e;

.field private final l:Ljava/lang/Runnable;

.field private m:Landroid/os/Handler;

.field private n:Lcom/deepe/a/d/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/b/a;->c:Z

    new-instance v0, Lcom/apicloud/a/i/a/b/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/b/a$1;-><init>(Lcom/apicloud/a/i/a/b/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/a;->l:Ljava/lang/Runnable;

    new-instance v0, Lcom/apicloud/a/i/a/b/a$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/b/a$2;-><init>(Lcom/apicloud/a/i/a/b/a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/a;->n:Lcom/deepe/a/d/b;

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a;->j:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/b/a;)I
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/a;->m()I

    move-result p0

    return p0
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->k:Lcom/apicloud/a/i/a/b/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/b/e;->a(II)V

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/a;->m:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/b/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/b/a;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/b/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/a;->k()V

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/b/a;->k:Lcom/apicloud/a/i/a/b/e;

    return-object p0
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->e:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d$a;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->e:Lcom/apicloud/a/i/a/ai/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->setEnabled(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->e:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/b/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/b/a;->g:Z

    new-instance v0, Lcom/deepe/a/d/c;

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/deepe/a/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->n:Lcom/deepe/a/d/b;

    invoke-virtual {v0, v1}, Lcom/deepe/a/d/c;->a(Lcom/deepe/a/d/b;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->h:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    invoke-virtual {v1, v0}, Lcom/deepe/a/d/c;->a(Landroid/net/Uri;)V

    :cond_1
    iget v0, p0, Lcom/apicloud/a/i/a/b/a;->i:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    invoke-virtual {v1, v0}, Lcom/deepe/a/d/c;->a(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/b/a;->i:I

    :cond_2
    return-void
.end method

.method private m()I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/b/a;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/b/a;->e()I

    move-result v1

    if-lez v1, :cond_1

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v2, v0, 0x3e8

    invoke-direct {p0, v2, v1}, Lcom/apicloud/a/i/a/b/a;->a(II)V

    :cond_1
    return v0
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->m:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/b/a;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/a;->l()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->a()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apicloud/a/i/a/b/a;->a(J)V

    return-void
.end method

.method public final a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/c;->a(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/a/b/a;->i:I

    :goto_0
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a;->h:Landroid/net/Uri;

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/c;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/b/a;->b(Lcom/apicloud/a/i/a/ai/a/d;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/b/a;->b(Lcom/apicloud/a/i/a/ai/a/d;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a;->k:Lcom/apicloud/a/i/a/b/e;

    return-void
.end method

.method public final a(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a;->d:Ljava/lang/Float;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/b/a;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->b()V

    :cond_0
    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->e:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a;->e:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/a;->k()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/b/a;->b:Z

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->c()V

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/b/a;->n()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/b/a;->c:Z

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/b/a;->c()V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->e()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->f()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a;->f:Lcom/deepe/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/c;->g()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
