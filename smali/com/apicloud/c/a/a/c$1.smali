.class Lcom/apicloud/c/a/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/c/a/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/c;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/c;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/c$1;->a:Lcom/apicloud/c/a/a/c;

    iput-object p2, p0, Lcom/apicloud/c/a/a/c$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/c$1;->a:Lcom/apicloud/c/a/a/c;

    iget-object v0, v0, Lcom/apicloud/c/a/a/c;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/apicloud/c/a/a/c$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/c/a/a/c$b;

    iget-object v2, p0, Lcom/apicloud/c/a/a/c$1;->a:Lcom/apicloud/c/a/a/c;

    iget-object v3, v1, Lcom/apicloud/c/a/a/c$b;->a:Lcom/apicloud/c/a/a/j$w;

    iget v4, v1, Lcom/apicloud/c/a/a/c$b;->b:I

    iget v5, v1, Lcom/apicloud/c/a/a/c$b;->c:I

    iget v6, v1, Lcom/apicloud/c/a/a/c$b;->d:I

    iget v7, v1, Lcom/apicloud/c/a/a/c$b;->e:I

    invoke-virtual/range {v2 .. v7}, Lcom/apicloud/c/a/a/c;->b(Lcom/apicloud/c/a/a/j$w;IIII)V

    goto :goto_0
.end method
