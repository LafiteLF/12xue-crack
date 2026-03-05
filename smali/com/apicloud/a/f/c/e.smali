.class public Lcom/apicloud/a/f/c/e;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/f/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/f/c/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    new-instance p1, Lcom/apicloud/a/f/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/f/c/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/c/e;->a:Lcom/apicloud/a/f/c/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/c/c;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/f/c/c;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/f/c/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/f/c/e;->a:Lcom/apicloud/a/f/c/d;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/c/c;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/c/e;->a(Lcom/apicloud/a/f/c/c;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/f/c/c;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "setItem"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/f/c/e;->a(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string p4, "removeItem"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/f/c/e;->c(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string p3, "clear"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/c/e;->b(Lcom/apicloud/a/f/c/c;)V

    goto :goto_0

    :sswitch_3
    const-string p4, "getItem"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/f/c/e;->b(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x47f1c77 -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x417605b7 -> :sswitch_1
        0x764baa95 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/c/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/f/c/e;->a(Lcom/apicloud/a/f/c/c;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/c/e;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/c/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$storage"

    return-object v0
.end method

.method protected a(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/apicloud/a/f/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/c/c;
    .locals 0

    const-string p1, "type"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/a/f/c/e;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apicloud/a/f/c/c$a;->a(Ljava/lang/String;Lcom/apicloud/a/d;)Lcom/apicloud/a/f/c/c;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/f/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lcom/apicloud/a/f/c/c;)V
    .locals 0

    invoke-interface {p1}, Lcom/apicloud/a/f/c/c;->b()V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/c/c;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/c/e;->c(Lcom/apicloud/a/f/c/c;)V

    return-void
.end method

.method public c(Lcom/apicloud/a/f/c/c;)V
    .locals 0

    invoke-interface {p1}, Lcom/apicloud/a/f/c/c;->c()V

    return-void
.end method

.method protected c(Lcom/apicloud/a/f/c/c;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/f/c/c;->b(Ljava/lang/String;)V

    return-void
.end method
