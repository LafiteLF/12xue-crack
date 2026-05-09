.class Lcom/apicloud/a/i/a/s/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/s/e;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/s/e;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/s/e;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->e(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->f(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->e(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->e(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->e(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/e;->getLeft()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v1}, Lcom/apicloud/a/i/a/s/e;->f(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v1}, Lcom/apicloud/a/i/a/s/e;->f(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v1}, Lcom/apicloud/a/i/a/s/e;->f(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/s/e;->getTop()I

    move-result v1

    :goto_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v2}, Lcom/apicloud/a/i/a/s/e;->g(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/g/h;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-interface {v2, v3, v0, v1}, Lcom/apicloud/a/i/a/g/h;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$3;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/s/e;->c(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    return-void
.end method
