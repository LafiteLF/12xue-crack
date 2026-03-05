.class public Lcom/apicloud/a/i/a/y/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/apicloud/a/i/a/y/a/a/a;->b:F

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p5, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p5

    if-gtz p4, :cond_0

    return-void

    :cond_0
    iget p4, p0, Lcom/apicloud/a/i/a/y/a/a/a;->b:F

    neg-float p4, p4

    float-to-int p4, p4

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p5

    if-ne p5, p2, :cond_1

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr p2, p4

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_1
    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p3, :cond_2

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p1, p4

    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/a/a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-block-space:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/a/y/a/a/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
