.class public Lcom/deepe/c/j/e/g;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/deepe/c/j/e/a/a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/e/g;->d:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/g;->a(I)V

    invoke-virtual {p0, p2}, Lcom/deepe/c/j/e/g;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/e/g;->d:Ljava/util/Map;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/e/g;->a:I

    return-void
.end method

.method public a(Lcom/deepe/c/j/e/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/g;->c:Lcom/deepe/c/j/e/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/g;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/g;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Lcom/deepe/c/j/e/a/a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/g;->c:Lcom/deepe/c/j/e/a/a;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/g;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/g;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/g;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "Content-Disposition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
