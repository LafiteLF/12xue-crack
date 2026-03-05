.class final Lcom/apicloud/a/i/a/e/i;
.super Landroid/graphics/Path;

# interfaces
.implements Lcom/apicloud/a/i/a/e/b/aa;


# instance fields
.field private a:Lcom/apicloud/a/i/a/e/b/aa$a;

.field private b:Lcom/apicloud/a/i/a/e/b/ac;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/e/b/ac;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/a/e/b/aa$a;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/e/b/aa$a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/i;->a:Lcom/apicloud/a/i/a/e/b/aa$a;

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/i;->b:Lcom/apicloud/a/i/a/e/b/ac;

    return-void
.end method

.method private final a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/i;->a:Lcom/apicloud/a/i/a/e/b/aa$a;

    iput p1, v0, Lcom/apicloud/a/i/a/e/b/aa$a;->a:F

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/i;->a:Lcom/apicloud/a/i/a/e/b/aa$a;

    iput p2, p1, Lcom/apicloud/a/i/a/e/b/aa$a;->b:F

    return-void
.end method


# virtual methods
.method public final a()Lcom/apicloud/a/i/a/e/b/aa$a;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/i;->a:Lcom/apicloud/a/i/a/e/b/aa$a;

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/e/b/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/i;->b:Lcom/apicloud/a/i/a/e/b/ac;

    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    add-float/2addr p1, p3

    add-float/2addr p2, p3

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public final arcTo(FFFFFFZ)V
    .locals 0

    invoke-super/range {p0 .. p7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    invoke-direct {p0, p3, p4}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public final arcTo(Landroid/graphics/RectF;FF)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public final arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p2, p1}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public close()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method public final cubicTo(FFFFFF)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, p5, p6}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public final lineTo(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public final moveTo(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method

.method public final quadTo(FFFF)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {p0, p3, p4}, Lcom/apicloud/a/i/a/e/i;->a(FF)V

    return-void
.end method
