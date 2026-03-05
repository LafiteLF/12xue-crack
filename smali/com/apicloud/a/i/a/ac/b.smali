.class public Lcom/apicloud/a/i/a/ac/b;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/ac/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ac/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ac/b;->a(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "offset-top"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ac/b;->b(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V

    :cond_0
    const-string v0, "container"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ac/b;->c(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V

    :cond_1
    return-void
.end method

.method b(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "offset-top"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ac/a;->a(I)V

    :cond_0
    return-void
.end method

.method c(Lcom/apicloud/a/i/a/ac/a;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "container"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ac/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
