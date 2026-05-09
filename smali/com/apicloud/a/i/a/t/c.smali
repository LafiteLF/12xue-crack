.class public Lcom/apicloud/a/i/a/t/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/t/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/t/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/t/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/t/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/t/c;->a:Lcom/apicloud/a/i/a/t/b;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/t/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/t/c;->b(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/d;->a(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/t/a;->a()Lcom/apicloud/a/i/a/t/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/t/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/c;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/t/d;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/t/a;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/t/a;->a(Lcom/apicloud/a/i/a/t/d;)V

    :cond_0
    return-object v0
.end method

.method private b(Lcom/apicloud/a/i/a/t/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/t/c;->b(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/d;->b(Z)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/t/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/t/c;->b(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/t/d;->c(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/t/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/t/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/t/c;->a(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/t/a;)Lcom/apicloud/a/i/a/t/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/t/c;->a:Lcom/apicloud/a/i/a/t/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "navigator"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/t/c;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/t/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/t/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6f4abffd

    if-eq v0, v1, :cond_4

    const v1, -0x23bacec7

    if-eq v0, v1, :cond_2

    const v1, 0x2fd71e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "fail"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/t/c;->b(Lcom/apicloud/a/i/a/t/a;Z)V

    return-void

    :cond_2
    const-string v0, "complete"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/t/c;->c(Lcom/apicloud/a/i/a/t/a;Z)V

    return-void

    :cond_4
    const-string v0, "success"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :cond_5
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/t/c;->a(Lcom/apicloud/a/i/a/t/a;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/t/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/t/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/t/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
