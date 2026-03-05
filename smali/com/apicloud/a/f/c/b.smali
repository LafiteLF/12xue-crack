.class Lcom/apicloud/a/f/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/f/c/c;


# instance fields
.field private a:Lcom/apicloud/a/d;

.field private b:Lcom/deepe/c/k/i;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/c/b;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/k/i;

    invoke-direct {v0}, Lcom/deepe/c/k/i;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/f/c/b;->e()V

    iget-object v1, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    invoke-virtual {v1, p1}, Lcom/deepe/c/k/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/apicloud/a/f/c/b;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    invoke-virtual {v0}, Lcom/deepe/c/k/i;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/f/c/b;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/k/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    invoke-virtual {v0}, Lcom/deepe/c/k/i;->b()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/f/c/b;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->b:Lcom/deepe/c/k/i;

    invoke-virtual {v0, p1}, Lcom/deepe/c/k/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method d()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/f/c/b;->a:Lcom/apicloud/a/d;

    return-object v0
.end method
