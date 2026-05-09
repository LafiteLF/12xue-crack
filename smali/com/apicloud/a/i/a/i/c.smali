.class public Lcom/apicloud/a/i/a/i/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/i/b;",
        ">",
        "Lcom/apicloud/a/i/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/i/c;->a(Lcom/apicloud/a/i/a/i/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/i/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/i/c;->a(Lcom/apicloud/a/i/a/i/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/i/b;Lcom/apicloud/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method
