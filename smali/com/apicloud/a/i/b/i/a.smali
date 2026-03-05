.class public Lcom/apicloud/a/i/b/i/a;
.super Lcom/apicloud/a/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/i<",
        "Lcom/apicloud/a/g/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/i;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a(Lcom/apicloud/a/c;)V
    .locals 4

    const-string v0, "textContent"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "page-style"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/g/h;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v2

    if-nez v2, :cond_1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/apicloud/a/c;

    :goto_0
    move-object v2, v0

    invoke-static {v2}, Lcom/apicloud/a/g/h;->a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    invoke-static {v1, v2}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Lcom/apicloud/a/c;)V

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "scopeId"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/apicloud/a/g/f;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/apicloud/a/g/f;-><init>(Lcom/apicloud/a/c;Z)V

    iget-object v1, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/c/u;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/g/f;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v3}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v3

    invoke-virtual {v3, p1, v0}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Lcom/apicloud/a/g/f;)V

    invoke-direct {p0, v2, v1}, Lcom/apicloud/a/i/b/i/a;->a(Lcom/apicloud/a/c;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/b/i/a;->c(Lcom/apicloud/a/c;)V

    :cond_2
    return-void
.end method

.method private a(Lcom/apicloud/a/c;Ljava/lang/String;)V
    .locals 2

    const-string v0, "@font-face"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/c;

    const-string v0, "fontFamily"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "src"

    invoke-virtual {p1, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/g/a/e;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/apicloud/a/g/a/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lcom/apicloud/a/g/m;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v0}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/apicloud/a/d/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private b(Lcom/apicloud/a/c;)V
    .locals 4

    const-string v0, "href"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->s()Lcom/apicloud/a/c/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/c/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-static {v0, p1}, Lcom/apicloud/a/g/h;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/apicloud/a/g/f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/apicloud/a/g/f;-><init>(Lcom/apicloud/a/c;Z)V

    invoke-virtual {v1, p1}, Lcom/apicloud/a/g/f;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v2}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Lcom/apicloud/a/g/f;)V

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/b/i/a;->a(Lcom/apicloud/a/c;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/b/i/a;->c(Lcom/apicloud/a/c;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "html"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/c;

    if-nez v0, :cond_0

    const-string v0, "body"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/apicloud/a/c;

    :cond_0
    if-eqz v0, :cond_1

    const-string p1, "fontSize"

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/a/d;->b(Lcom/apicloud/a/g/l;)F

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/g/h;->c(F)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/b/i/a;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/g/h;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "style"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/g/h;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/g/h;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/b/i/a;->a(Ljava/lang/String;Lcom/apicloud/a/g/h;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/g/h;
    .locals 0

    const-string p1, "href"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/b/i/a;->b(Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_0
    const-string p1, "textContent"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/b/i/a;->a(Lcom/apicloud/a/c;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apicloud/a/i/b/i/a;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object p1

    return-object p1
.end method
