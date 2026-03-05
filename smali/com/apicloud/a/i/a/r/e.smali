.class public Lcom/apicloud/a/i/a/r/e;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/r/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/r/a;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "cell-type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cellType"

    :goto_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/r/a;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/e;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/r/a;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/r/a;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/i/a/r/a;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/e;->a(Lcom/apicloud/a/i/a/r/a;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "cell"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/r/e;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/a;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/apicloud/a/i/a/r/e;->a(Lcom/apicloud/a/i/a/r/a;Lcom/apicloud/a/c;)V

    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/r/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/r/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
