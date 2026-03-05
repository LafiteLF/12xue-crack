.class Lcom/apicloud/a/i/a/aa/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/aa/f;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/aa/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/aa/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->b(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/g;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v1}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v2

    iget-object v2, v2, Lcom/apicloud/a/i/a/aa/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-virtual {v3}, Lcom/apicloud/a/i/a/aa/f;->l()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/aa/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/a;->b()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/aa/a;->a:I

    invoke-static {v0, v2}, Lcom/apicloud/a/i/a/aa/g;->a(Lcom/apicloud/a/i/a/aa/f;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/aa/a;->a(I)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/aa/a;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v2

    iget v2, v2, Lcom/apicloud/a/i/a/aa/a;->b:I

    invoke-static {v0, v2}, Lcom/apicloud/a/i/a/aa/g;->b(Lcom/apicloud/a/i/a/aa/f;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/f$1;->a:Lcom/apicloud/a/i/a/aa/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/aa/f;->a(Lcom/apicloud/a/i/a/aa/f;)Lcom/apicloud/a/i/a/aa/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/aa/a;->b(I)V

    :cond_2
    return-void
.end method
