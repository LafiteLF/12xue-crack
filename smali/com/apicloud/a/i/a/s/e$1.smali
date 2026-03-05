.class Lcom/apicloud/a/i/a/s/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/s/e;->onAttachedToWindow()V
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

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v3, v0, v2}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;IZ)I

    move-result v0

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v3, v0}, Lcom/apicloud/a/i/a/s/e;->a(Lcom/apicloud/a/i/a/s/e;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v3, v0, v2}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;IZ)I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/apicloud/a/i/a/s/e;->c(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v2, v0}, Lcom/apicloud/a/i/a/s/e;->b(Lcom/apicloud/a/i/a/s/e;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/s/e;->d(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e$1;->a:Lcom/apicloud/a/i/a/s/e;

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/e;->c(Lcom/apicloud/a/i/a/s/e;)V

    return-void
.end method
