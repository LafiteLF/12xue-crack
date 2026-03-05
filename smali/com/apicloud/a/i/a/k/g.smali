.class public Lcom/apicloud/a/i/a/k/g;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/k/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/i/a/k/f<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/k/f;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/k/f;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/k/g;->a:Lcom/apicloud/a/i/a/k/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/g;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/f/a/a;->a(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/k/h;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/k/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/k/g;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/k/a;-><init>(Landroid/content/Context;)V

    :cond_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/k/g;->c(Landroid/view/View;)Lcom/apicloud/a/i/a/k/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "frame"

    return-object v0
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "100%"

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;)Lcom/apicloud/a/i/a/k/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/apicloud/a/i/a/k/f<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/k/g;->a:Lcom/apicloud/a/i/a/k/f;

    return-object p1
.end method
