.class public Lcom/apicloud/a/i/a/j/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/j/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/j/c;->a(Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/j/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x591ddddf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "returnValue"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/j/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/j/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/j/c;->a(Lcom/apicloud/a/i/a/j/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/j/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "open"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/a/j/c;->a(Lcom/apicloud/a/i/a/j/b;Z)V

    :cond_0
    const-string v0, "cancelable"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/j/b;->a(Z)V

    :cond_1
    return-void
.end method

.method a(Lcom/apicloud/a/i/a/j/b;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/j/b;->a()V

    goto :goto_0

    :cond_0
    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/j/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
