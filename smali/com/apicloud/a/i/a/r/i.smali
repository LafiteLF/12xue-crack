.class public Lcom/apicloud/a/i/a/r/i;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/r/h;",
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

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/i;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/r/h;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/r/h;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/i/a/r/h;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/h;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/i;->a(Lcom/apicloud/a/i/a/r/h;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/r/i;->a(Lcom/apicloud/a/i/a/r/h;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/r/h;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "list-header"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/r/h;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/r/i;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/h;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/r/h;Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "scroll"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/h;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/r/h;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/r/i;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/r/h;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
