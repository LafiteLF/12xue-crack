.class public Lcom/apicloud/a/i/a/z/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/z/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/z/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/z/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/z/c;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/z/c;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/i/a/z/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/z/c;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/z/d;->a(Lcom/apicloud/a/i/a/z/c;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "safe-area"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/z/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/z/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/z/c;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/z/c;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 1

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/z/c;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/z/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/z/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/z/c;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
