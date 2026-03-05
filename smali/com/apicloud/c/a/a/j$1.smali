.class Lcom/apicloud/c/a/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->u:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/j;->t:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$1;->a:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->e()V

    :cond_3
    :goto_0
    return-void
.end method
