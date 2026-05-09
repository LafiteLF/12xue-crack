.class public Lcom/deepe/c/c/a/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/c/a/a/d$a;,
        Lcom/deepe/c/c/a/a/d$b;,
        Lcom/deepe/c/c/a/a/d$c;,
        Lcom/deepe/c/c/a/a/d$d;,
        Lcom/deepe/c/c/a/a/d$e;,
        Lcom/deepe/c/c/a/a/d$f;,
        Lcom/deepe/c/c/a/a/d$g;,
        Lcom/deepe/c/c/a/a/d$h;,
        Lcom/deepe/c/c/a/a/d$i;,
        Lcom/deepe/c/c/a/a/d$j;,
        Lcom/deepe/c/c/a/a/d$k;,
        Lcom/deepe/c/c/a/a/d$l;,
        Lcom/deepe/c/c/a/a/d$m;,
        Lcom/deepe/c/c/a/a/d$n;,
        Lcom/deepe/c/c/a/a/d$o;,
        Lcom/deepe/c/c/a/a/d$p;,
        Lcom/deepe/c/c/a/a/d$q;,
        Lcom/deepe/c/c/a/a/d$r;,
        Lcom/deepe/c/c/a/a/d$s;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/c/a/a/d$d;

.field private b:Lcom/deepe/c/c/a/a/d$s;

