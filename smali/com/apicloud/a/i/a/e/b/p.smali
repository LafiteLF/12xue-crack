.class final Lcom/apicloud/a/i/a/e/b/p;
.super Lcom/apicloud/a/i/a/e/b/ap;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "fill"

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/e/b/ap;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;)V
    .locals 2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->h()V

    return-void
.end method
