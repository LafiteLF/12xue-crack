.class Lcom/apicloud/c/a/a/j$2;
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

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$2;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$2;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$2;->a:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$e;->b()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$2;->a:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apicloud/c/a/a/j;->E:Z

    return-void
.end method
