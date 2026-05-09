.class final Lcom/uzmap/pkg/uzcore/k;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/d/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/uzmap/pkg/uzcore/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/k;->c:Ljava/util/LinkedHashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/i/v;

    invoke-direct {v0}, Lcom/deepe/c/i/v;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;
    .locals 3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/uzmap/pkg/uzcore/k;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v2, p1}, Lcom/uzmap/pkg/uzcore/d/c;->g(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/c;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object v2
.end method

.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/d/c;->j()V

    goto :goto_0
.end method

.method final a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/d/c;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/k;->f(Lcom/uzmap/pkg/uzcore/d/c;)V

    if-eqz p2, :cond_0

    sget-object p2, Lcom/uzmap/pkg/uzcore/k;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method final a(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/uzmap/pkg/uzcore/k;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v2, v1}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v2, v0}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/d/c;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/e;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/c;->a(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->a_(Z)V

    goto :goto_0
.end method

.method final a(ZLcom/deepe/b/b/c;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1, p2}, Lcom/uzmap/pkg/uzcore/d/c;->a(ZLcom/deepe/b/b/c;)V

    goto :goto_0
.end method

.method final a(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1, p2}, Lcom/uzmap/pkg/uzcore/d/c;->a(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method final b(Lcom/uzmap/pkg/uzcore/d/c;)Lcom/uzmap/pkg/uzcore/d/c;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/d/c;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/d/c;->k()V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1, p1}, Lcom/uzmap/pkg/uzcore/d/c;->b(Z)V

    goto :goto_0
.end method

.method final c()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

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

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/d/c;->i()V

    goto :goto_0
.end method

.method final c(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/k;->a(Lcom/uzmap/pkg/uzcore/d/c;Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/k;->a(Lcom/uzmap/pkg/uzcore/d/c;)V

    return-void
.end method

.method final d()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->clear()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->s()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->H()V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/d/c;->s()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/d/c;->H()V

    goto :goto_0
.end method

.method final d(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/uzcore/k;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1}, Lcom/deepe/c/i/v;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v3, v2}, Lcom/deepe/c/i/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/d/c;

    new-instance v4, Lcom/uzmap/pkg/uzcore/d/d;

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/uzmap/pkg/uzcore/d/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/uzmap/pkg/uzcore/d/c;->e_()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    iput-object v3, v4, Lcom/uzmap/pkg/uzcore/d/d;->c:Ljava/util/List;

    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method final e(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final f(Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->b:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/d/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final g(Lcom/uzmap/pkg/uzcore/d/c;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzcore/d/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzcore/d/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->size()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/k;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1, p1, v0}, Lcom/deepe/c/i/v;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
