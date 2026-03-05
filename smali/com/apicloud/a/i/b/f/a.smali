.class public Lcom/apicloud/a/i/b/f/a;
.super Lcom/apicloud/a/i/b/h/a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/b/h/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "p"

    return-object v0
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "margin"

    const-string v2, "16px 0px"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/b/h/a;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;

    move-result-object p1

    const/16 v0, 0x33

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ag/a;->setGravity(I)V

    return-object p1
.end method
