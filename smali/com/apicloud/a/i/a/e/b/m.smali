.class final Lcom/apicloud/a/i/a/e/b/m;
.super Lcom/apicloud/a/i/a/e/b/k;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const-string v0, "createRadialGradient"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/k;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 8

    sget-object v0, Lcom/apicloud/a/i/a/e/b/m;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/m;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/e/b/x;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/b/z;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    const/4 p1, 0x3

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    const/4 p1, 0x4

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 p1, 0x5

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 p1, 0x6

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    const/4 p1, 0x7

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v7

    invoke-interface/range {v1 .. v7}, Lcom/apicloud/a/i/a/e/b/z;->a(FFFFFF)V

    :cond_0
    return-void
.end method
