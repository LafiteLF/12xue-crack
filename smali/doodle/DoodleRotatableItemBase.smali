.class public abstract Ldoodle/DoodleRotatableItemBase;
.super Ldoodle/DoodleSelectableItemBase;
.source "DoodleRotatableItemBase.java"


# instance fields
.field private mIsRotating:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTemp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;IFF)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Ldoodle/DoodleSelectableItemBase;-><init>(Ldoodle/core/IDoodle;IFF)V

    .line 17
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Ldoodle/DoodleRotatableItemBase;->mIsRotating:Z

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;IFF)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Ldoodle/DoodleSelectableItemBase;-><init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;IFF)V

    .line 17
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Ldoodle/DoodleRotatableItemBase;->mIsRotating:Z

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public canRotate(FF)Z
    .locals 9

    .line 103
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v1

    .line 106
    iget v2, v1, Landroid/graphics/PointF;->x:F

    sub-float v5, p1, v2

    .line 107
    iget p1, v1, Landroid/graphics/PointF;->y:F

    sub-float v6, p2, p1

    .line 109
    iget-object v3, p0, Ldoodle/DoodleRotatableItemBase;->mTemp:Landroid/graphics/PointF;

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getItemRotate()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v4, p1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result p1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v7, p1, p2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result p1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v8, p1, p2

    invoke-static/range {v3 .. v8}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    .line 111
    iget-object p2, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    invoke-interface {v0}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result p2

    .line 113
    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x41500000    # 13.0f

    mul-float/2addr p2, v3

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 114
    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 115
    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 116
    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    float-to-int p2, v2

    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 117
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_0

    iget p2, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public doDrawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    .line 32
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object v1

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v8

    .line 35
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 36
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 37
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 38
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 39
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 40
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x888888

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const v10, -0xb43839

    .line 47
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->isRotating()Z

    move-result v1

    const v2, -0x77002900

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    :goto_0
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v4, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 56
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v11, v8, v4

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v4, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->isRotating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 64
    :cond_1
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    :goto_1
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v4, 0x41980000    # 19.0f

    mul-float v12, v8, v4

    add-float v4, v1, v12

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 69
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 68
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x41d80000    # 27.0f

    mul-float v13, v8, v2

    add-float/2addr v1, v13

    iget-object v2, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x41000000    # 8.0f

    mul-float v14, v8, v3

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v1

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v4, v1, v12

    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v5, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 75
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 74
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float/2addr v1, v13

    iget-object v2, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 80
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v10, -0x1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    mul-float/2addr v9, v8

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v1, 0x3

    .line 85
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    mul-float v11, v1, v8

    sub-float/2addr v2, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v11

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    sub-float v2, v1, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float v3, v1, v3

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    add-float v4, v1, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v1, v5

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 90
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v1, v2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v3

    sub-float v3, v1, v11

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v4, v1, v4

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    add-float v5, v1, v11

    iget-object v6, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    iget-object v1, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getPivotY()F

    move-result v2

    invoke-virtual {p0}, Ldoodle/DoodleRotatableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, v0, Ldoodle/DoodleRotatableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v8, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public isRotating()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Ldoodle/DoodleRotatableItemBase;->mIsRotating:Z

    return v0
.end method

.method public setIsRotating(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Ldoodle/DoodleRotatableItemBase;->mIsRotating:Z

    return-void
.end method
