.class public Lcom/apicloud/a/i/a/y/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/4 p1, 0x0

    :goto_0
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_1
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto/16 :goto_2

    :cond_0
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p1, p1

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    neg-float p1, p1

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p1, p1

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_2

    :cond_2
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p1, p1

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p1, p1

    iget p2, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_1

    :cond_3
    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int p1, p1

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p1, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double p2, p2

    int-to-float p1, p1

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    float-to-double p4, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    sub-double/2addr p2, v0

    double-to-int p1, p2

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double p1, p1

    invoke-static {p4, p5}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    add-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/a/e;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-line-height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/y/a/a/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
