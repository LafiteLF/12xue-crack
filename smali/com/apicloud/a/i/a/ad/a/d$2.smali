.class Lcom/apicloud/a/i/a/ad/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/b/d/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ad/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ad/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ad/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/deepe/c/b/d/b$e;->a(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->d(I)I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2, p3}, Lcom/deepe/c/b/d/b$e;->a(IFI)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/d;->d(I)I

    move-result p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/d$2;->a:Lcom/apicloud/a/i/a/ad/a/d;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ad/a/d;->b(Lcom/apicloud/a/i/a/ad/a/d;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/deepe/c/b/d/b$e;->b(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
