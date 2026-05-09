.class Lcom/deepe/c/c/a/a/d$q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/c/a/a/d$r;",
            ">;"
        }
    .end annotation
.end field

.field b:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method a(I)Lcom/deepe/c/c/a/a/d$r;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/a/d$r;

    return-object p1
.end method

.method a(Lcom/deepe/c/c/a/a/d$r;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

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

.method c()V
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    const v1, 0xf4240

    add-int/2addr v0, v1

    iput v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    return-void
.end method

.method d()V
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    return-void
.end method

.method e()V
    .locals 1

    iget v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/d$q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/c/c/a/a/d$q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/c/a/a/d$r;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
