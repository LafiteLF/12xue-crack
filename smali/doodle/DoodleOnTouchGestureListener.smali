.class public Ldoodle/DoodleOnTouchGestureListener;
.super Landroids/TouchGestureDetector$OnTouchGestureListener;
.source "DoodleOnTouchGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;
    }
.end annotation


# static fields
.field private static final VALUE:F = 1.0f


# instance fields
.field private mCopyLocation:Ldoodle/CopyLocation;

.field private mCurrDoodlePath:Ldoodle/DoodlePath;

.field private mCurrPath:Landroid/graphics/Path;

.field private mDoodle:Ldoodle/DoodleView;

.field private mLastFocusX:Ljava/lang/Float;

.field private mLastFocusY:Ljava/lang/Float;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mRotateDiff:F

.field private mScaleAnimTranY:F

.field private mScaleAnimTransX:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

.field private mSelectedItemX:F

.field private mSelectedItemY:F

.field private mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

.field private mTouchCentreX:F

.field private mTouchCentreY:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchX:F

.field private mTouchY:F

.field private mTransAnimOldY:F

.field private mTransAnimY:F

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private pendingScale:F

.field private pendingX:F

.field private pendingY:F


# direct methods
.method public constructor <init>(Ldoodle/DoodleView;Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroids/TouchGestureDetector$OnTouchGestureListener;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 282
    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingScale:F

    .line 58
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    .line 59
    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    invoke-virtual {v0}, Ldoodle/DoodlePen;->getCopyLocation()Ldoodle/CopyLocation;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    .line 60
    invoke-virtual {v0}, Ldoodle/CopyLocation;->reset()V

    .line 61
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Ldoodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Ldoodle/CopyLocation;->updateLocation(FF)V

    .line 62
    iput-object p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-void
.end method

.method static synthetic access$000(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    return p0
.end method

.method static synthetic access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;
    .locals 0

    .line 25
    iget-object p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    return-object p0
.end method

.method static synthetic access$200(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    return p0
.end method

.method static synthetic access$300(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimTransX:F

    return p0
.end method

.method static synthetic access$400(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimTranY:F

    return p0
.end method

.method static synthetic access$500(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTransAnimOldY:F

    return p0
.end method

.method static synthetic access$600(Ldoodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 25
    iget p0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTransAnimY:F

    return p0
.end method

.method private isPenEditable(Ldoodle/core/IDoodlePen;)Z
    .locals 2

    .line 214
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    sget-object v1, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    if-ne v0, v1, :cond_0

    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    .line 215
    invoke-virtual {v0}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    sget-object v1, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    if-ne v0, v1, :cond_2

    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getSelectedItem()Ldoodle/core/IDoodleSelectableItem;
    .locals 1

    .line 85
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    return-object v0
.end method

.method public getSelectionListener()Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;
    .locals 1

    .line 470
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-object v0
.end method

.method public limitBound(Z)V
    .locals 14

    .line 351
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v0

    const/16 v1, 0x5a

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->getDoodleTranslationX()F

    move-result v0

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v2}, Ldoodle/DoodleView;->getDoodleTranslationY()F

    move-result v2

    .line 356
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object v3

    .line 357
    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v4}, Ldoodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    iget-object v5, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v5}, Ldoodle/DoodleView;->getDoodleTranslationY()F

    move-result v5

    .line 358
    iget-object v6, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v6}, Ldoodle/DoodleView;->getCenterWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v7}, Ldoodle/DoodleView;->getRotateScale()F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v7}, Ldoodle/DoodleView;->getCenterHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v8}, Ldoodle/DoodleView;->getRotateScale()F

    move-result v8

    mul-float/2addr v7, v8

    .line 361
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v9}, Ldoodle/DoodleView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/16 v11, 0xb4

    if-gtz v8, :cond_3

    .line 362
    iget-object v8, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v8}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v8}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-ne v8, v11, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v4}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v4

    mul-float/2addr v4, v6

    sub-float v4, v6, v4

    div-float/2addr v4, v9

    goto/16 :goto_5

    .line 363
    :cond_2
    :goto_0
    iget-object v5, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v5}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v5

    mul-float/2addr v5, v7

    sub-float v5, v7, v5

    div-float/2addr v5, v9

    goto/16 :goto_5

    .line 368
    :cond_3
    iget v8, v3, Landroid/graphics/RectF;->top:F

    .line 370
    iget v12, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_a

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v13}, Ldoodle/DoodleView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_a

    .line 371
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-ne v12, v11, :cond_4

    goto :goto_2

    .line 378
    :cond_4
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-ne v12, v1, :cond_6

    :cond_5
    sub-float/2addr v4, v8

    goto :goto_5

    :cond_6
    :goto_1
    add-float/2addr v4, v8

    goto :goto_5

    .line 372
    :cond_7
    :goto_2
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    sub-float/2addr v5, v8

    goto :goto_5

    :cond_9
    :goto_3
    add-float/2addr v5, v8

    goto :goto_5

    .line 384
    :cond_a
    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v8, v8, v12

    if-gez v8, :cond_d

    iget v8, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_d

    .line 385
    iget-object v8, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v8}, Ldoodle/DoodleView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v12

    .line 386
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-eqz v12, :cond_c

    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-ne v12, v11, :cond_b

    goto :goto_4

    .line 393
    :cond_b
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-ne v12, v1, :cond_5

    goto :goto_1

    .line 387
    :cond_c
    :goto_4
    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v12

    if-nez v12, :cond_8

    goto :goto_3

    .line 403
    :cond_d
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v12, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v12}, Ldoodle/DoodleView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    cmpg-float v8, v8, v12

    if-gtz v8, :cond_10

    .line 404
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-ne v1, v11, :cond_e

    goto :goto_6

    .line 407
    :cond_e
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float/2addr v1, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v9

    goto/16 :goto_b

    .line 405
    :cond_f
    :goto_6
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float/2addr v1, v6

    sub-float/2addr v6, v1

    div-float v4, v6, v9

    goto/16 :goto_b

    .line 410
    :cond_10
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 412
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_17

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v8}, Ldoodle/DoodleView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_17

    .line 413
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v11, :cond_11

    goto :goto_8

    .line 420
    :cond_11
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_13

    :cond_12
    add-float/2addr v5, v6

    goto :goto_b

    :cond_13
    :goto_7
    sub-float/2addr v5, v6

    goto :goto_b

    .line 414
    :cond_14
    :goto_8
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    sub-float/2addr v4, v6

    goto :goto_b

    :cond_16
    :goto_9
    add-float/2addr v4, v6

    goto :goto_b

    .line 426
    :cond_17
    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v7}, Ldoodle/DoodleView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1a

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v10

    if-gtz v6, :cond_1a

    .line 427
    iget-object v6, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v6}, Ldoodle/DoodleView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    .line 428
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v11, :cond_18

    goto :goto_a

    .line 435
    :cond_18
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_12

    goto :goto_7

    .line 429
    :cond_19
    :goto_a
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_9

    :cond_1a
    :goto_b
    if-eqz p1, :cond_1c

    .line 444
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1b

    .line 445
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    .line 446
    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 447
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Ldoodle/DoodleOnTouchGestureListener$2;

    invoke-direct {v1, p0}, Ldoodle/DoodleOnTouchGestureListener$2;-><init>(Ldoodle/DoodleOnTouchGestureListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 456
    :cond_1b
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 457
    iput v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTransAnimOldY:F

    .line 458
    iput v5, p0, Ldoodle/DoodleOnTouchGestureListener;->mTransAnimY:F

    .line 459
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    .line 461
    :cond_1c
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1, v4, v5}, Ldoodle/DoodleView;->setDoodleTranslation(FF)V

    :goto_c
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScale(Landroids/ScaleGestureDetectorApi27;)Z
    .locals 5

    .line 287
    invoke-virtual {p1}, Landroids/ScaleGestureDetectorApi27;->getFocusX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    .line 288
    invoke-virtual {p1}, Landroids/ScaleGestureDetectorApi27;->getFocusY()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    .line 290
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 291
    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v2, v0

    .line 292
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    .line 294
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingX:F

    add-float/2addr v3, v2

    iput v3, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingX:F

    .line 300
    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingY:F

    add-float/2addr v2, v0

    iput v2, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingY:F

    goto :goto_1

    .line 295
    :cond_1
    :goto_0
    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    add-float/2addr v4, v2

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingX:F

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->setDoodleTranslationX(F)V

    .line 296
    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v2}, Ldoodle/DoodleView;->getDoodleTranslationY()F

    move-result v3

    add-float/2addr v3, v0

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingY:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Ldoodle/DoodleView;->setDoodleTranslationY(F)V

    const/4 v0, 0x0

    .line 297
    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingY:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingX:F

    .line 304
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3ba3d70a    # 0.005f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 306
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v0

    invoke-virtual {p1}, Landroids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iget p1, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingScale:F

    mul-float/2addr v0, p1

    .line 307
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-virtual {p1, v2}, Ldoodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Ldoodle/DoodleView;->setDoodleScale(FFF)V

    .line 308
    iput v1, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingScale:F

    goto :goto_2

    .line 310
    :cond_3
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingScale:F

    invoke-virtual {p1}, Landroids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result p1

    mul-float/2addr v0, p1

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->pendingScale:F

    .line 313
    :goto_2
    iget p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    .line 314
    iget p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroids/ScaleGestureDetectorApi27;)Z
    .locals 0

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    .line 278
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroids/ScaleGestureDetectorApi27;)V
    .locals 5

    .line 321
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    const/4 v1, 0x1

    if-gez p1, :cond_1

    .line 322
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_0

    .line 323
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    .line 324
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 325
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Ldoodle/DoodleOnTouchGestureListener$1;

    invoke-direct {v2, p0}, Ldoodle/DoodleOnTouchGestureListener$1;-><init>(Ldoodle/DoodleOnTouchGestureListener;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 335
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 336
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getDoodleTranslationX()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimTransX:F

    .line 337
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getDoodleTranslationY()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimTranY:F

    .line 338
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v4}, Ldoodle/DoodleView;->getDoodleScale()F

    move-result v4

    aput v4, v2, v3

    aput v0, v2, v1

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 339
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0, v1}, Ldoodle/DoodleOnTouchGestureListener;->limitBound(Z)V

    :goto_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 169
    iget p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 170
    iget p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 171
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 174
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Ldoodle/DoodleOnTouchGestureListener;->isPenEditable(Ldoodle/core/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object p2, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1}, Ldoodle/CopyLocation;->isRelocating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    iget-object p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p2, p3}, Ldoodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toY(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Ldoodle/CopyLocation;->updateLocation(FF)V

    goto/16 :goto_1

    .line 192
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object p2, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p1, p2, :cond_2

    .line 193
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1}, Ldoodle/CopyLocation;->getCopyStartX()F

    move-result p2

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toX(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p3}, Ldoodle/CopyLocation;->getTouchStartX()F

    move-result p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    .line 194
    invoke-virtual {p3}, Ldoodle/CopyLocation;->getCopyStartY()F

    move-result p3

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {p4, v0}, Ldoodle/DoodleView;->toY(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p4}, Ldoodle/CopyLocation;->getTouchStartY()F

    move-result p4

    sub-float/2addr p3, p4

    .line 193
    invoke-virtual {p1, p2, p3}, Ldoodle/CopyLocation;->updateLocation(FF)V

    .line 196
    :cond_2
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object p1

    sget-object p2, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    if-ne p1, p2, :cond_3

    .line 197
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    iget-object p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 198
    invoke-virtual {p2, p3}, Ldoodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 199
    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toY(F)F

    move-result p3

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 200
    invoke-virtual {p4, v0}, Ldoodle/DoodleView;->toX(F)F

    move-result p4

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 201
    invoke-virtual {v0, v2}, Ldoodle/DoodleView;->toY(F)F

    move-result v0

    .line 197
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 202
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    iget-object p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Ldoodle/DoodlePath;->updatePath(Landroid/graphics/Path;)V

    goto/16 :goto_1

    .line 204
    :cond_3
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    iget-object p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    invoke-virtual {p2, p3}, Ldoodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toY(F)F

    move-result p3

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p4, v0}, Ldoodle/DoodleView;->toX(F)F

    move-result p4

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toY(F)F

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Ldoodle/DoodlePath;->updateXY(FFFF)V

    goto :goto_1

    .line 175
    :cond_4
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    if-eqz p1, :cond_6

    .line 176
    instance-of p2, p1, Ldoodle/DoodleRotatableItemBase;

    if-eqz p2, :cond_5

    check-cast p1, Ldoodle/DoodleRotatableItemBase;

    invoke-virtual {p1}, Ldoodle/DoodleRotatableItemBase;->isRotating()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 177
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    invoke-interface {p1}, Ldoodle/core/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    .line 178
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    iget p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mRotateDiff:F

    .line 179
    invoke-interface {p1}, Ldoodle/core/IDoodleSelectableItem;->getPivotX()F

    move-result p3

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    invoke-interface {p4}, Ldoodle/core/IDoodleSelectableItem;->getPivotY()F

    move-result p4

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Ldoodle/DoodleView;->toY(F)F

    move-result v1

    .line 178
    invoke-static {p3, p4, v0, v1}, Ldoodle/util/DrawUtil;->computeAngle(FFFF)F

    move-result p3

    add-float/2addr p2, p3

    invoke-interface {p1, p2}, Ldoodle/core/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    .line 182
    :cond_5
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    iget p2, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemX:F

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 183
    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toX(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    invoke-virtual {p3, p4}, Ldoodle/DoodleView;->toX(F)F

    move-result p3

    sub-float/2addr p2, p3

    iget p3, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemY:F

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 184
    invoke-virtual {p4, v0}, Ldoodle/DoodleView;->toY(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {p4, v0}, Ldoodle/DoodleView;->toY(F)F

    move-result p4

    sub-float/2addr p3, p4

    .line 182
    invoke-interface {p1, p2, p3}, Ldoodle/core/IDoodleSelectableItem;->setLocation(FF)V

    .line 208
    :cond_6
    :goto_1
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->refresh()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScrollBegin(Landroid/view/MotionEvent;)V
    .locals 5

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 104
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->setScrollingDoodle(Z)V

    .line 106
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Ldoodle/DoodleOnTouchGestureListener;->isPenEditable(Ldoodle/core/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 120
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object v1, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v1, v3}, Ldoodle/DoodleView;->toX(F)F

    move-result v1

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v4}, Ldoodle/DoodleView;->getSize()F

    move-result v4

    invoke-virtual {p1, v1, v3, v4}, Ldoodle/CopyLocation;->contains(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1, v0}, Ldoodle/CopyLocation;->setRelocating(Z)V

    .line 122
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1, v2}, Ldoodle/CopyLocation;->setCopying(Z)V

    goto/16 :goto_2

    .line 124
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    sget-object v1, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    if-ne p1, v1, :cond_2

    .line 125
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1, v2}, Ldoodle/CopyLocation;->setRelocating(Z)V

    .line 126
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1}, Ldoodle/CopyLocation;->isCopying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 127
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    invoke-virtual {p1, v0}, Ldoodle/CopyLocation;->setCopying(Z)V

    .line 128
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCopyLocation:Ldoodle/CopyLocation;

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Ldoodle/DoodleView;->toY(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Ldoodle/CopyLocation;->setStartPosition(FF)V

    .line 133
    :cond_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    .line 134
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Ldoodle/DoodleView;->toY(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 135
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getShape()Ldoodle/core/IDoodleShape;

    move-result-object p1

    sget-object v0, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    if-ne p1, v0, :cond_3

    .line 136
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Ldoodle/DoodlePath;->toPath(Ldoodle/core/IDoodle;Landroid/graphics/Path;)Ldoodle/DoodlePath;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    goto :goto_0

    .line 138
    :cond_3
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    .line 139
    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {v1, v2}, Ldoodle/DoodleView;->toY(F)F

    move-result v1

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v2, v3}, Ldoodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    .line 138
    invoke-static {p1, v0, v1, v2, v3}, Ldoodle/DoodlePath;->toShape(Ldoodle/core/IDoodle;FFFF)Ldoodle/DoodlePath;

    move-result-object p1

    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    .line 141
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->addItem(Ldoodle/core/IDoodleItem;)V

    goto :goto_2

    .line 107
    :cond_4
    :goto_1
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    if-eqz p1, :cond_5

    .line 108
    invoke-interface {p1}, Ldoodle/core/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    .line 109
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iput v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemX:F

    .line 110
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemY:F

    .line 111
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    instance-of v1, p1, Ldoodle/DoodleRotatableItemBase;

    if-eqz v1, :cond_5

    check-cast p1, Ldoodle/DoodleRotatableItemBase;

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 112
    invoke-virtual {v1, v2}, Ldoodle/DoodleView;->toX(F)F

    move-result v1

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v2, v3}, Ldoodle/DoodleView;->toY(F)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Ldoodle/DoodleRotatableItemBase;->canRotate(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 113
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    check-cast p1, Ldoodle/DoodleRotatableItemBase;

    invoke-virtual {p1, v0}, Ldoodle/DoodleRotatableItemBase;->setIsRotating(Z)V

    .line 114
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    invoke-interface {p1}, Ldoodle/core/IDoodleSelectableItem;->getItemRotate()F

    move-result p1

    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    .line 115
    invoke-interface {v0}, Ldoodle/core/IDoodleSelectableItem;->getPivotX()F

    move-result v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    invoke-interface {v1}, Ldoodle/core/IDoodleSelectableItem;->getPivotY()F

    move-result v1

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v2, v3}, Ldoodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Ldoodle/util/DrawUtil;->computeAngle(FFFF)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mRotateDiff:F

    .line 144
    :cond_5
    :goto_2
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 2

    .line 149
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 150
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 153
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->setScrollingDoodle(Z)V

    .line 155
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Ldoodle/DoodleOnTouchGestureListener;->isPenEditable(Ldoodle/core/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Ldoodle/DoodlePath;

    goto :goto_1

    .line 156
    :cond_1
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    instance-of v1, p1, Ldoodle/DoodleRotatableItemBase;

    if-eqz v1, :cond_2

    .line 157
    check-cast p1, Ldoodle/DoodleRotatableItemBase;

    invoke-virtual {p1, v0}, Ldoodle/DoodleRotatableItemBase;->setIsRotating(Z)V

    .line 164
    :cond_2
    :goto_1
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 220
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 221
    iget v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 225
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v0

    invoke-direct {p0, v0}, Ldoodle/DoodleOnTouchGestureListener;->isPenEditable(Ldoodle/core/IDoodlePen;)Z

    move-result v0

    .line 227
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Ldoodle/DoodleOnTouchGestureListener;->onScrollBegin(Landroid/view/MotionEvent;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 267
    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 268
    invoke-virtual {p0, p1, p1, v0, v0}, Ldoodle/DoodleOnTouchGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 269
    invoke-virtual {p0, p1}, Ldoodle/DoodleOnTouchGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 230
    :cond_1
    :goto_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->getAllItem()Ljava/util/List;

    move-result-object p1

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    const/4 v3, 0x0

    if-ltz v1, :cond_5

    .line 232
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldoodle/core/IDoodleItem;

    .line 233
    instance-of v5, v4, Ldoodle/core/IDoodleSelectableItem;

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ldoodle/core/IDoodleItem;->isDoodleEditable()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 236
    :cond_2
    check-cast v4, Ldoodle/core/IDoodleSelectableItem;

    .line 238
    iget-object v5, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {v5}, Ldoodle/DoodleView;->isEditMode()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_4

    .line 239
    invoke-interface {v4}, Ldoodle/core/IDoodleSelectableItem;->getPen()Ldoodle/core/IDoodlePen;

    move-result-object v5

    invoke-direct {p0, v5}, Ldoodle/DoodleOnTouchGestureListener;->isPenEditable(Ldoodle/core/IDoodlePen;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 240
    :cond_3
    iget-object v5, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v6, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v5, v6}, Ldoodle/DoodleView;->toX(F)F

    move-result v5

    iget-object v6, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v7, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v6, v7}, Ldoodle/DoodleView;->toY(F)F

    move-result v6

    invoke-interface {v4, v5, v6}, Ldoodle/core/IDoodleSelectableItem;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    invoke-virtual {p0, v4}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    .line 243
    invoke-interface {v4}, Ldoodle/core/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    .line 244
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemX:F

    .line 245
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItemY:F

    move p1, v2

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_3
    if-nez p1, :cond_7

    .line 251
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    .line 254
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz v0, :cond_7

    .line 255
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-interface {v0, v1, p1, v3}, Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Ldoodle/core/IDoodle;Ldoodle/core/IDoodleSelectableItem;Z)V

    goto :goto_4

    .line 258
    :cond_6
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz p1, :cond_7

    .line 260
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toX(F)F

    move-result v1

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget v4, p0, Ldoodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    invoke-interface {p1, v0, v1, v3}, Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;->onCreateSelectableItem(Ldoodle/core/IDoodle;FF)V

    .line 271
    :cond_7
    :goto_4
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->refresh()V

    return v2
.end method

.method public setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V
    .locals 3

    .line 66
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    .line 67
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-interface {v0, p1}, Ldoodle/core/IDoodleSelectableItem;->setSelected(Z)V

    .line 71
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz v1, :cond_0

    .line 72
    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    invoke-interface {v1, v2, v0, p1}, Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Ldoodle/core/IDoodle;Ldoodle/core/IDoodleSelectableItem;Z)V

    .line 75
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 76
    invoke-interface {p1, v0}, Ldoodle/core/IDoodleSelectableItem;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz p1, :cond_1

    .line 78
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener;->mDoodle:Ldoodle/DoodleView;

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectedItem:Ldoodle/core/IDoodleSelectableItem;

    invoke-interface {p1, v1, v2, v0}, Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Ldoodle/core/IDoodle;Ldoodle/core/IDoodleSelectableItem;Z)V

    :cond_1
    return-void
.end method

.method public setSelectionListener(Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;)V
    .locals 0

    .line 466
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener;->mSelectionListener:Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-void
.end method
