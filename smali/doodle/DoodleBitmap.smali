.class public Ldoodle/DoodleBitmap;
.super Ldoodle/DoodleRotatableItemBase;
.source "DoodleBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/Rect;

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ldoodle/core/IDoodle;Landroid/graphics/Bitmap;FFF)V
    .locals 1

    .line 22
    invoke-interface {p1}, Ldoodle/core/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p4, p5}, Ldoodle/DoodleRotatableItemBase;-><init>(Ldoodle/core/IDoodle;IFF)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    .line 23
    sget-object p1, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->setPen(Ldoodle/core/IDoodlePen;)V

    .line 24
    invoke-virtual {p0, p4}, Ldoodle/DoodleBitmap;->setPivotX(F)V

    .line 25
    invoke-virtual {p0, p5}, Ldoodle/DoodleBitmap;->setPivotY(F)V

    .line 26
    iput-object p2, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 27
    invoke-virtual {p0, p3}, Ldoodle/DoodleBitmap;->setSize(F)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 66
    iget-object v0, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Ldoodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Ldoodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 48
    iget-object v0, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 5

    .line 53
    iget-object v0, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getSize()F

    move-result v0

    float-to-int v1, v0

    .line 57
    iget-object v2, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    iget-object v3, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    iget-object p1, p0, Ldoodle/DoodleBitmap;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v4, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object p1, p0, Ldoodle/DoodleBitmap;->mDstRect:Landroid/graphics/Rect;

    iget-object v2, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 31
    iput-object p1, p0, Ldoodle/DoodleBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->resetBounds(Landroid/graphics/Rect;)V

    .line 33
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->setPivotX(F)V

    .line 34
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->setPivotY(F)V

    return-void
.end method

.method public setSize(F)V
    .locals 3

    .line 39
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getPivotX()F

    move-result v0

    .line 40
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getPivotY()F

    move-result v1

    .line 41
    invoke-super {p0, p1}, Ldoodle/DoodleRotatableItemBase;->setSize(F)V

    .line 42
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->setPivotX(F)V

    .line 43
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-virtual {p0, p1}, Ldoodle/DoodleBitmap;->setPivotY(F)V

    .line 44
    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getPivotX()F

    move-result v2

    sub-float/2addr v2, v0

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getLocation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Ldoodle/DoodleBitmap;->getPivotY()F

    move-result v2

    sub-float/2addr v2, v1

    sub-float/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Ldoodle/DoodleBitmap;->setLocation(FF)V

    return-void
.end method
