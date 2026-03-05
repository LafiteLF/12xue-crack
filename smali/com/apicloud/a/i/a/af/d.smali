.class public Lcom/apicloud/a/i/a/af/d;
.super Landroid/view/View;

# interfaces
.implements Lcom/apicloud/a/i/a/g/k;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Landroid/text/TextPaint;

.field private d:Ljava/lang/CharSequence;

.field private e:I

.field private f:Landroid/content/res/ColorStateList;

.field private g:I

.field private h:Landroid/util/DisplayMetrics;

.field private i:Landroid/text/Layout$Alignment;

.field private j:Landroid/text/StaticLayout;

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010034

    aput v2, v0, v1

    sput-object v0, Lcom/apicloud/a/i/a/af/d;->a:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/af/d;->b:[I

    return-void

    :array_0
    .array-data 4
        0x1010095
        0x1010096
        0x1010097
        0x1010098
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/apicloud/a/i/a/af/d;->i:Landroid/text/Layout$Alignment;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/apicloud/a/i/a/af/d;->l:I

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 12

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/af/d;->h:Landroid/util/DisplayMetrics;

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->h:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setDither(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v2, Lcom/apicloud/a/i/a/af/d;->a:[I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    if-eq v4, v3, :cond_0

    sget-object v6, Lcom/apicloud/a/i/a/af/d;->b:[I

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    const/4 v4, 0x3

    const/4 v6, 0x2

    const/16 v7, 0xf

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    move-object v10, v5

    move v9, v7

    move v7, v3

    :goto_1
    if-lt v2, v8, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v11

    if-eqz v11, :cond_5

    if-eq v11, v1, :cond_4

    if-eq v11, v6, :cond_3

    if-eq v11, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v11, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    goto :goto_2

    :cond_4
    invoke-virtual {v0, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move-object v10, v5

    move v9, v7

    move v7, v3

    :goto_3
    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    :goto_4
    invoke-virtual {p0, v10}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/content/res/ColorStateList;)V

    int-to-float p1, v9

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/d;->b(F)V

    if-eq v3, v1, :cond_a

    if-eq v3, v6, :cond_9

    if-eq v3, v4, :cond_8

    goto :goto_5

    :cond_8
    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_9
    sget-object v5, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_5

    :cond_a
    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_5
    invoke-virtual {p0, v5, v7}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method private b(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/af/d;->g()V

    :cond_0
    return-void
.end method

.method private b([I)Z
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->f:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/af/d;->g:I

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/a/af/d;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->invalidate()V

    return v2

    :cond_1
    return v1
.end method

.method private c(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/af/d;->j:Landroid/text/StaticLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->d:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    return p1
.end method

.method private d(I)I
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/apicloud/a/i/a/af/d;->e:I

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->j:Landroid/text/StaticLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    return p1
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/af/d;->k:I

    return v0
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(FFFI)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/af/d;->k:I

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/af/d;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getDrawableState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/d;->b([I)Z

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/af/d;->g()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    iget-object p2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    :cond_4
    iget-object p2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/af/d;->d:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/af/d;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method protected a([I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/d;->b([I)Z

    move-result p1

    return p1
.end method

.method public b()I
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->j:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getSpacingAdd()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/af/d;->j:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getSpacingMultiplier()F

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v2, v0

    invoke-static {v2}, Lcom/apicloud/a/i/a/af/a;->a(F)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/af/d;->a([I)Z

    return-void
.end method

.method public e()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/af/d;->g:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/af/d;->j:Landroid/text/StaticLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/apicloud/a/i/a/af/d;->d:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingLeft()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/d;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/af/d;->e:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/apicloud/a/i/a/af/d;->c:Landroid/text/TextPaint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/d;->c(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/af/d;->d(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/af/d;->setMeasuredDimension(II)V

    return-void
.end method
