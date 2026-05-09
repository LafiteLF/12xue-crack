.class public Lcom/apicloud/a/f/c/d;
.super Lcom/apicloud/a/e/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/h<",
        "Lcom/apicloud/a/f/c/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/c/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "keys"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/f/c/c;->a()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/c/c;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/c/d;->a(Lcom/apicloud/a/f/c/c;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
