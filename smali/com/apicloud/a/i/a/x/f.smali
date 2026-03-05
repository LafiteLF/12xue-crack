.class public Lcom/apicloud/a/i/a/x/f;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/x/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/x/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/x/e;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/x/e;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/x/e;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/x/f;->a:Lcom/apicloud/a/i/a/x/e;

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/x/d;)Lcom/apicloud/a/i/a/x/f$a;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/x/d;->f()Lcom/apicloud/a/i/a/x/i;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/x/f$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/f;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/x/f$a;

    invoke-direct {v1, p0, v0}, Lcom/apicloud/a/i/a/x/f$a;-><init>(Lcom/apicloud/a/i/a/x/f;Lcom/apicloud/a/c/l;)V

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/x/d;->a(Lcom/apicloud/a/i/a/x/i;)V

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/x/f;->b(Lcom/apicloud/a/i/a/x/d;)Lcom/apicloud/a/i/a/x/f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/x/f$a;->b(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/x/f;->b(Lcom/apicloud/a/i/a/x/d;)Lcom/apicloud/a/i/a/x/f$a;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/x/f$a;->a(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/f;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/x/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/x/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/x/f;->a(Lcom/apicloud/a/i/a/x/d;)Lcom/apicloud/a/i/a/x/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/x/d;)Lcom/apicloud/a/i/a/x/e;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/f;->a:Lcom/apicloud/a/i/a/x/e;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "refresh"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/x/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/x/f;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "statechange"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/x/f;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "pulling"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/x/f;->c(Ljava/lang/String;Lcom/apicloud/a/i/a/x/d;Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/x/d;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/x/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/x/f;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/x/d;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
