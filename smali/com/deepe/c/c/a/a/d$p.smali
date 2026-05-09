.class public Lcom/deepe/c/c/a/a/d$p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "p"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    return-object v0
.end method

.method a(Lcom/deepe/c/c/a/a/d$n;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/d$n;

    iget-object v2, v2, Lcom/deepe/c/c/a/a/d$n;->a:Lcom/deepe/c/c/a/a/d$q;

    iget v2, v2, Lcom/deepe/c/c/a/a/d$q;->b:I

    iget-object v3, p1, Lcom/deepe/c/c/a/a/d$n;->a:Lcom/deepe/c/c/a/a/d$q;

    iget v3, v3, Lcom/deepe/c/c/a/a/d$q;->b:I

    if-le v2, v3, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a/d$p;)V
    .locals 1

    iget-object v0, p1, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    :cond_1
    iget-object p1, p1, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/c/a/a/d$n;

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/a/a/d$p;->a(Lcom/deepe/c/c/a/a/d$n;)V

    goto :goto_0
.end method

.method public a(Lcom/deepe/c/c/a/a/d$s;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/c/a/a/d$n;

    iget-object v1, v1, Lcom/deepe/c/c/a/a/d$n;->c:Lcom/deepe/c/c/a/a/d$s;

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$p;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/d$n;

    invoke-virtual {v2}, Lcom/deepe/c/c/a/a/d$n;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
