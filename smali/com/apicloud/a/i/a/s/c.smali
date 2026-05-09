.class public Lcom/apicloud/a/i/a/s/c;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/s/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/s/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/s/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/s/b;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/c;->a:Lcom/apicloud/a/i/a/s/b;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/c;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/s/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/c;->a(Lcom/apicloud/a/i/a/s/a;)Lcom/apicloud/a/i/a/s/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/s/a;)Lcom/apicloud/a/i/a/s/b;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/c;->a:Lcom/apicloud/a/i/a/s/b;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "movable-area"

    return-object v0
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "10px"

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/s/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/s/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/c;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/s/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
