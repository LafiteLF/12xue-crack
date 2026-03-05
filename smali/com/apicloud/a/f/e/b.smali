.class public Lcom/apicloud/a/f/e/b;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/f/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/f/e/a;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    new-instance p1, Lcom/apicloud/a/f/e/a;

    invoke-direct {p1}, Lcom/apicloud/a/f/e/a;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/f/e/b;->a:Lcom/apicloud/a/f/e/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/e/c;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/f/e/c;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/f/e/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/f/e/b;->a:Lcom/apicloud/a/f/e/a;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/e/c;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/e/b;->a(Lcom/apicloud/a/f/e/c;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/f/e/c;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const p4, -0x5185d186

    if-eq p3, p4, :cond_3

    const p4, 0x68ac462

    if-eq p3, p4, :cond_1

    const p4, 0x63a5261f

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "dispose"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_1
    const-string p3, "start"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/apicloud/a/f/e/c;->a()V

    goto :goto_0

    :cond_3
    const-string p3, "cancel"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/apicloud/a/f/e/c;->b()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/e/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/f/e/b;->a(Lcom/apicloud/a/f/e/c;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/e/b;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/e/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$timer"

    return-object v0
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/f/e/c;
    .locals 0

    new-instance p1, Lcom/apicloud/a/f/e/c;

    invoke-virtual {p0}, Lcom/apicloud/a/f/e/b;->b()Lcom/apicloud/a/d;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apicloud/a/f/e/c;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public b(Lcom/apicloud/a/f/e/c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/f/e/c;->b()V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/e/c;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/f/e/b;->b(Lcom/apicloud/a/f/e/c;)V

    return-void
.end method
