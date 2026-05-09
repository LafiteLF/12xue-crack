.class public Lcom/apicloud/a/i/a/ad/h;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/ad/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ad/g;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ad/g;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ad/g;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/h;->a:Lcom/apicloud/a/i/a/ad/g;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/h;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ad/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ad/f;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/ad/f;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/i/a/ad/f;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/h;->a:Lcom/apicloud/a/i/a/ad/g;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/h;->a(Lcom/apicloud/a/i/a/ad/f;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "swiper-item"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ad/f;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/h;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ad/f;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/h;->b(Lcom/apicloud/a/i/a/ad/f;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ad/f;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ad/f;->a_()V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method
