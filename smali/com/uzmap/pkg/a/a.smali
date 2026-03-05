.class final Lcom/uzmap/pkg/a/a;
.super Ljava/lang/Object;


# direct methods
.method static a()V
    .locals 1

    invoke-static {}, Lcom/deepe/a;->a()Lcom/deepe/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/a;->e()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/k/b;

    invoke-direct {v0, p0}, Lcom/deepe/c/k/b;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/k/b;->a(Z)V

    :cond_0
    invoke-static {p0}, Lcom/deepe/a;->a(Landroid/content/Context;)Lcom/deepe/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/deepe/a;->a(Lcom/deepe/c/k/b;)V

    invoke-static {}, Lcom/uzmap/pkg/a/a;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/uzmap/pkg/a/a;->a(Z)V

    :cond_1
    return-void
.end method

.method static a(Z)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/a;->a(Z)V

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static c()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    return v0
.end method

.method static d()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/z;->j()Z

    move-result v0

    return v0
.end method
