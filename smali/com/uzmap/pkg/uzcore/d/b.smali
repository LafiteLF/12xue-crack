.class public abstract Lcom/uzmap/pkg/uzcore/d/b;
.super Lcom/uzmap/pkg/b/c/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/d/b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/uzmap/pkg/uzcore/d/a;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/uzmap/pkg/uzcore/d/b$a;

.field private k:Lcom/uzmap/pkg/uzcore/q;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/c/i;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->i:Z

    new-instance p1, Lcom/deepe/c/i/v;

    invoke-direct {p1}, Lcom/deepe/c/i/v;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    new-instance p1, Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/b$a;-><init>(Lcom/uzmap/pkg/uzcore/d/b;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->j:Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/deepe/c/b/d/a;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/d/b;)Lcom/deepe/c/i/v;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    return-object p0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->clear()V

    new-instance v0, Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/d/b$a;-><init>(Lcom/uzmap/pkg/uzcore/d/b;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->j:Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/deepe/c/b/d/a;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/b;->w()V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/d/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/uzmap/pkg/uzcore/d/b;->i:Z

    return p0
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->j:Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b$a;->f()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)Lcom/uzmap/pkg/uzcore/d/a;
.end method

.method public abstract a(IIJ)V
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->k:Lcom/uzmap/pkg/uzcore/q;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/uzmap/pkg/uzcore/a;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/uzmap/pkg/uzcore/p$a;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/a;->a(Lcom/uzmap/pkg/uzcore/p$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(ILjava/lang/String;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/b;->c_()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/uzmap/pkg/uzcore/d/b;->b(IZ)V

    :cond_1
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->m()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->c()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->m()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/a;->c()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final b(Lcom/uzmap/pkg/uzcore/uzmodule/b/h;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/b;->a()V

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    iget v2, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->j:I

    if-nez v2, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/d/b;->i:Z

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/d/b;->g(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d/b;->w()V

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    if-eqz v0, :cond_4

    iget p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->i:I

    goto :goto_3

    :cond_4
    iget p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->l:I

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/uzmap/pkg/uzcore/d/b;->b(ILjava/lang/String;ZZ)V

    goto :goto_4

    :cond_6
    new-instance p1, Lcom/uzmap/pkg/uzcore/d/b$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/d/b$1;-><init>(Lcom/uzmap/pkg/uzcore/d/b;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/d/b;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_4
    return-void

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/d/b;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/g;)Lcom/uzmap/pkg/uzcore/d/a;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v3, v2}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->h:Ljava/lang/String;

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 4

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected final d(I)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/d/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15e

    goto :goto_0

    :cond_1
    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    const/16 v0, 0x46

    goto :goto_0

    :cond_2
    const/16 v0, 0x32

    :goto_0
    int-to-long v0, v0

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzcore/d/b;->i:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v2, p1}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->m()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/d/b;->k(I)Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    move-result-object v0

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->x:Ljava/lang/String;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->Q:Lcom/deepe/c/i/t;

    invoke-virtual {v2, v1, v0}, Lcom/uzmap/pkg/uzcore/d/a;->a(Ljava/lang/String;Lcom/deepe/c/i/t;)V

    const-wide/16 v0, 0x12c

    :cond_3
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/d/b;->g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/uzmap/pkg/uzcore/d/b;->l:I

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/d/b;->a(IIJ)V

    :cond_4
    iput p1, p0, Lcom/uzmap/pkg/uzcore/d/b;->l:I

    return-void
.end method

.method public final e(I)Lcom/uzmap/pkg/uzcore/d/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/d/a;

    return-object p1
.end method

.method public final h()Lcom/uzmap/pkg/uzcore/q;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->k:Lcom/uzmap/pkg/uzcore/q;

    return-object v0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->j:Lcom/uzmap/pkg/uzcore/d/b$a;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/b$a;->f()V

    return-void
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->t()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final k(I)Lcom/uzmap/pkg/uzcore/uzmodule/b/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/h;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    return-object p1
.end method

.method public final q()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    return v0
.end method

.method public final r()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/uzmap/pkg/uzcore/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->d()V

    goto :goto_0
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->e()V

    goto :goto_0
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->stopLoading()V

    goto :goto_0
.end method

.method public final v()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/b;->g:Lcom/uzmap/pkg/uzcore/uzmodule/b/h;

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/d/a;->setVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/d/b;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a;->destroy()V

    goto :goto_0
.end method
