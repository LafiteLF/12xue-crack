.class Lcom/uzmap/pkg/uzcore/d$a;
.super Lcom/deepe/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/d;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-direct {p0}, Lcom/deepe/b/b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/d;Lcom/uzmap/pkg/uzcore/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d$a;-><init>(Lcom/uzmap/pkg/uzcore/d;)V

    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d$a;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d$a;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->j:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->k:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$a;->a:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
