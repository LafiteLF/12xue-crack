.class public Lcom/apicloud/a/i/a/r/j;
.super Lcom/apicloud/c/a/a/f;


# instance fields
.field private final r:Lcom/apicloud/a/i/a/r/n;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/r/n;)V
    .locals 3

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/r/n;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/apicloud/c/a/a/f;-><init>(Landroid/content/Context;IZ)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/j;->r:Lcom/apicloud/a/i/a/r/n;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/r/j;)Lcom/apicloud/a/i/a/r/n;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/r/j;->r:Lcom/apicloud/a/i/a/r/n;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/apicloud/c/a/a/j$i;
    .locals 3

    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/apicloud/c/a/a/j$i;-><init>(II)V

    return-object v0
.end method

.method public a(I)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/r/j$2;

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/j;->r:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/r/n;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/r/j$2;-><init>(Lcom/apicloud/a/i/a/r/j;Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/g;->d(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/r/j;->a(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
    .locals 0

    new-instance p1, Lcom/apicloud/a/i/a/r/j$1;

    iget-object p2, p0, Lcom/apicloud/a/i/a/r/j;->r:Lcom/apicloud/a/i/a/r/n;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/r/n;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/apicloud/a/i/a/r/j$1;-><init>(Lcom/apicloud/a/i/a/r/j;Landroid/content/Context;)V

    invoke-virtual {p1, p3}, Lcom/apicloud/c/a/a/g;->d(I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/r/j;->a(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method
