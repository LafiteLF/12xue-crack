.class final Lcom/apicloud/a/i/a/e/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/b/ab;


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private final f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/e/j;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/e/j;->b:F

    iput v0, p0, Lcom/apicloud/a/i/a/e/j;->c:F

    iput v0, p0, Lcom/apicloud/a/i/a/e/j;->d:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/e/j;->e:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/j;->f:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iput p1, p0, Lcom/apicloud/a/i/a/e/j;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/e/j;->e:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/j;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/e/j;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/j;->d:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/j;->a:I

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public a(I)V
    .locals 4

    iput p1, p0, Lcom/apicloud/a/i/a/e/j;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/e/j;->e:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/j;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/e/j;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/j;->c:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/j;->d:F

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public b(F)V
    .locals 4

    iput p1, p0, Lcom/apicloud/a/i/a/e/j;->d:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/e/j;->e:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/j;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/e/j;->b:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/j;->c:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/j;->a:I

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public c(F)V
    .locals 4

    iput p1, p0, Lcom/apicloud/a/i/a/e/j;->b:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/e/j;->e:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/j;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/e/j;->c:F

    iget v2, p0, Lcom/apicloud/a/i/a/e/j;->d:F

    iget v3, p0, Lcom/apicloud/a/i/a/e/j;->a:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
