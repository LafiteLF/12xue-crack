.class public Lcom/apicloud/a/i/a/p/d;
.super Lcom/apicloud/a/i/a/aj/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/aj/a<",
        "Lcom/apicloud/a/i/a/p/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/p/c;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/aj/a;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/p/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/p/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/p/d;->a:Lcom/apicloud/a/i/a/p/c;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/p/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/p/d;->a(Lcom/apicloud/a/i/a/p/b;)Lcom/apicloud/a/i/a/p/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/p/b;)Lcom/apicloud/a/i/a/p/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/p/d;->a:Lcom/apicloud/a/i/a/p/c;

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "label"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/p/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/p/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/p/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/p/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/p/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/p/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/p/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/aj/a;->a(Ljava/lang/String;Landroid/view/View;)V

    new-instance p1, Lcom/apicloud/a/i/a/p/a;

    invoke-direct {p1, p2}, Lcom/apicloud/a/i/a/p/a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/p/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/p/b;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p3}, Lcom/apicloud/a/i/c/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/aj/a;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/p/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/p/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/p/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/p/b;-><init>(Lcom/apicloud/a/d;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/p/b;->h(I)V

    return-object p1
.end method

.method public synthetic d(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/aj/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/p/d;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/p/b;

    move-result-object p1

    return-object p1
.end method
