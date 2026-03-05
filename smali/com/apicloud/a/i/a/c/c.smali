.class public Lcom/apicloud/a/i/a/c/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/Button;",
        ">",
        "Lcom/apicloud/a/i/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/c/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/c/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/c/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/c/c;->a:Lcom/apicloud/a/i/a/c/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/c;->b(Lcom/apicloud/a/c;)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/c/c;->a(Landroid/widget/Button;)Lcom/apicloud/a/i/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/Button;)Lcom/apicloud/a/i/a/c/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/apicloud/a/i/a/c/b;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/c/c;->a:Lcom/apicloud/a/i/a/c/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "button"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Landroid/widget/Button;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/c;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Lcom/apicloud/a/i/a/c/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/c/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/c/a;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "padding"

    const-string v2, "6px 20px"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "border"

    const-string v2, "1px solid #dfdfdf"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "borderRadius"

    const-string v2, "4px"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "backgroundColor"

    const-string v2, "#f8f8f8"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
