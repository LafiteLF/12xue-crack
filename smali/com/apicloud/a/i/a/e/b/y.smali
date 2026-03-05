.class public final Lcom/apicloud/a/i/a/e/b/y;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lcom/apicloud/a/i/a/e/a/b$b;

.field private b:[Lcom/apicloud/a/i/a/e/b/a;

.field private final c:Lcom/apicloud/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/i/a/e/b/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/apicloud/a/i/a/e/a/b$b;

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/b/y;->a:[Lcom/apicloud/a/i/a/e/a/b$b;

    sget-object v0, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/apicloud/a/i/a/e/b/a;

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/b/y;->b:[Lcom/apicloud/a/i/a/e/b/a;

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b/y;->c:Lcom/apicloud/a/d;

    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/e/b/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/b/y;->b:[Lcom/apicloud/a/i/a/e/b/a;

    aput-object v0, v1, p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/b/y;->a:[Lcom/apicloud/a/i/a/e/a/b$b;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/e/b/a;->b()[C

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/e/a/a$c;->a([C)Lcom/apicloud/a/i/a/e/a/b$b;

    move-result-object v0

    aput-object v0, v1, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private a(Lcom/apicloud/a/i/a/e/a/d;)Lcom/apicloud/a/i/a/e/a/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/b/y;->b(Lcom/apicloud/a/i/a/e/a/d;)Lcom/apicloud/a/i/a/e/a/b$a;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/i/a/e/a/a$a;->a(Lcom/apicloud/a/i/a/e/a/b$a;)Lcom/apicloud/a/i/a/e/a/a;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/e/a/d;)Lcom/apicloud/a/i/a/e/a/b$a;
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/e/a/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/apicloud/a/i/a/e/a/d;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/apicloud/a/i/a/e/a/d;->a(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Lcom/apicloud/a/i/a/e/a/d;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {v0, v1, v2, p1}, Lcom/apicloud/a/i/a/e/a/a$b;->a([D[Z[Ljava/lang/String;[I)Lcom/apicloud/a/i/a/e/a/b$a;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/e/b/y;->a(Lcom/apicloud/a/i/a/e/a/d;)Lcom/apicloud/a/i/a/e/a/a;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Lcom/apicloud/a/i/a/e/a/d;->f(I)I

    move-result p2

    const/4 v3, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    aget v4, v1, v0

    if-ltz v4, :cond_2

    sget-object v5, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    array-length v5, v5

    if-gt v4, v5, :cond_2

    iget-object v5, p0, Lcom/apicloud/a/i/a/e/b/y;->b:[Lcom/apicloud/a/i/a/e/b/a;

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/apicloud/a/i/a/e/b/y;->c:Lcom/apicloud/a/d;

    invoke-interface {v5}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported operation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/apicloud/a/i/a/e/b/w;->a:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/apicloud/a/i/a/e/b/y;->a:[Lcom/apicloud/a/i/a/e/a/b$b;

    aget-object v4, v6, v4

    invoke-interface {v2, v4, v3}, Lcom/apicloud/a/i/a/e/a/a;->a(Lcom/apicloud/a/i/a/e/a/b$b;Lcom/apicloud/a/i/a/e/a/a;)Lcom/apicloud/a/i/a/e/a/a;

    move-result-object v3

    invoke-interface {v5, p1, v3}, Lcom/apicloud/a/i/a/e/b/a;->a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/apicloud/a/i/a/e/b/y;->c:Lcom/apicloud/a/d;

    invoke-interface {v5}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported operation code: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
