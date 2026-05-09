.class public Lcom/apicloud/a/i/a/n/e;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/n/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/n/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/n/d;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/n/d;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/n/e;->a:Lcom/apicloud/a/i/a/n/d;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/n/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/e;->b(Lcom/apicloud/a/i/a/n/b;)Lcom/apicloud/a/i/a/n/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/c;->a(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/n/b;)Lcom/apicloud/a/i/a/n/c;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/b;->a()Lcom/apicloud/a/i/a/n/c;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/apicloud/a/i/c;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/apicloud/a/i/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/e;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    new-instance v1, Lcom/apicloud/a/i/a/n/c;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/e;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/apicloud/a/i/a/n/c;-><init>(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/c/l;)V

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/n/b;->a(Lcom/apicloud/a/i/a/n/c;)V

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private b(Lcom/apicloud/a/i/a/n/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/e;->b(Lcom/apicloud/a/i/a/n/b;)Lcom/apicloud/a/i/a/n/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/n/c;->b(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/n/e;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/n/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/n/e;->a(Lcom/apicloud/a/i/a/n/b;)Lcom/apicloud/a/i/a/n/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/n/b;)Lcom/apicloud/a/i/a/n/d;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/n/e;->a:Lcom/apicloud/a/i/a/n/d;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "image"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/n/e;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x32c4e6

    if-eq v0, v1, :cond_2

    const v1, 0x5c4d208

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/n/e;->b(Lcom/apicloud/a/i/a/n/b;Z)V

    return-void

    :cond_2
    const-string v0, "load"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/n/e;->a(Lcom/apicloud/a/i/a/n/b;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/n/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/n/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/n/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
