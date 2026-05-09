.class public Lcom/apicloud/a/f/e/a;
.super Lcom/apicloud/a/e/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/h<",
        "Lcom/apicloud/a/f/e/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/h;-><init>()V

    return-void
.end method

.method private b(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "delay"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/f/e/c;->a(J)V

    :cond_0
    return-void
.end method

.method private c(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "repeat"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/f/e/c;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/f/e/a;->b(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/f/e/a;->c(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/e/c;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/e/a;->a(Lcom/apicloud/a/f/e/c;Lcom/apicloud/a/c;)V

    return-void
.end method
