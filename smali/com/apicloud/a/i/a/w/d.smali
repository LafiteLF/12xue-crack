.class public Lcom/apicloud/a/i/a/w/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/w/c;",
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

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/w/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "radio-group"

    return-object v0
.end method

.method protected a(Lcom/apicloud/a/i/a/w/c;Ljava/lang/String;Z)V
    .locals 0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c$b;)V

    return-void

    :cond_0
    new-instance p2, Lcom/apicloud/a/i/a/w/d$1;

    invoke-direct {p2, p0}, Lcom/apicloud/a/i/a/w/d$1;-><init>(Lcom/apicloud/a/i/a/w/d;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/w/c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/w/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/w/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/w/c;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "change"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lcom/apicloud/a/i/a/w/d;->a(Lcom/apicloud/a/i/a/w/c;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/w/c;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/w/c;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/w/d;->d()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/w/c;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
