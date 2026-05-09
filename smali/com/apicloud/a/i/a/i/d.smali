.class public Lcom/apicloud/a/i/a/i/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/i/b;",
        ">",
        "Lcom/apicloud/a/i/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/i/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/i/a/i/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/i/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/i/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/i/d;->a:Lcom/apicloud/a/i/a/i/c;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/i/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/i/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/apicloud/a/e/g<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/i/d;->a:Lcom/apicloud/a/i/a/i/c;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/i/d;->a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "container"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/i/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/c;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/i/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
