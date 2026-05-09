.class Lcom/apicloud/a/i/a/d/a/l;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            "Ljava/util/SortedSet<",
            "Lcom/apicloud/a/i/a/d/a/k;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method a()Lcom/apicloud/a/i/a/d/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/d/a/a;

    return-object v0
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/k;)Z
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/k;->b()I

    move-result p1

    invoke-static {v3, p1}, Lcom/apicloud/a/i/a/d/a/a;->a(II)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/d/a/a;->a(Lcom/apicloud/a/i/a/d/a/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/apicloud/a/i/a/d/a/a;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/l;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/d/a/a;",
            ")",
            "Ljava/util/SortedSet<",
            "Lcom/apicloud/a/i/a/d/a/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/SortedSet;

    return-object p1
.end method

.method c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method d(Lcom/apicloud/a/i/a/d/a/a;)Lcom/apicloud/a/i/a/d/a/k;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/l;->c(Lcom/apicloud/a/i/a/d/a/a;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/d/a/k;

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/k;

    sget-object v2, Lcom/apicloud/a/i/a/d/a/g;->b:Lcom/apicloud/a/i/a/d/a/k;

    invoke-virtual {v2, v1}, Lcom/apicloud/a/i/a/d/a/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1
.end method

.method d()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/l;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method
