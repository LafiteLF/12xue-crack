.class public Lcom/apicloud/a/i/a/y/a/a/b;
.super Landroid/text/style/BulletSpan;


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/style/BulletSpan;-><init>(I)V

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/a/b;->a:I

    iput p2, p0, Lcom/apicloud/a/i/a/y/a/a/b;->b:I

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/a/b;->b:I

    if-gtz v0, :cond_0

    invoke-super/range {p0 .. p12}, Landroid/text/style/BulletSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    return-void

    :cond_0
    instance-of p4, p8, Landroid/text/Spanned;

    if-eqz p4, :cond_1

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p4

    if-ne p4, p9, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    iget p5, p0, Lcom/apicloud/a/i/a/y/a/a/b;->b:I

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p5, ".  "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    int-to-float p3, p3

    int-to-float p5, p6

    invoke-virtual {p1, p4, p3, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getGapWidth()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/y/a/a/b;->a:I

    return v0
.end method
