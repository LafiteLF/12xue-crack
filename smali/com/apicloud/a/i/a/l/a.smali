.class public Lcom/apicloud/a/i/a/l/a;
.super Lcom/apicloud/a/e/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/i<",
        "Lcom/apicloud/a/i/a/l/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/apicloud/a/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/i;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/l/a;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/l/a;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/l/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "gesture"

    return-object v0
.end method

.method public a(Lcom/apicloud/a/i/a/l/b;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/l/b;
    .locals 0

    new-instance p1, Lcom/apicloud/a/i/a/l/a$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/l/a$1;-><init>(Lcom/apicloud/a/i/a/l/a;)V

    return-object p1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/l/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/l/a;->a(Lcom/apicloud/a/i/a/l/b;)V

    return-void
.end method
