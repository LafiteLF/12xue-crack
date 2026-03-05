.class Lcom/apicloud/a/i/a/b/a$2;
.super Lcom/deepe/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/b/a;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-direct {p0}, Lcom/deepe/a/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->b(Lcom/apicloud/a/i/a/b/a;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/e;->a()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/b/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/e;->b()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/b/a$2;->a:Lcom/apicloud/a/i/a/b/a;

    invoke-static {v0}, Lcom/apicloud/a/i/a/b/a;->c(Lcom/apicloud/a/i/a/b/a;)Lcom/apicloud/a/i/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/b/e;->c()V

    :cond_0
    return-void
.end method
