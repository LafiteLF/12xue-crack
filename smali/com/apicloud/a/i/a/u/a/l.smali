.class public Lcom/apicloud/a/i/a/u/a/l;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/apicloud/a/i/a/u/a/i;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/a/l;)Lcom/apicloud/a/i/a/u/a/i;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/l;->a:Lcom/apicloud/a/i/a/u/a/i;

    return-object p0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/apicloud/a/c;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    check-cast v1, Lcom/apicloud/a/c;

    invoke-virtual {v1, p2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->setOrientation(I)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date"

    invoke-static {v2, v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne p2, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u6708"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u65e5"

    goto :goto_0

    :cond_1
    move-object v1, p3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {p2, v1}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p1

    const-string v0, "time"

    invoke-static {p1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p1, v2

    :goto_2
    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p5, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct/range {p0 .. p5}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/apicloud/a/i/a/u/a/l;->c(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/a/l;Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->e(Lcom/apicloud/a/i/a/u/a/b;)V

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    return-object p0
.end method

.method private b(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 4

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/l;->d()Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/d;I)V

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/d;->d()I

    move-result v2

    :goto_0
    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/u/a/d;->c(I)V

    new-instance v3, Lcom/apicloud/a/i/a/u/a/m;

    invoke-direct {v3, v0}, Lcom/apicloud/a/i/a/u/a/m;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    new-instance p1, Lcom/apicloud/a/i/a/u/a/l$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/u/a/l$1;-><init>(Lcom/apicloud/a/i/a/u/a/l;)V

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/a/u/a/d;->a(Lcom/apicloud/a/i/a/u/a/g;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p5, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "month"

    invoke-static {v1, v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1

    invoke-static {p5, p3, v5}, Lcom/deepe/c/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    goto :goto_0

    :cond_1
    invoke-static {p5, p3, v5}, Lcom/deepe/c/i/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p5

    :goto_0
    if-eqz p5, :cond_2

    invoke-direct {p0, p1, v4, v3}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    aget-object p5, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge p5, v5, :cond_4

    goto :goto_1

    :cond_3
    aget-object p5, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-le p5, v5, :cond_4

    :goto_1
    move p5, v4

    goto :goto_2

    :cond_4
    move p5, v2

    :goto_2
    if-eqz p5, :cond_6

    invoke-direct {p0, p1, v2, v1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, v0, v4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lcom/deepe/c/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lcom/deepe/c/i/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_6

    invoke-direct {p0, p1, v4, v3}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 10

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result v2

    if-le v2, v1, :cond_1

    move v3, v1

    :goto_0
    if-lt v3, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Lcom/apicloud/a/i/a/u/a/l;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array v2, v1, [Ljava/lang/String;

    new-array v3, v1, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-lt v5, v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ""

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/apicloud/a/i/a/u/a/l;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v7

    if-nez v7, :cond_4

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/l;->d()Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/apicloud/a/i/a/u/a/d;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v7, v5}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/d;I)V

    move v8, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Lcom/apicloud/a/i/a/u/a/d;->d()I

    move-result v8

    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-lt v8, v9, :cond_5

    move v8, v4

    :cond_5
    invoke-virtual {v7, v6}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/apicloud/a/i/a/u/a/d;->c(I)V

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v9, Lcom/apicloud/a/i/a/u/a/m;

    invoke-direct {v9, v5}, Lcom/apicloud/a/i/a/u/a/m;-><init>(I)V

    invoke-virtual {v9, v6}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    iget-object v8, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_6

    iget-object v8, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {v8, v5, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {v8, v5, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_4
    aput-object v6, v2, v5

    new-instance v6, Lcom/apicloud/a/i/a/u/a/l$2;

    invoke-direct {v6, p0, v2, v3, p1}, Lcom/apicloud/a/i/a/u/a/l$2;-><init>(Lcom/apicloud/a/i/a/u/a/l;[Ljava/lang/String;[ILcom/apicloud/a/i/a/u/a/b;)V

    invoke-virtual {v7, v6}, Lcom/apicloud/a/i/a/u/a/d;->a(Lcom/apicloud/a/i/a/u/a/g;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private c(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p5, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-object v6, p5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_6

    aget-object v0, p5, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_2

    if-eqz p2, :cond_0

    aget-object v0, p5, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_1

    goto :goto_0

    :cond_0
    aget-object v0, p5, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v0, v6, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v5, v4}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    aget-object v0, p5, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v0, v6, :cond_4

    goto :goto_2

    :cond_3
    aget-object v0, p5, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v0, v6, :cond_4

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v3, v2}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p5, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p4, p5, v5

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lcom/deepe/c/i/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p3, p2}, Lcom/deepe/c/i/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :goto_4
    if-eqz p2, :cond_6

    invoke-direct {p0, p1, v5, v4}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ILjava/lang/String;)V

    :cond_6
    return-void
.end method

.method private d()Lcom/apicloud/a/i/a/u/a/d;
    .locals 4

    new-instance v0, Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/u/a/d;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private d(Lcom/apicloud/a/i/a/u/a/b;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {v2, v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":"

    goto :goto_0

    :cond_0
    const-string v1, "-"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object v5

    const-string v6, "date"

    invoke-static {v6, v5}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {v5}, Lcom/apicloud/a/i/a/u/a/m;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {v6}, Lcom/apicloud/a/i/a/u/a/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apicloud/a/i/a/u/a/m;

    invoke-virtual {v5}, Lcom/apicloud/a/i/a/u/a/m;->a()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private e(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->d(Lcom/apicloud/a/i/a/u/a/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time"

    invoke-static {v1, v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ":"

    goto :goto_0

    :cond_0
    const-string v0, "-"

    :goto_0
    move-object v8, v0

    invoke-static {v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v7}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/b;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/a/u/a/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(F)V
    .locals 3

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/l;->c:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/apicloud/a/i/a/u/a/d;->b(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(I)V
    .locals 3

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/l;->d:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/apicloud/a/i/a/u/a/d;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/b;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/b;->d()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->c(Lcom/apicloud/a/i/a/u/a/b;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/d;I)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/l;->c:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/d;->b(F)V

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/l;->d:I

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(I)V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/u/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/l;->a:Lcom/apicloud/a/i/a/u/a/i;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/u/a/d;->d()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/u/a/d;->c(I)V

    new-instance v4, Lcom/apicloud/a/i/a/u/a/m;

    invoke-direct {v4, v1}, Lcom/apicloud/a/i/a/u/a/m;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/apicloud/a/i/a/u/a/d;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/l;->b:Ljava/util/List;

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/d;->b()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public b()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/u/a/d;->c()I

    move-result v0

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, p1}, Lcom/apicloud/a/i/a/u/a/d;->b(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c()I
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public c(I)Lcom/apicloud/a/i/a/u/a/d;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/l;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/apicloud/a/i/a/u/a/d;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/apicloud/a/i/a/u/a/d;

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public d(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    return-void
.end method
