.class public Lcom/apicloud/a/i/a/m/d;
.super Lcom/apicloud/c/a/a/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/apicloud/c/a/a/n;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/m/d;->a_(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
    .locals 0

    new-instance p2, Lcom/apicloud/a/i/a/m/d$1;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/apicloud/a/i/a/m/d$1;-><init>(Lcom/apicloud/a/i/a/m/d;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/apicloud/c/a/a/g;->d(I)V

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/m/d;->a(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method

.method public a_(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/n;->a_(I)V

    return-void
.end method
