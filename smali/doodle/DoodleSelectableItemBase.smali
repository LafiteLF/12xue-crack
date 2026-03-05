.class public abstract Ldoodle/DoodleSelectableItemBase;
.super Ldoodle/DoodleItemBase;
.source "DoodleSelectableItemBase.java"

# interfaces
.implements Ldoodle/core/IDoodleSelectableItem;


# static fields
.field public static final ITEM_CAN_ROTATE_BOUND:I = 0x23

.field public static final ITEM_PADDING:I = 0x3


# instance fields
.field private mIsSelected:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mTemp:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;IFF)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 32
    invoke-direct/range {v0 .. v5}, Ldoodle/DoodleSelectableItemBase;-><init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;IFF)V

    return-void
.end method

.method public constructor <init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;IFF)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Ldoodle/DoodleItemBase;-><init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    .line 25
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    .line 26
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Ldoodle/DoodleSelectableItemBase;->mIsSelected:Z

    .line 37
    invoke-virtual {p0, p4, p5}, Ldoodle/DoodleSelectableItemBase;->setLocation(FF)V

    int-to-float p1, p3

    .line 38
    invoke-virtual {p0, p1}, Ldoodle/DoodleSelectableItemBase;->setItemRotate(F)V

    .line 40
    iget-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ldoodle/DoodleSelectableItemBase;->resetBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 8

    .line 60
    iget-object v0, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ldoodle/DoodleSelectableItemBase;->resetBounds(Landroid/graphics/Rect;)V

    .line 61
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    .line 63
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v4, p1, v1

    .line 64
    iget p1, v0, Landroid/graphics/PointF;->y:F

    sub-float v5, p2, p1

    .line 66
    iget-object v2, p0, Ldoodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getItemRotate()F

    move-result p1

    neg-float p1, p1

    float-to-int p1, p1

    int-to-float v3, p1

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getPivotX()F

    move-result p1

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    sub-float v6, p1, p2

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getPivotY()F

    move-result p1

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float v7, p1, p2

    invoke-static/range {v2 .. v7}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    .line 67
    iget-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 68
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result p1

    .line 69
    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 70
    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 71
    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 72
    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    .line 73
    iget-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object p2, p0, Ldoodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    float-to-int p2, p2

    iget-object v0, p0, Ldoodle/DoodleSelectableItemBase;->mTemp:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method public doDrawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 4

    .line 100
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 102
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodle;->getUnitSize()F

    move-result v0

    .line 103
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/high16 v3, 0x40400000    # 3.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 104
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 105
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 106
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 107
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x888888

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v2, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 114
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x4bc7c7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 117
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v3, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    iget-object v0, p0, Ldoodle/DoodleSelectableItemBase;->mRectTemp:Landroid/graphics/Rect;

    iget-object v1, p0, Ldoodle/DoodleSelectableItemBase;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected drawAfter(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public drawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 4

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    .line 90
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getItemRotate()F

    move-result v0

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getPivotY()F

    move-result v2

    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 93
    invoke-virtual {p0, p1}, Ldoodle/DoodleSelectableItemBase;->doDrawAtTheTop(Landroid/graphics/Canvas;)V

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawBefore(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 45
    iget-object v0, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isDoodleEditable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Ldoodle/DoodleSelectableItemBase;->mIsSelected:Z

    return v0
.end method

.method protected abstract resetBounds(Landroid/graphics/Rect;)V
.end method

.method public setSelected(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Ldoodle/DoodleSelectableItemBase;->mIsSelected:Z

    xor-int/lit8 p1, p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Ldoodle/DoodleSelectableItemBase;->setNeedClipOutside(Z)V

    .line 134
    invoke-virtual {p0}, Ldoodle/DoodleSelectableItemBase;->refresh()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Ldoodle/DoodleItemBase;->setSize(F)V

    .line 52
    iget-object p1, p0, Ldoodle/DoodleSelectableItemBase;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ldoodle/DoodleSelectableItemBase;->resetBounds(Landroid/graphics/Rect;)V

    return-void
.end method
