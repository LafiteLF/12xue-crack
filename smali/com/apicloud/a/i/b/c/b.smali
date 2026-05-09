.class public Lcom/apicloud/a/i/b/c/b;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/b/c/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/c/b;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/b/c/a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "form"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/b/c/a;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/b/c/b;->a(Ljava/lang/String;Lcom/apicloud/a/i/b/c/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/b/c/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3523bfe8    # -7217164.0f

    if-eq v0, v1, :cond_2

    const v1, 0x6761d4f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "reset"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/b/c/a;->c(Z)V

    return-void

    :cond_2
    const-string v0, "submit"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :cond_3
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/b/c/a;->a(Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/b/c/a;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/b/c/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/c/b;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/b/c/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method
