.class Lcom/apicloud/a/f/c/a;
.super Lcom/apicloud/a/f/c/b;


# instance fields
.field private a:Lcom/deepe/c/k/g;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/c/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/f/c/a;->d()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/c/u;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/f/c/a;->d()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/deepe/c/k/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/c/k/g;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/f/c/a;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0, p1}, Lcom/deepe/c/k/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    invoke-direct {p0}, Lcom/apicloud/a/f/c/a;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0}, Lcom/deepe/c/k/g;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/f/c/a;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/k/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/f/c/a;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0}, Lcom/deepe/c/k/g;->b()Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/f/c/a;->e()V

    iget-object v0, p0, Lcom/apicloud/a/f/c/a;->a:Lcom/deepe/c/k/g;

    invoke-virtual {v0, p1}, Lcom/deepe/c/k/g;->a(Ljava/lang/String;)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
