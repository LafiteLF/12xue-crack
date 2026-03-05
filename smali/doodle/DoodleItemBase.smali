.class public abstract Ldoodle/DoodleItemBase;
.super Ljava/lang/Object;
.source "DoodleItemBase.java"

# interfaces
.implements Ldoodle/core/IDoodleItem;


# instance fields
.field private mColor:Ldoodle/core/IDoodleColor;

.field private mDoodle:Ldoodle/core/IDoodle;

.field private mHasAdded:Z

.field private mIsDrawOptimize:Z

.field private mIsNeedClipOutside:Z

.field private mItemRotate:F

.field private mLocation:Landroid/graphics/PointF;

.field private mPen:Ldoodle/core/IDoodlePen;

.field private mPivotX:F

.field private mPivotY:F

.field private mShape:Ldoodle/core/IDoodleShape;

.field private mSize:F


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Ldoodle/DoodleItemBase;-><init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;)V

    return-void
.end method

.method public constructor <init>(Ldoodle/core/IDoodle;Ldoodle/DoodlePaintAttrs;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Ldoodle/DoodleItemBase;->mIsDrawOptimize:Z

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Ldoodle/DoodleItemBase;->mIsNeedClipOutside:Z

    .line 30
    iput-boolean v0, p0, Ldoodle/DoodleItemBase;->mHasAdded:Z

    .line 37
    invoke-virtual {p0, p1}, Ldoodle/DoodleItemBase;->setDoodle(Ldoodle/core/IDoodle;)V

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p2}, Ldoodle/DoodlePaintAttrs;->pen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleItemBase;->mPen:Ldoodle/core/IDoodlePen;

    .line 40
    invoke-virtual {p2}, Ldoodle/DoodlePaintAttrs;->shape()Ldoodle/core/IDoodleShape;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleItemBase;->mShape:Ldoodle/core/IDoodleShape;

    .line 41
    invoke-virtual {p2}, Ldoodle/DoodlePaintAttrs;->size()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleItemBase;->mSize:F

    .line 42
    invoke-virtual {p2}, Ldoodle/DoodlePaintAttrs;->color()Ldoodle/core/IDoodleColor;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleItemBase;->mColor:Ldoodle/core/IDoodleColor;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract doDraw(Landroid/graphics/Canvas;)V
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    .line 173
    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 174
    iget v0, p0, Ldoodle/DoodleItemBase;->mPivotX:F

    iget-object v1, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p0, Ldoodle/DoodleItemBase;->mPivotY:F

    iget-object v2, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    .line 175
    iget v2, p0, Ldoodle/DoodleItemBase;->mItemRotate:F

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 176
    invoke-virtual {p0, p1}, Ldoodle/DoodleItemBase;->doDraw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawAfter(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected drawAtTheTop(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected drawBefore(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getColor()Ldoodle/core/IDoodleColor;
    .locals 1

    .line 160
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mColor:Ldoodle/core/IDoodleColor;

    return-object v0
.end method

.method public getDoodle()Ldoodle/core/IDoodle;
    .locals 1

    .line 58
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mDoodle:Ldoodle/core/IDoodle;

    return-object v0
.end method

.method public getItemRotate()F
    .locals 1

    .line 89
    iget v0, p0, Ldoodle/DoodleItemBase;->mItemRotate:F

    return v0
.end method

.method public getLocation()Landroid/graphics/PointF;
    .locals 1

    .line 122
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getPen()Ldoodle/core/IDoodlePen;
    .locals 1

    .line 127
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mPen:Ldoodle/core/IDoodlePen;

    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    .line 68
    iget v0, p0, Ldoodle/DoodleItemBase;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 78
    iget v0, p0, Ldoodle/DoodleItemBase;->mPivotY:F

    return v0
.end method

.method public getShape()Ldoodle/core/IDoodleShape;
    .locals 1

    .line 138
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mShape:Ldoodle/core/IDoodleShape;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .line 149
    iget v0, p0, Ldoodle/DoodleItemBase;->mSize:F

    return v0
.end method

.method public isDoodleEditable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedClipOutside()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Ldoodle/DoodleItemBase;->mIsNeedClipOutside:Z

    return v0
.end method

.method public onAdd()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Ldoodle/DoodleItemBase;->mHasAdded:Z

    return-void
.end method

.method public onRemove()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Ldoodle/DoodleItemBase;->mHasAdded:Z

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 215
    iget-boolean v0, p0, Ldoodle/DoodleItemBase;->mHasAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldoodle/DoodleItemBase;->mDoodle:Ldoodle/core/IDoodle;

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v0}, Ldoodle/core/IDoodle;->refresh()V

    :cond_0
    return-void
.end method

.method public setColor(Ldoodle/core/IDoodleColor;)V
    .locals 0

    .line 165
    iput-object p1, p0, Ldoodle/DoodleItemBase;->mColor:Ldoodle/core/IDoodleColor;

    .line 166
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setDoodle(Ldoodle/core/IDoodle;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mDoodle:Ldoodle/core/IDoodle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item\'s doodle object is not null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1
    :goto_0
    iput-object p1, p0, Ldoodle/DoodleItemBase;->mDoodle:Ldoodle/core/IDoodle;

    return-void
.end method

.method public setDrawOptimize(Z)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Ldoodle/DoodleItemBase;->mIsDrawOptimize:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 190
    :cond_0
    iput-boolean p1, p0, Ldoodle/DoodleItemBase;->mIsDrawOptimize:Z

    return-void
.end method

.method public setItemRotate(F)V
    .locals 0

    .line 83
    iput p1, p0, Ldoodle/DoodleItemBase;->mItemRotate:F

    .line 84
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, p2, v0}, Ldoodle/DoodleItemBase;->setLocation(FFZ)V

    return-void
.end method

.method public setLocation(FFZ)V
    .locals 3

    .line 108
    iget-object v0, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v0, p1, v0

    iget-object v1, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, p2, v1

    .line 109
    iget-object v2, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iput p1, v2, Landroid/graphics/PointF;->x:F

    .line 110
    iget-object p1, p0, Ldoodle/DoodleItemBase;->mLocation:Landroid/graphics/PointF;

    iput p2, p1, Landroid/graphics/PointF;->y:F

    if-eqz p3, :cond_0

    .line 113
    iget p1, p0, Ldoodle/DoodleItemBase;->mPivotX:F

    add-float/2addr p1, v0

    iput p1, p0, Ldoodle/DoodleItemBase;->mPivotX:F

    .line 114
    iget p1, p0, Ldoodle/DoodleItemBase;->mPivotY:F

    add-float/2addr p1, v1

    iput p1, p0, Ldoodle/DoodleItemBase;->mPivotY:F

    .line 117
    :cond_0
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setNeedClipOutside(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Ldoodle/DoodleItemBase;->mIsNeedClipOutside:Z

    return-void
.end method

.method public setPen(Ldoodle/core/IDoodlePen;)V
    .locals 0

    .line 132
    iput-object p1, p0, Ldoodle/DoodleItemBase;->mPen:Ldoodle/core/IDoodlePen;

    .line 133
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 63
    iput p1, p0, Ldoodle/DoodleItemBase;->mPivotX:F

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 73
    iput p1, p0, Ldoodle/DoodleItemBase;->mPivotY:F

    return-void
.end method

.method public setShape(Ldoodle/core/IDoodleShape;)V
    .locals 0

    .line 143
    iput-object p1, p0, Ldoodle/DoodleItemBase;->mShape:Ldoodle/core/IDoodleShape;

    .line 144
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 154
    iput p1, p0, Ldoodle/DoodleItemBase;->mSize:F

    .line 155
    invoke-virtual {p0}, Ldoodle/DoodleItemBase;->refresh()V

    return-void
.end method
