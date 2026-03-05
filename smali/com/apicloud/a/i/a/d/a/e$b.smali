.class Lcom/apicloud/a/i/a/d/a/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/d/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/e;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/a/i/a/d/a/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->c:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/e;->requestLayout()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/e$a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/d/a/e$a;->a(Lcom/apicloud/a/i/a/d/a/e;)V

    goto :goto_0
.end method

.method public a(Lcom/apicloud/a/i/a/d/a/e$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/f;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/e$a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/apicloud/a/i/a/d/a/e$a;->a(Lcom/apicloud/a/i/a/d/a/e;Lcom/apicloud/a/i/a/d/f;)V

    goto :goto_0
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/e$a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/apicloud/a/i/a/d/a/e$a;->a(Lcom/apicloud/a/i/a/d/a/e;Ljava/io/File;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/e$a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v2, p1}, Lcom/apicloud/a/i/a/d/a/e$a;->a(Lcom/apicloud/a/i/a/d/a/e;[B)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/a/d/a/e$a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/e$b;->a:Lcom/apicloud/a/i/a/d/a/e;

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/a/d/a/e$a;->b(Lcom/apicloud/a/i/a/d/a/e;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/d/a/e$b;->c:Z

    return-void
.end method
