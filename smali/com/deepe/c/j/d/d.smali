.class public Lcom/deepe/c/j/d/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/deepe/c/j/n;


# direct methods
.method public constructor <init>(Lcom/deepe/c/j/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/j/d/d;->a:Lcom/deepe/c/j/n;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/j/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/d/d;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/deepe/c/j/e/f;

    check-cast p1, Lcom/deepe/c/j/e/f;

    invoke-virtual {p1}, Lcom/deepe/c/j/e/f;->getCallback()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/e/f;->addCallback(Ljava/util/Collection;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/j/d/d;->a:Lcom/deepe/c/j/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/n;->b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/d/d;->a:Lcom/deepe/c/j/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/n;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/d/d;->a:Lcom/deepe/c/j/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/n;->a(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/l;

    move-result-object p1

    return-object p1
.end method