.field private c:Lcom/deepe/c/c/a/d;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/deepe/c/c/a/a/d$d;->h:Lcom/deepe/c/c/a/a/d$d;

    sget-object v1, Lcom/deepe/c/c/a/a/d$s;->a:Lcom/deepe/c/c/a/a/d$s;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/deepe/c/c/a/a/d;-><init>(Lcom/deepe/c/c/a/a/d$d;Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/c/a/a/d$d;Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/c/a/a/d;->d:Z

    iput-object p1, p0, Lcom/deepe/c/c/a/a/d;->a:Lcom/deepe/c/c/a/a/d$d;

    iput-object p2, p0, Lcom/deepe/c/c/a/a/d;->b:Lcom/deepe/c/c/a/a/d$s;

    iput-object p3, p0, Lcom/deepe/c/c/a/a/d;->c:Lcom/deepe/c/c/a/d;

    return-void
.end method

.method public constructor <init>(Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/c/a/a/d$d;->h:Lcom/deepe/c/c/a/a/d$d;

    invoke-direct {p0, v0, p1, p2}, Lcom/deepe/c/c/a/a/d;-><init>(Lcom/deepe/c/c/a/a/d$d;Lcom/deepe/c/c/a/a/d$s;Lcom/deepe/c/c/a/d;)V

    return-void
.end method

.method private static a(Ljava/util/List;ILcom/deepe/c/c/a/a/k$ak;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$ai;",
            ">;I",
            "Lcom/deepe/c/c/a/a/k$ak;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    const/4 v1, -0x1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    iget-object p0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p0}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/k$am;

    if-ne p1, p2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/deepe/c/c/a/a/e;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/e;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/deepe/c/c/a/a/d$d;->valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/e;->j()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0
.end method

.method private a(Lcom/deepe/c/c/a/a/d$p;Lcom/deepe/c/c/a/a/e;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/deepe/c/c/a/a/d;->d:Z

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/e;)Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d;->a:Lcom/deepe/c/c/a/a/d$d;

    invoke-static {v0, v1}, Lcom/deepe/c/c/a/a/d;->a(Ljava/util/List;Lcom/deepe/c/c/a/a/d$d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/deepe/c/c/a/a/d;->d:Z

    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/d;->c(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/d$p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$p;)V

    iput-boolean v3, p0, Lcom/deepe/c/c/a/a/d;->d:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/d;->c(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/d$p;

    :goto_0
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result p1

    if-nez p1, :cond_a

    const/16 p1, 0x7d

    invoke-virtual {p2, p1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    invoke-direct {p1, v2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string p2, "Invalid @media rule: missing rule set"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-boolean v1, p0, Lcom/deepe/c/c/a/a/d;->d:Z

    if-nez v1, :cond_9

    const-string v1, "import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-static {p2}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/e;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v3

    if-nez v3, :cond_6

    const/16 v3, 0x3b

    invoke-virtual {p2, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    invoke-direct {p1, v2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/deepe/c/c/a/a/d;->c:Lcom/deepe/c/c/a/d;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/deepe/c/c/a/a/d;->a:Lcom/deepe/c/c/a/a/d$d;

    invoke-static {v1, v2}, Lcom/deepe/c/c/a/a/d;->a(Ljava/util/List;Lcom/deepe/c/c/a/a/d$d;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d;->c:Lcom/deepe/c/c/a/d;

    invoke-virtual {v1, v0}, Lcom/deepe/c/c/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Lcom/deepe/c/c/a/a/d;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$p;)V

    goto :goto_2

    :cond_8
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string p2, "Invalid @import rule: expected string or url()"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string v0, "Ignoring @%s rule"

    invoke-static {v0, p1}, Lcom/deepe/c/c/a/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/d;->b(Lcom/deepe/c/c/a/a/e;)V

    :cond_a
    :goto_2
    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    return-void

    :cond_b
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string p2, "Invalid \'@\' rule"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/a/a/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/d$o;",
            "Lcom/deepe/c/c/a/a/d$q;",
            "I",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$ai;",
            ">;I)Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/deepe/c/c/a/a/d$q;->a(I)Lcom/deepe/c/c/a/a/d$r;

    move-result-object v2

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/c/a/a/k$ak;

    invoke-static {p0, v2, v5}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$r;Lcom/deepe/c/c/a/a/k$ak;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    return v7

    :cond_0
    iget-object v6, v2, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v8, Lcom/deepe/c/c/a/a/d$c;->a:Lcom/deepe/c/c/a/a/d$c;

    const/4 v9, 0x1

    if-ne v6, v8, :cond_4

    if-nez p2, :cond_1

    return v9

    :cond_1
    move v4, p4

    :cond_2
    if-gtz v4, :cond_3

    return v7

    :cond_3
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, p1, v2, p3, v4}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_2

    return v9

    :cond_4
    iget-object v2, v2, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v6, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    if-ne v2, v6, :cond_5

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v4, p4, -0x1

    invoke-static {p0, p1, v2, p3, v4}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;I)Z

    move-result v0

    return v0

    :cond_5
    invoke-static {p3, p4, v5}, Lcom/deepe/c/c/a/a/d;->a(Ljava/util/List;ILcom/deepe/c/c/a/a/k$ak;)I

    move-result v2

    if-gtz v2, :cond_6

    return v7

    :cond_6
    iget-object v5, v5, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {v5}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object v5

    sub-int/2addr v2, v9

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/deepe/c/c/a/a/k$ak;

    add-int/lit8 v2, p2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;ILcom/deepe/c/c/a/a/k$ak;)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;ILcom/deepe/c/c/a/a/k$ak;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/c/a/a/d$o;",
            "Lcom/deepe/c/c/a/a/d$q;",
            "I",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/k$ai;",
            ">;I",
            "Lcom/deepe/c/c/a/a/k$ak;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1, p2}, Lcom/deepe/c/c/a/a/d$q;->a(I)Lcom/deepe/c/c/a/a/d$r;

    move-result-object v4

    invoke-static {p0, v4, p5}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$r;Lcom/deepe/c/c/a/a/k$ak;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    iget-object v5, v4, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v7, Lcom/deepe/c/c/a/a/d$c;->a:Lcom/deepe/c/c/a/a/d$c;

    const/4 v8, 0x1

    if-ne v5, v7, :cond_4

    if-nez p2, :cond_1

    return v8

    :cond_1
    move v2, p4

    :goto_0
    if-gez v2, :cond_2

    return v6

    :cond_2
    add-int/lit8 v4, p2, -0x1

    invoke-static {p0, p1, v4, p3, v2}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_3

    return v8

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    iget-object v4, v4, Lcom/deepe/c/c/a/a/d$r;->a:Lcom/deepe/c/c/a/a/d$c;

    sget-object v5, Lcom/deepe/c/c/a/a/d$c;->b:Lcom/deepe/c/c/a/a/d$c;

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, p1, v2, p3, p4}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;I)Z

    move-result v0

    return v0

    :cond_5
    invoke-static {p3, p4, p5}, Lcom/deepe/c/c/a/a/d;->a(Ljava/util/List;ILcom/deepe/c/c/a/a/k$ak;)I

    move-result v5

    if-gtz v5, :cond_6

    return v6

    :cond_6
    iget-object v2, p5, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {v2}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object v2

    sub-int/2addr v5, v8

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/deepe/c/c/a/a/k$ak;

    add-int/lit8 v2, p2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;ILcom/deepe/c/c/a/a/k$ak;)Z

    move-result v0

    return v0
.end method

.method static a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/k$ak;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/deepe/c/c/a/a/d$q;->a(I)Lcom/deepe/c/c/a/a/d$r;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$r;Lcom/deepe/c/c/a/a/k$ak;)Z

    move-result p0

    return p0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    :goto_0
    if-nez v0, :cond_1

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/d$q;->a()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$q;ILjava/util/List;ILcom/deepe/c/c/a/a/k$ak;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v0, Lcom/deepe/c/c/a/a/k$am;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$am;->v:Lcom/deepe/c/c/a/a/k$ai;

    goto :goto_0
.end method

.method private static a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/d$r;Lcom/deepe/c/c/a/a/k$ak;)Z
    .locals 7

    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p1, Lcom/deepe/c/c/a/a/d$r;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/d$a;

    iget-object v4, v3, Lcom/deepe/c/c/a/a/d$a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0xd1b

    if-eq v5, v6, :cond_5

    const v6, 0x5a5a978

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p2, Lcom/deepe/c/c/a/a/k$ak;->t:Ljava/util/List;

    if-nez v4, :cond_4

    return v1

    :cond_4
    iget-object v4, p2, Lcom/deepe/c/c/a/a/k$ak;->t:Ljava/util/List;

    iget-object v3, v3, Lcom/deepe/c/c/a/a/d$a;->c:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_5
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :goto_1
    return v1

    :cond_6
    iget-object v3, v3, Lcom/deepe/c/c/a/a/d$a;->c:Ljava/lang/String;

    iget-object v4, p2, Lcom/deepe/c/c/a/a/k$ak;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    return v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_3
    if-lt v2, v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, p1, Lcom/deepe/c/c/a/a/d$r;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/d$e;

    invoke-interface {v3, p0, p2}, Lcom/deepe/c/c/a/a/d$e;->a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/k$ak;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method static a(Ljava/lang/String;Lcom/deepe/c/c/a/a/d$d;)Z
    .locals 1

    new-instance v0, Lcom/deepe/c/c/a/a/e;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-static {v0}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/e;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/deepe/c/c/a/a/d;->a(Ljava/util/List;Lcom/deepe/c/c/a/a/d$d;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Lcom/deepe/c/c/a/a/d$d;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$d;",
            ">;",
            "Lcom/deepe/c/c/a/a/d$d;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/d$d;

    sget-object v2, Lcom/deepe/c/c/a/a/d$d;->a:Lcom/deepe/c/c/a/a/d$d;

    if-eq v0, v2, :cond_3

    if-ne v0, p1, :cond_1

    :cond_3
    return v1
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/e;

    invoke-direct {v0, p0}, Lcom/deepe/c/c/a/a/e;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    goto :goto_0
.end method

.method private b(Lcom/deepe/c/c/a/a/e;)V
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->m()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    return-void
.end method

.method private b(Lcom/deepe/c/c/a/a/d$p;Lcom/deepe/c/c/a/a/e;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-direct {p0, p2}, Lcom/deepe/c/c/a/a/d;->d(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/o;

    move-result-object v1

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/d$q;

    new-instance v2, Lcom/deepe/c/c/a/a/d$n;

    iget-object v3, p0, Lcom/deepe/c/c/a/a/d;->b:Lcom/deepe/c/c/a/a/d$s;

    invoke-direct {v2, v0, v1, v3}, Lcom/deepe/c/c/a/a/d$n;-><init>(Lcom/deepe/c/c/a/a/d$q;Lcom/deepe/c/c/a/a/o;Lcom/deepe/c/c/a/a/d$s;)V

    invoke-virtual {p1, v2}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$n;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string p2, "Malformed rule block: expected \'{\'"

    invoke-direct {p1, p2}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/d$p;
    .locals 3

    new-instance v0, Lcom/deepe/c/c/a/a/d$p;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/d$p;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/d;->a(Lcom/deepe/c/c/a/a/d$p;Lcom/deepe/c/c/a/a/e;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/deepe/c/c/a/a/d;->b(Lcom/deepe/c/c/a/a/d$p;Lcom/deepe/c/c/a/a/e;)Z

    move-result v1
    :try_end_0
    .catch Lcom/deepe/c/c/a/a/c; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CSS parser terminated early due to error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c/a/a/l;->b(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method private d(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/o;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/c/a/a/c;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/c/a/a/o;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/o;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    const-string v3, "important"

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/a/a/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string v0, "Malformed rule set: found unexpected \'!\'"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/o;->a(Lcom/deepe/c/c/a/a/o;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/e;->h()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Lcom/deepe/c/c/a/a/e;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    return-object v0

    :cond_4
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string v0, "Expected property value"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lcom/deepe/c/c/a/a/c;

    const-string v0, "Expected \':\'"

    invoke-direct {p1, v0}, Lcom/deepe/c/c/a/a/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/d$p;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/a/a/e;

    invoke-direct {v0, p1}, Lcom/deepe/c/c/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/e;->i()V

    invoke-direct {p0, v0}, Lcom/deepe/c/c/a/a/d;->c(Lcom/deepe/c/c/a/a/e;)Lcom/deepe/c/c/a/a/d$p;

    move-result-object p1

    return-object p1
.end method
