.class public Lcom/deepe/c/c/a/b;
.super Lcom/deepe/c/c/a/a/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/c/a/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFFF)Lcom/deepe/c/c/a/b;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/a/i;->b(FFFF)Lcom/deepe/c/c/a/a/i;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/c/a/b;

    return-object p1
.end method

.method public a()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->a()Z

    move-result v0

    return v0
.end method

.method public synthetic b(FFFF)Lcom/deepe/c/c/a/a/i;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/a/b;->a(FFFF)Lcom/deepe/c/c/a/b;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->b()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->d()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->e()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/c/a/a/i;->f()Z

    move-result v0

    return v0
.end method
