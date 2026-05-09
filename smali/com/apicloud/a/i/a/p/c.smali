.class public Lcom/apicloud/a/i/a/p/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/p/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "for"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/p/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lcom/apicloud/a/i/a/p/a;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/p/a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/a/p/a;->a(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/p/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/p/c;->a(Lcom/apicloud/a/i/a/p/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/p/b;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/p/c;->b(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-void
.end method
