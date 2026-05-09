.class public Lcom/apicloud/a/i/a/r/a;
.super Lcom/apicloud/a/i/a/g/d;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:F


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/g/d;-><init>(Lcom/apicloud/a/d;)V

    sget p1, Lcom/apicloud/a/i/a/r/l;->a:I

    iput p1, p0, Lcom/apicloud/a/i/a/r/a;->b:I

    const/high16 p1, -0x31000000

    iput p1, p0, Lcom/apicloud/a/i/a/r/a;->c:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/r/a;->c:F

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/a;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/c/i/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/r/a;->b:I

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/r/a;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, Lcom/apicloud/a/i/a/r/a;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    int-to-float p2, v0

    iget v0, p0, Lcom/apicloud/a/i/a/r/a;->c:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/g/d;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-static {}, Lcom/apicloud/a/i/a/r/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/g/d;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[cell]"

    return-object v0
.end method
