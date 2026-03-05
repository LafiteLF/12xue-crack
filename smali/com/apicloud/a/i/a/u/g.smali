.class public Lcom/apicloud/a/i/a/u/g;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/c;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/apicloud/a/i/a/u/a/b;

.field private c:Lcom/apicloud/a/i/a/u/a/k;

.field private d:Ljava/lang/String;

.field private g:Lcom/apicloud/a/d;

.field private h:Z

.field private i:Lcom/apicloud/a/c/l;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/i/b;-><init>(Landroid/content/Context;)V

    const-string v0, "selector"

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    const-string v0, "day"

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->g:Lcom/apicloud/a/d;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/g;->a(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "time"

    invoke-static {v0, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {v4}, Lcom/apicloud/a/i/a/u/a/m;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "date"

    invoke-static {v5, p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private a(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->i:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x60fbfff9

    if-ne v1, p1, :cond_1

    const-string p1, "cancel"

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/l;->d(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, -0x60fbfff8

    const-string v1, "value"

    const/4 v2, 0x0

    if-ne v0, p1, :cond_8

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean p1, p0, Lcom/apicloud/a/i/a/u/g;->h:Z

    if-nez p1, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/m;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/u/a/m;->b()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/u/g;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    new-instance p2, Lcom/apicloud/a/i/c/d;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-virtual {p2, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->i:Lcom/apicloud/a/c/l;

    const-string v0, "change"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_7
    :goto_3
    return-void

    :cond_8
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/u/a/m;

    new-instance p2, Lcom/apicloud/a/i/c/d;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/m;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/m;->c()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "column"

    invoke-virtual {p2, v0, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->i:Lcom/apicloud/a/c/l;

    const-string v0, "columnchange"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lcom/apicloud/a/d;)V
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/u/g$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/u/g$1;-><init>(Lcom/apicloud/a/i/a/u/g;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/g;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/apicloud/a/i/a/u/a/k;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/u/a/k;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    new-instance v0, Lcom/apicloud/a/i/a/u/g$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/g$2;-><init>(Lcom/apicloud/a/i/a/u/g;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/k;->a(Lcom/apicloud/a/i/a/u/a/k$a;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->e()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/g;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/u/g;->a(ILjava/util/List;)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->g:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->i:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/g;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/a/u/a/k;->a(Landroid/content/Context;Lcom/apicloud/a/i/a/u/a/b;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/k;->b()V

    return-void
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/deepe/c/i/f;->c(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const/16 v2, 0x76c

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    const-string v3, "year"

    invoke-static {v2, v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/apicloud/a/i/a/u/g;->a(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/u/g;->a(Z)V

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    const-string v4, "day"

    invoke-static {v3, v4}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/g;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apicloud/a/i/a/u/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/i/a/u/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->d(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/c/i/f;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/g;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/apicloud/a/i/a/u/a/b;->i()Lcom/apicloud/a/i/a/u/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/b;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/k;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/k;->a(Lcom/apicloud/a/i/a/u/a/b;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->b:Lcom/apicloud/a/i/a/u/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/k;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/u/g;->h:Z

    return-void
.end method

.method public b()Lcom/apicloud/a/i/c/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->g()V

    goto :goto_0

    :cond_0
    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/u/a/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/g;->c:Lcom/apicloud/a/i/a/u/a/k;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/k;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->g()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/g;->a:Ljava/lang/String;

    const-string v0, "date"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/g;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/g;->f()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[picker]"

    return-object v0
.end method
