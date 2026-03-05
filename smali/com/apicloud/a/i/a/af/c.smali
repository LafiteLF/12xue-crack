.class public Lcom/apicloud/a/i/a/af/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/af/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/af/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/af/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/af/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/af/c;->a:Lcom/apicloud/a/i/a/af/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/af/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/af/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/af/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/af/c;->a(Lcom/apicloud/a/i/a/af/d;)Lcom/apicloud/a/i/a/af/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/af/d;)Lcom/apicloud/a/i/a/af/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/af/c;->a:Lcom/apicloud/a/i/a/af/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "text-light"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/af/d;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/af/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/c;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/af/d;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
