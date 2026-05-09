.class public Lcom/uzmap/pkg/uzcore/f;
.super Lcom/uzmap/pkg/uzcore/d/b;


# instance fields
.field private a:Landroid/content/Context;

.field private h:Lcom/uzmap/pkg/uzcore/d/i;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/f;->h:Lcom/uzmap/pkg/uzcore/d/i;

    sget-boolean p1, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f;Ljava/lang/String;I)Lcom/deepe/c/i/i;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/f;->a(Ljava/lang/String;I)Lcom/deepe/c/i/i;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;I)Lcom/deepe/c/i/i;
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "index"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f;)Lcom/uzmap/pkg/uzcore/uzmodule/b/h;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f;->g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/f;->e(I)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/a;->a(I)V

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f;->e(I)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/f;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/f;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/f;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f;->c()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f;->h:Lcom/uzmap/pkg/uzcore/d/i;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/i;->u()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/uzmap/pkg/uzcore/b/d;->n:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->c(Z)Z

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/f;->h:Lcom/uzmap/pkg/uzcore/d/i;

    const/4 v4, 0x3

    iget-object v5, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->w:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v1}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;ILjava/lang/String;Z)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    iget-boolean v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->E:Z

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->j(Z)V

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/f;->i:Z

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->d(Z)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->f:Z

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->d(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->setHorizontalScrollBarEnabled(Z)V

    iget-boolean v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->g:Z

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->e(Z)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->setVerticalScrollBarEnabled(Z)V

    iget v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->S:I

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->setOverScrollMode(I)V

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    iget-object v2, v0, Lcom/uzmap/pkg/uzcore/b/d;->u:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/uzmap/pkg/uzcore/s;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3, v3}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/d/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->P:Lcom/uzmap/pkg/uzcore/ad;

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/d/a;->a(Lcom/uzmap/pkg/uzcore/ad;)V

    iget-boolean v3, v0, Lcom/uzmap/pkg/uzcore/b/d;->e:Z

    const-string v4, "bounces"

    invoke-virtual {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v3, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->A:Z

    :cond_1
    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/d/a;->b(Z)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->k()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzcore/d/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->f()V

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->C:Z

    invoke-interface {v1, v0}, Lcom/uzmap/pkg/uzcore/a;->a(Z)V

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->D:Z

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/a;->c(Z)V

    return-object v2
.end method

.method public a(IIJ)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/f$1;

    invoke-direct {v0, p0, p2}, Lcom/uzmap/pkg/uzcore/f$1;-><init>(Lcom/uzmap/pkg/uzcore/f;I)V

    invoke-virtual {p0, v0, p3, p4}, Lcom/uzmap/pkg/uzcore/f;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/f;->a(II)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "group["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
