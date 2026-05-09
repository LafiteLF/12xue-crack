.class final Lcom/uzmap/pkg/uzcore/y;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/d/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->f()Lcom/uzmap/pkg/uzcore/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/a;->destroy()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/y;->a(Lcom/uzmap/pkg/uzcore/d/a;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/a;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final a(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzcore/d/a;

    if-ne v1, p1, :cond_0

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/d/a;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/y;->a(Lcom/uzmap/pkg/uzcore/d/a;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/y;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
