.class public Lcom/apicloud/a/f/b/c;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/f/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/f/b/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    new-instance p1, Lcom/apicloud/a/f/b/b;

    invoke-direct {p1}, Lcom/apicloud/a/f/b/b;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/b/c;->a:Lcom/apicloud/a/f/b/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/b/a;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/f/b/a;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/f/b/a;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/f/b/c;->a:Lcom/apicloud/a/f/b/b;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/b/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/b/c;->a(Lcom/apicloud/a/f/b/a;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/b/c;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/b/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$navigator"

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/b/a;
    .locals 0

    invoke-static {}, Lcom/apicloud/a/f/b/a;->a()Lcom/apicloud/a/f/b/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/apicloud/a/f/b/a;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/b/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/b/c;->b(Lcom/apicloud/a/f/b/a;)V

    return-void
.end method
