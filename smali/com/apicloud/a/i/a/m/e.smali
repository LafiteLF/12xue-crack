.class public Lcom/apicloud/a/i/a/m/e;
.super Lcom/apicloud/a/i/a/r/q;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/m/c;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/q;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/m/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/m/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/m/e;->a:Lcom/apicloud/a/i/a/m/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/e;->a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/m/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/m/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/m/e;->a:Lcom/apicloud/a/i/a/m/c;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "grid-view"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/r/n;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/m/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/m/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/m/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public synthetic b(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/r/o;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/e;->a(Lcom/apicloud/a/i/a/r/n;)Lcom/apicloud/a/i/a/m/c;

    move-result-object p1

    return-object p1
.end method
