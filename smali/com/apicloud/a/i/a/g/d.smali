.class public Lcom/apicloud/a/i/a/g/d;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/j;


# instance fields
.field private a:Lcom/apicloud/a/c;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/apicloud/a/i/a;Lcom/apicloud/a/c/t;)V
    .locals 4

    new-instance v0, Lcom/apicloud/a/c/t$a;

    invoke-direct {v0}, Lcom/apicloud/a/c/t$a;-><init>()V

    invoke-virtual {p2}, Lcom/apicloud/a/i/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p3, p1, v0}, Lcom/apicloud/a/c/t;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/c/e/e;

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/apicloud/a/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v2, v3}, Lcom/apicloud/a/c/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/e/e;
    :try_end_0
    .catch Lcom/deepe/c/e/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/deepe/c/e/d;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/g/d;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1
.end method

.method public a()Lcom/apicloud/a/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->a:Lcom/apicloud/a/c;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/g/d$1;

    const-class v1, Landroid/view/View;

    invoke-direct {v0, p0, v1, p1}, Lcom/apicloud/a/i/a/g/d$1;-><init>(Lcom/apicloud/a/i/a/g/d;Ljava/lang/Class;I)V

    invoke-static {p0, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/g/d;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-static {v0, p0, p2, p1}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/g/d;->a(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/apicloud/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/g/d;->a:Lcom/apicloud/a/c;

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/g/d;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/g/d;->a()Lcom/apicloud/a/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/g/d;Lcom/apicloud/a/c;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/g/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/a/c/t;

    invoke-direct {v0}, Lcom/apicloud/a/c/t;-><init>()V

    invoke-static {p0}, Lcom/apicloud/a/i/c;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/apicloud/a/i/c;->e(Landroid/view/View;)Lcom/apicloud/a/i/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v2, v0}, Lcom/apicloud/a/i/a/g/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a;Lcom/apicloud/a/c/t;)V

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/g/d;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/apicloud/a/c/t;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/g/d;->c:Ljava/lang/String;

    return-object v0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/apicloud/a/i/c;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lcom/apicloud/a/i/c;->e(Landroid/view/View;)Lcom/apicloud/a/i/a;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v3, v2, v0}, Lcom/apicloud/a/i/a/g/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a;Lcom/apicloud/a/c/t;)V

    goto :goto_0
.end method
