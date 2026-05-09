.class public Lcom/deepe/c/c/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/deepe/c/c/a/a/d$p;

.field c:Lcom/deepe/c/c/a/a;

.field d:Ljava/lang/String;

.field e:Lcom/deepe/c/c/a/a/k$b;

.field f:Ljava/lang/String;

.field g:Lcom/deepe/c/c/a/a/k$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->b:Lcom/deepe/c/c/a/a/d$p;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->c:Lcom/deepe/c/c/a/a;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->e:Lcom/deepe/c/c/a/a/k$b;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->g:Lcom/deepe/c/c/a/a/k$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->b:Lcom/deepe/c/c/a/a/d$p;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public b(FFFF)Lcom/deepe/c/c/a/a/i;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/a/a/k$b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/k$b;-><init>(FFFF)V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/i;->g:Lcom/deepe/c/c/a/a/k$b;

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->c:Lcom/deepe/c/c/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->e:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->g:Lcom/deepe/c/c/a/a/k$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/a/a/i;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
