.class public Lcom/apicloud/a/i/a/y/a/a/d;
.super Landroid/text/style/ReplacementSpan;


# instance fields
.field private a:F

.field private b:Z

.field private c:Lcom/apicloud/a/i/a/y/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/i/a/y/a/a/g<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/text/TextPaint;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/y/a/a/d;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/a/y/a/a/g;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/y/a/a/g;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/d;->c:Lcom/apicloud/a/i/a/y/a/a/g;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/d;->d:Landroid/text/TextPaint;

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/a/d;->a:F

    return-void
.end method

.method private static a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFZLandroid/graphics/Paint;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFILandroid/graphics/Paint;Ljava/lang/CharSequence;F)V
    .locals 16

    move-object/from16 v8, p8

    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-lt v1, v9, :cond_1

    sub-int v1, v9, v2

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float v1, p9, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    move v2, v0

    move/from16 v0, p5

    :goto_1
    if-lt v2, v9, :cond_0

    return-void

    :cond_0
    add-int/lit8 v11, v2, 0x1

    move-object/from16 v12, p7

    invoke-virtual {v12, v8, v2, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v13

    add-float v14, v0, v10

    move/from16 v15, p6

    int-to-float v5, v15

    move-object/from16 v7, p0

    iget-boolean v6, v7, Lcom/apicloud/a/i/a/y/a/a/d;->b:Z

    move-object/from16 v0, p1

    move-object/from16 v1, p8

    move v3, v11

    move v4, v14

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/apicloud/a/i/a/y/a/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFZLandroid/graphics/Paint;)V

    add-float/2addr v13, v10

    add-float v0, v14, v13

    move v2, v11

    goto :goto_1

    :cond_1
    move/from16 v15, p6

    move-object/from16 v12, p7

    invoke-interface {v8, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/y/a/a/d;->b:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/y/a/a/d;->e:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 19

    move-object/from16 v10, p0

    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_0
    move-object v8, v0

    nop

    instance-of v0, v8, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/apicloud/a/i/a/y/a/a/d;->c:Lcom/apicloud/a/i/a/y/a/a/g;

    move-object v2, v8

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v0, v2, v4, v1}, Lcom/apicloud/a/i/a/y/a/a/g;->a(Landroid/text/Spanned;II)V

    iget-object v0, v10, Lcom/apicloud/a/i/a/y/a/a/d;->d:Landroid/text/TextPaint;

    move-object/from16 v2, p9

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    move v2, v4

    :goto_0
    iget-object v3, v10, Lcom/apicloud/a/i/a/y/a/a/d;->c:Lcom/apicloud/a/i/a/y/a/a/g;

    iget v3, v3, Lcom/apicloud/a/i/a/y/a/a/g;->a:I

    if-lt v2, v3, :cond_1

    move-object v7, v0

    goto :goto_1

    :cond_1
    iget-object v3, v10, Lcom/apicloud/a/i/a/y/a/a/d;->c:Lcom/apicloud/a/i/a/y/a/a/g;

    iget-object v3, v3, Lcom/apicloud/a/i/a/y/a/a/g;->b:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/CharacterStyle;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v2, p9

    move-object v7, v2

    :goto_1
    iget v0, v10, Lcom/apicloud/a/i/a/y/a/a/d;->a:F

    invoke-virtual {v7, v8, v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float v9, v0, v1

    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-lez v0, :cond_4

    iget-boolean v0, v10, Lcom/apicloud/a/i/a/y/a/a/d;->e:Z

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v9}, Lcom/apicloud/a/i/a/y/a/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFILandroid/graphics/Paint;Ljava/lang/CharSequence;F)V

    return-void

    :cond_4
    :goto_2
    move/from16 v0, p7

    int-to-float v0, v0

    iget-boolean v1, v10, Lcom/apicloud/a/i/a/y/a/a/d;->b:Z

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v18, v7

    invoke-static/range {v11 .. v18}, Lcom/apicloud/a/i/a/y/a/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_0
    iget p1, p0, Lcom/apicloud/a/i/a/y/a/a/d;->a:F

    float-to-int p1, p1

    return p1
.end method
