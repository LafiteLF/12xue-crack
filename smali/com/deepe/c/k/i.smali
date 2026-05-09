.class public Lcom/deepe/c/k/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/deepe/c/i/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/w<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/i/w;

    invoke-direct {v0}, Lcom/deepe/c/i/w;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/w;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    invoke-virtual {v1}, Lcom/deepe/c/i/w;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/w;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/w;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/k/i;->a:Lcom/deepe/c/i/w;

    invoke-virtual {v0}, Lcom/deepe/c/i/w;->clear()V

    return-void
.end method
