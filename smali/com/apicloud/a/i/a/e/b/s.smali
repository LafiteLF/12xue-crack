.class final Lcom/apicloud/a/i/a/e/b/s;
.super Lcom/apicloud/a/i/a/e/b/bh;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const-string v0, "fillText"

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/e/b/bh;-><init>(Ljava/lang/String;Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/apicloud/a/i/a/e/b/x;)V
    .locals 2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->k()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
