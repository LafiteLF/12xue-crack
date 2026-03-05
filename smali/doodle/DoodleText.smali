.class public Ldoodle/DoodleText;
.super Ldoodle/DoodleRotatableItemBase;
.source "DoodleText.java"


# instance fields
.field private boundx:F

.field private boundy:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;Ljava/lang/String;FLdoodle/core/IDoodleColor;FF)V
    .locals 1

    .line 26
    invoke-interface {p1}, Ldoodle/core/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p5, p6}, Ldoodle/DoodleRotatableItemBase;-><init>(Ldoodle/core/IDoodle;IFF)V

    .line 21
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    .line 27
    sget-object p1, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    invoke-virtual {p0, p1}, Ldoodle/DoodleText;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 28
    iput-object p2, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    .line 29
    invoke-virtual {p0, p3}, Ldoodle/DoodleText;->setSize(F)V

    .line 30
    invoke-virtual {p0, p4}, Ldoodle/DoodleText;->setColor(Ldoodle/core/IDoodleColor;)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 70
    invoke-virtual {p0}, Ldoodle/DoodleText;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v1}, Ldoodle/core/IDoodleColor;->config(Ldoodle/core/IDoodleItem;Landroid/graphics/Paint;)V

    .line 71
    iget-object v0, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldoodle/DoodleText;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    iget-object v0, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 75
    :goto_0
    iget-object v4, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const v5, 0x3f933333    # 1.15f

    if-ge v0, v4, :cond_1

    .line 76
    iget-object v4, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    int-to-float v6, v2

    invoke-virtual {p0}, Ldoodle/DoodleText;->getSize()F

    move-result v7

    mul-float/2addr v6, v7

    mul-float/2addr v6, v5

    iget-object v5, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v3, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v4, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v3, v4

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ldoodle/DoodleText;->boundx:F

    int-to-float v0, v2

    .line 85
    invoke-virtual {p0}, Ldoodle/DoodleText;->getSize()F

    move-result v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v5

    iput v1, p0, Ldoodle/DoodleText;->boundy:F

    .line 86
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Ldoodle/DoodleText;->setPivotX(F)V

    .line 87
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleText;->getSize()F

    move-result v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodleText;->setPivotY(F)V

    :cond_2
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 4

    .line 55
    iget-object v0, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldoodle/DoodleText;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 59
    iget-object v0, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Ldoodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 61
    iget v0, p0, Ldoodle/DoodleText;->boundy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Ldoodle/DoodleText;->boundx:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    float-to-int v0, v0

    .line 62
    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 63
    iget v0, p0, Ldoodle/DoodleText;->boundy:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method public setSize(F)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Ldoodle/DoodleRotatableItemBase;->setSize(F)V

    .line 47
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Ldoodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ldoodle/DoodleText;->setPivotX(F)V

    .line 48
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ldoodle/DoodleText;->setPivotY(F)V

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, p1}, Ldoodle/DoodleText;->setLocation(FF)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 38
    iput-object p1, p0, Ldoodle/DoodleText;->mText:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Ldoodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldoodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 40
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Ldoodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodleText;->setPivotX(F)V

    .line 41
    invoke-virtual {p0}, Ldoodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodleText;->setPivotY(F)V

    return-void
.end method
