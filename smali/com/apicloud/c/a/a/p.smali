.class Lcom/apicloud/c/a/a/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/p$a;,
        Lcom/apicloud/c/a/a/p$b;
    }
.end annotation


# instance fields
.field final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/apicloud/c/a/a/j$w;",
            "Lcom/apicloud/c/a/a/p$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/apicloud/c/a/a/j$w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$w;I)Lcom/apicloud/c/a/a/j$e$c;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/p$a;

    if-eqz v1, :cond_4

    iget v2, v1, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    iget v0, v1, Lcom/apicloud/c/a/a/p$a;->a:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Lcom/apicloud/c/a/a/p$a;->a:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-object p2, v1, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    iget-object p2, v1, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    :goto_0
    iget v0, v1, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-static {v1}, Lcom/apicloud/c/a/a/p$a;->a(Lcom/apicloud/c/a/a/p$a;)V

    :cond_2
    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide flag PRE or POST"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(J)Lcom/apicloud/c/a/a/j$w;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$w;

    return-object p1
.end method

.method a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method a(JLcom/apicloud/c/a/a/j$w;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/p$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apicloud/c/a/a/p$a;->a()Lcom/apicloud/c/a/a/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    iget p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/p$b;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/j$w;

    iget-object v2, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/c/a/a/p$a;

    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    :goto_1
    invoke-interface {p1, v1}, Lcom/apicloud/c/a/a/p$b;->a(Lcom/apicloud/c/a/a/j$w;)V

    goto :goto_4

    :cond_1
    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v2, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    iget-object v4, v2, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    :goto_2
    invoke-interface {p1, v1, v3, v4}, Lcom/apicloud/c/a/a/p$b;->a(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V

    goto :goto_4

    :cond_3
    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    :goto_3
    iget-object v3, v2, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    iget-object v4, v2, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    invoke-interface {p1, v1, v3, v4}, Lcom/apicloud/c/a/a/p$b;->b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V

    goto :goto_4

    :cond_4
    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    iget-object v4, v2, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    invoke-interface {p1, v1, v3, v4}, Lcom/apicloud/c/a/a/p$b;->c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;Lcom/apicloud/c/a/a/j$e$c;)V

    goto :goto_4

    :cond_5
    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    iget v3, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget v1, v2, Lcom/apicloud/c/a/a/p$a;->a:I

    :goto_4
    invoke-static {v2}, Lcom/apicloud/c/a/a/p$a;->a(Lcom/apicloud/c/a/a/p$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method a(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/p$a;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/apicloud/c/a/a/p$a;->a:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/p;->a(Lcom/apicloud/c/a/a/j$w;I)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    return-object p1
.end method

.method b()V
    .locals 0

    invoke-static {}, Lcom/apicloud/c/a/a/p$a;->b()V

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/p$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apicloud/c/a/a/p$a;->a()Lcom/apicloud/c/a/a/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    iput-object p2, v0, Lcom/apicloud/c/a/a/p$a;->b:Lcom/apicloud/c/a/a/j$e$c;

    return-void
.end method

.method c(Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/p;->a(Lcom/apicloud/c/a/a/j$w;I)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    return-object p1
.end method

.method c(Lcom/apicloud/c/a/a/j$w;Lcom/apicloud/c/a/a/j$e$c;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/p$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apicloud/c/a/a/p$a;->a()Lcom/apicloud/c/a/a/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/apicloud/c/a/a/p$a;->c:Lcom/apicloud/c/a/a/j$e$c;

    iget p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    return-void
.end method

.method d(Lcom/apicloud/c/a/a/j$w;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/p$a;

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method e(Lcom/apicloud/c/a/a/j$w;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/p$a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/apicloud/c/a/a/p$a;->a()Lcom/apicloud/c/a/a/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/apicloud/c/a/a/p$a;->a:I

    return-void
.end method

.method f(Lcom/apicloud/c/a/a/j$w;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/p$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/apicloud/c/a/a/p$a;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Lcom/apicloud/c/a/a/p$a;->a:I

    return-void
.end method

.method g(Lcom/apicloud/c/a/a/j$w;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/c/a/a/p;->b:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    :goto_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/p;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/p$a;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/apicloud/c/a/a/p$a;->a(Lcom/apicloud/c/a/a/p$a;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public h(Lcom/apicloud/c/a/a/j$w;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/p;->f(Lcom/apicloud/c/a/a/j$w;)V

    return-void
.end method
