.class public Ldoodle/DoodleView;
.super Landroid/view/View;
.source "DoodleView.java"

# interfaces
.implements Ldoodle/core/IDoodle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/DoodleView$DoodleViewInner;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIZE:I = 0x6

.field public static final ERROR_INIT:I = -0x1

.field public static final ERROR_SAVE:I = -0x2

.field public static final MAX_SCALE:F = 4.0f

.field public static final MIN_SCALE:F = 0.25f


# instance fields
.field private isJustDrawOriginal:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapCanvas:Landroid/graphics/Canvas;

.field private mCenterHeight:I

.field private mCenterScale:F

.field private mCenterWidth:I

.field private mCentreTranX:F

.field private mCentreTranY:F

.field private mColor:Ldoodle/core/IDoodleColor;

.field private mDefaultTouchDetector:Ldoodle/core/IDoodleTouchDetector;

.field private mDoodleBitmap:Landroid/graphics/Bitmap;

.field private mDoodleBound:Landroid/graphics/RectF;

.field private mDoodleListener:Ldoodle/IDoodleListener;

.field private mDoodleRotateDegree:I

.field private mDoodleSizeUnit:F

.field private mEnableZoomer:Z

.field private mInner:Ldoodle/DoodleView$DoodleViewInner;

.field private mIsDrawableOutside:Z

.field private mIsEditMode:Z

.field private mIsScrollingDoodle:Z

.field private mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ldoodle/core/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ldoodle/core/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastZoomerY:F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPen:Ldoodle/core/IDoodlePen;

.field private mReady:Z

.field private mRotateScale:F

.field private mRotateTranX:F

.field private mRotateTranY:F

.field private mScale:F

.field private mShape:Ldoodle/core/IDoodleShape;

.field private mSize:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTouchDetectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldoodle/core/IDoodlePen;",
            "Ldoodle/core/IDoodleTouchDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEventMatrix:Landroid/graphics/Matrix;

.field private mTouchX:F

.field private mTouchY:F

.field private mTransX:F

.field private mTransY:F

.field private mZoomerHorizonX:I

.field private mZoomerPath:Landroid/graphics/Path;

.field private mZoomerRadius:F

.field private mZoomerScale:F

.field private mZooomerPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3, v0}, Ldoodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;Ldoodle/core/IDoodleTouchDetector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;Ldoodle/core/IDoodleTouchDetector;)V
    .locals 3

    .line 113
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 56
    iput p1, p0, Ldoodle/DoodleView;->mRotateScale:F

    .line 59
    iput p1, p0, Ldoodle/DoodleView;->mScale:F

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Ldoodle/DoodleView;->mTransX:F

    iput v0, p0, Ldoodle/DoodleView;->mTransY:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 61
    iput v1, p0, Ldoodle/DoodleView;->mMinScale:F

    const/high16 v1, 0x40800000    # 4.0f

    .line 62
    iput v1, p0, Ldoodle/DoodleView;->mMaxScale:F

    const/4 v1, 0x0

    .line 69
    iput-boolean v1, p0, Ldoodle/DoodleView;->mIsDrawableOutside:Z

    .line 70
    iput-boolean v1, p0, Ldoodle/DoodleView;->mReady:Z

    .line 73
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Ldoodle/DoodleView;->mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    iput-boolean v1, p0, Ldoodle/DoodleView;->mEnableZoomer:Z

    .line 84
    iput v0, p0, Ldoodle/DoodleView;->mZoomerScale:F

    .line 87
    iput-boolean v1, p0, Ldoodle/DoodleView;->mIsScrollingDoodle:Z

    .line 89
    iput p1, p0, Ldoodle/DoodleView;->mDoodleSizeUnit:F

    .line 90
    iput v1, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    .line 100
    iput-boolean v1, p0, Ldoodle/DoodleView;->mIsEditMode:Z

    .line 157
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0, v1, v0}, Ldoodle/DoodleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    iput-object p2, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 119
    iput-object p3, p0, Ldoodle/DoodleView;->mDoodleListener:Ldoodle/IDoodleListener;

    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    .line 127
    iput p1, p0, Ldoodle/DoodleView;->mScale:F

    .line 128
    new-instance p1, Ldoodle/DoodleColor;

    const/high16 p2, -0x10000

    invoke-direct {p1, p2}, Ldoodle/DoodleColor;-><init>(I)V

    iput-object p1, p0, Ldoodle/DoodleView;->mColor:Ldoodle/core/IDoodleColor;

    .line 130
    sget-object p1, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    iput-object p1, p0, Ldoodle/DoodleView;->mPen:Ldoodle/core/IDoodlePen;

    .line 131
    sget-object p1, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    iput-object p1, p0, Ldoodle/DoodleView;->mShape:Ldoodle/core/IDoodleShape;

    .line 133
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    const p2, -0x55000001

    .line 134
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 138
    iget-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 139
    iget-object p1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Ldoodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 p3, 0x41200000    # 10.0f

    invoke-static {p2, p3}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    iput-object p4, p0, Ldoodle/DoodleView;->mDefaultTouchDetector:Ldoodle/core/IDoodleTouchDetector;

    .line 143
    new-instance p1, Ldoodle/DoodleView$DoodleViewInner;

    invoke-direct {p1, p0, v0}, Ldoodle/DoodleView$DoodleViewInner;-><init>(Ldoodle/DoodleView;Ldoodle/DoodleView$1;)V

    iput-object p1, p0, Ldoodle/DoodleView;->mInner:Ldoodle/DoodleView$DoodleViewInner;

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bitmap is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "IDoodleListener is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Ldoodle/DoodleView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ldoodle/DoodleView;->initCanvas()V

    return-void
.end method

.method static synthetic access$200(Ldoodle/DoodleView;)Ldoodle/core/IDoodlePen;
    .locals 0

    .line 37
    iget-object p0, p0, Ldoodle/DoodleView;->mPen:Ldoodle/core/IDoodlePen;

    return-object p0
.end method

.method static synthetic access$300(Ldoodle/DoodleView;)Ljava/util/Map;
    .locals 0

    .line 37
    iget-object p0, p0, Ldoodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Ldoodle/DoodleView;)Ldoodle/core/IDoodleTouchDetector;
    .locals 0

    .line 37
    iget-object p0, p0, Ldoodle/DoodleView;->mDefaultTouchDetector:Ldoodle/core/IDoodleTouchDetector;

    return-object p0
.end method

.method static synthetic access$500(Ldoodle/DoodleView;Landroid/graphics/Canvas;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Ldoodle/DoodleView;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 339
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranX()F

    move-result v0

    .line 340
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranY()F

    move-result v1

    .line 343
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 344
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    .line 345
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 347
    iget-boolean v0, p0, Ldoodle/DoodleView;->isJustDrawOriginal:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget-boolean v0, p0, Ldoodle/DoodleView;->mIsDrawableOutside:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 358
    iget-object v2, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 360
    :goto_0
    iget-object v2, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldoodle/core/IDoodleItem;

    .line 361
    instance-of v4, v3, Ldoodle/DoodleItemBase;

    if-eqz v4, :cond_5

    .line 362
    invoke-interface {v3}, Ldoodle/core/IDoodleItem;->isNeedClipOutside()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_3

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 367
    :cond_3
    move-object v4, v3

    check-cast v4, Ldoodle/DoodleItemBase;

    invoke-virtual {v4, p1}, Ldoodle/DoodleItemBase;->drawBefore(Landroid/graphics/Canvas;)V

    .line 368
    invoke-interface {v3, p1}, Ldoodle/core/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    .line 369
    invoke-virtual {v4, p1}, Ldoodle/DoodleItemBase;->drawAfter(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 373
    iget-object v3, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    .line 376
    :cond_4
    move-object v4, v3

    check-cast v4, Ldoodle/DoodleItemBase;

    invoke-virtual {v4, p1}, Ldoodle/DoodleItemBase;->drawBefore(Landroid/graphics/Canvas;)V

    .line 377
    invoke-interface {v3, p1}, Ldoodle/core/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    .line 378
    invoke-virtual {v4, p1}, Ldoodle/DoodleItemBase;->drawAfter(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 381
    :cond_5
    invoke-interface {v3, p1}, Ldoodle/core/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 386
    :cond_6
    iget-object v2, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldoodle/core/IDoodleItem;

    .line 387
    instance-of v4, v3, Ldoodle/DoodleItemBase;

    if-nez v4, :cond_8

    goto :goto_2

    .line 390
    :cond_8
    invoke-interface {v3}, Ldoodle/core/IDoodleItem;->isNeedClipOutside()Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v0, :cond_9

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 394
    :cond_9
    check-cast v3, Ldoodle/DoodleItemBase;

    invoke-virtual {v3, p1}, Ldoodle/DoodleItemBase;->drawAtTheTop(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_7

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 398
    iget-object v3, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    .line 401
    :cond_a
    check-cast v3, Ldoodle/DoodleItemBase;

    invoke-virtual {v3, p1}, Ldoodle/DoodleItemBase;->drawAtTheTop(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 405
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 407
    iget-object v0, p0, Ldoodle/DoodleView;->mPen:Ldoodle/core/IDoodlePen;

    if-eqz v0, :cond_c

    .line 408
    invoke-interface {v0, p1, p0}, Ldoodle/core/IDoodlePen;->drawHelpers(Landroid/graphics/Canvas;Ldoodle/core/IDoodle;)V

    .line 410
    :cond_c
    iget-object v0, p0, Ldoodle/DoodleView;->mShape:Ldoodle/core/IDoodleShape;

    if-eqz v0, :cond_d

    .line 411
    invoke-interface {v0, p1, p0}, Ldoodle/core/IDoodleShape;->drawHelpers(Landroid/graphics/Canvas;Ldoodle/core/IDoodle;)V

    :cond_d
    return-void
.end method

.method private initCanvas()V
    .locals 3

    .line 473
    iget-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 474
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 476
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 477
    iget-object v1, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    .line 478
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Ldoodle/DoodleView;->mBitmapCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private initDoodleBitmap()V
    .locals 6

    .line 191
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 192
    iget-object v1, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    .line 193
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float v4, v1, v2

    .line 194
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    div-float v0, v2, v3

    .line 196
    iput v0, p0, Ldoodle/DoodleView;->mCenterScale:F

    .line 197
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    iput v0, p0, Ldoodle/DoodleView;->mCenterWidth:I

    .line 198
    iget v0, p0, Ldoodle/DoodleView;->mCenterScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Ldoodle/DoodleView;->mCenterHeight:I

    goto :goto_0

    :cond_0
    div-float v1, v2, v4

    .line 200
    iput v1, p0, Ldoodle/DoodleView;->mCenterScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 201
    iput v0, p0, Ldoodle/DoodleView;->mCenterWidth:I

    .line 202
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v0

    iput v0, p0, Ldoodle/DoodleView;->mCenterHeight:I

    .line 205
    :goto_0
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    iget v1, p0, Ldoodle/DoodleView;->mCenterWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Ldoodle/DoodleView;->mCentreTranX:F

    .line 206
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v0

    iget v3, p0, Ldoodle/DoodleView;->mCenterHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Ldoodle/DoodleView;->mCentreTranY:F

    .line 208
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    .line 209
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleView;->mZoomerPath:Landroid/graphics/Path;

    .line 210
    iget v1, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 211
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Ldoodle/DoodleView;->mZoomerHorizonX:I

    .line 213
    invoke-virtual {p0}, Ldoodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ldoodle/DoodleView;->mCenterScale:F

    div-float/2addr v0, v1

    iput v0, p0, Ldoodle/DoodleView;->mDoodleSizeUnit:F

    .line 215
    iget-boolean v1, p0, Ldoodle/DoodleView;->mReady:Z

    if-nez v1, :cond_1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    .line 216
    iput v0, p0, Ldoodle/DoodleView;->mSize:F

    :cond_1
    const/4 v0, 0x0

    .line 219
    iput v0, p0, Ldoodle/DoodleView;->mTransY:F

    iput v0, p0, Ldoodle/DoodleView;->mTransX:F

    .line 220
    iput v2, p0, Ldoodle/DoodleView;->mScale:F

    .line 222
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method


# virtual methods
.method public addItem(Ldoodle/core/IDoodleItem;)V
    .locals 1

    .line 920
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->getDoodle()Ldoodle/core/IDoodle;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 923
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    iget-object v0, p0, Ldoodle/DoodleView;->mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 928
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->onAdd()V

    .line 930
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void

    .line 924
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the item has been added"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 921
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the object Doodle is illegal"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindTouchDetector(Ldoodle/core/IDoodlePen;Ldoodle/core/IDoodleTouchDetector;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bottomItem(Ldoodle/core/IDoodleItem;)V
    .locals 2

    .line 886
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 887
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 888
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 622
    :goto_0
    iget-object v1, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 623
    iget-object v1, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldoodle/core/IDoodleItem;

    .line 624
    invoke-interface {v1}, Ldoodle/core/IDoodleItem;->onRemove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 627
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 294
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 300
    iget v0, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v0, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 301
    iget-object v0, p0, Ldoodle/DoodleView;->mInner:Ldoodle/DoodleView$DoodleViewInner;

    invoke-virtual {v0, p1}, Ldoodle/DoodleView$DoodleViewInner;->onDraw(Landroid/graphics/Canvas;)V

    .line 302
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 310
    iget-boolean v0, p0, Ldoodle/DoodleView;->mIsScrollingDoodle:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ldoodle/DoodleView;->mEnableZoomer:Z

    if-eqz v0, :cond_3

    iget v0, p0, Ldoodle/DoodleView;->mZoomerScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 313
    iget v0, p0, Ldoodle/DoodleView;->mTouchY:F

    iget v2, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_1

    .line 314
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Ldoodle/DoodleView;->mLastZoomerY:F

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    mul-float/2addr v4, v3

    sub-float/2addr v2, v4

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    .line 316
    iput v1, p0, Ldoodle/DoodleView;->mLastZoomerY:F

    .line 318
    :cond_2
    :goto_0
    iget v0, p0, Ldoodle/DoodleView;->mZoomerHorizonX:I

    int-to-float v0, v0

    iget v1, p0, Ldoodle/DoodleView;->mLastZoomerY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 319
    iget-object v0, p0, Ldoodle/DoodleView;->mZoomerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v0, -0x1000000

    .line 320
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 322
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    iget v0, p0, Ldoodle/DoodleView;->mZoomerScale:F

    iget v1, p0, Ldoodle/DoodleView;->mScale:F

    div-float/2addr v0, v1

    .line 324
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 325
    iget v1, p0, Ldoodle/DoodleView;->mTouchX:F

    neg-float v1, v1

    iget v2, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    div-float v3, v2, v0

    add-float/2addr v1, v3

    iget v3, p0, Ldoodle/DoodleView;->mTouchY:F

    neg-float v3, v3

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 327
    iget v0, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v0, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 328
    iget-object v0, p0, Ldoodle/DoodleView;->mInner:Ldoodle/DoodleView$DoodleViewInner;

    invoke-virtual {v0, p1}, Ldoodle/DoodleView$DoodleViewInner;->onDraw(Landroid/graphics/Canvas;)V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 332
    iget v0, p0, Ldoodle/DoodleView;->mZoomerRadius:F

    iget-object v1, p0, Ldoodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v0, v0, v1}, Ldoodle/util/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 333
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 162
    iget-object v0, p0, Ldoodle/DoodleView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleView;->mTouchX:F

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Ldoodle/DoodleView;->mTouchY:F

    .line 171
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 175
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 176
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 177
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 178
    iget-object v0, p0, Ldoodle/DoodleView;->mInner:Ldoodle/DoodleView$DoodleViewInner;

    invoke-virtual {v0, p1}, Ldoodle/DoodleView$DoodleViewInner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v1
.end method

.method public enableZoomer(Z)V
    .locals 0

    .line 853
    iput-boolean p1, p0, Ldoodle/DoodleView;->mEnableZoomer:Z

    return-void
.end method

.method public getAllItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldoodle/core/IDoodleItem;",
            ">;"
        }
    .end annotation

    .line 945
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getAllScale()F
    .locals 2

    .line 416
    iget v0, p0, Ldoodle/DoodleView;->mCenterScale:F

    iget v1, p0, Ldoodle/DoodleView;->mRotateScale:F

    mul-float/2addr v0, v1

    iget v1, p0, Ldoodle/DoodleView;->mScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getAllTranX()F
    .locals 2

    .line 420
    iget v0, p0, Ldoodle/DoodleView;->mCentreTranX:F

    iget v1, p0, Ldoodle/DoodleView;->mRotateTranX:F

    add-float/2addr v0, v1

    iget v1, p0, Ldoodle/DoodleView;->mTransX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAllTranY()F
    .locals 2

    .line 424
    iget v0, p0, Ldoodle/DoodleView;->mCentreTranY:F

    iget v1, p0, Ldoodle/DoodleView;->mRotateTranY:F

    add-float/2addr v0, v1

    iget v1, p0, Ldoodle/DoodleView;->mTransY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 950
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCenterHeight()I
    .locals 1

    .line 963
    iget v0, p0, Ldoodle/DoodleView;->mCenterHeight:I

    return v0
.end method

.method public getCenterScale()F
    .locals 1

    .line 967
    iget v0, p0, Ldoodle/DoodleView;->mCenterScale:F

    return v0
.end method

.method public getCenterWidth()I
    .locals 1

    .line 959
    iget v0, p0, Ldoodle/DoodleView;->mCenterWidth:I

    return v0
.end method

.method public getCentreTranX()F
    .locals 1

    .line 971
    iget v0, p0, Ldoodle/DoodleView;->mCentreTranX:F

    return v0
.end method

.method public getCentreTranY()F
    .locals 1

    .line 975
    iget v0, p0, Ldoodle/DoodleView;->mCentreTranY:F

    return v0
.end method

.method public getColor()Ldoodle/core/IDoodleColor;
    .locals 1

    .line 693
    iget-object v0, p0, Ldoodle/DoodleView;->mColor:Ldoodle/core/IDoodleColor;

    return-object v0
.end method

.method public getDefaultTouchDetector()Ldoodle/core/IDoodleTouchDetector;
    .locals 1

    .line 530
    iget-object v0, p0, Ldoodle/DoodleView;->mDefaultTouchDetector:Ldoodle/core/IDoodleTouchDetector;

    return-object v0
.end method

.method public getDefaultTouchDetector(Ldoodle/core/IDoodlePen;)Ldoodle/core/IDoodleTouchDetector;
    .locals 1

    .line 500
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldoodle/core/IDoodleTouchDetector;

    return-object p1
.end method

.method public getDoodleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 955
    iget-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDoodleBound()Landroid/graphics/RectF;
    .locals 26

    move-object/from16 v0, p0

    .line 231
    iget v1, v0, Ldoodle/DoodleView;->mCenterWidth:I

    int-to-float v1, v1

    iget v2, v0, Ldoodle/DoodleView;->mRotateScale:F

    mul-float/2addr v1, v2

    iget v3, v0, Ldoodle/DoodleView;->mScale:F

    mul-float/2addr v1, v3

    .line 232
    iget v4, v0, Ldoodle/DoodleView;->mCenterHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    mul-float/2addr v4, v3

    .line 233
    iget v2, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    rem-int/lit8 v3, v2, 0x5a

    const/4 v5, 0x0

    if-nez v3, :cond_4

    if-nez v2, :cond_0

    .line 235
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 236
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_0
    const/16 v3, 0x5a

    if-ne v2, v3, :cond_1

    .line 238
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 239
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    const/16 v3, 0xb4

    if-ne v2, v3, :cond_2

    .line 244
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 245
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    .line 247
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v3, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 248
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    :goto_0
    move/from16 v25, v4

    move v4, v1

    move/from16 v1, v25

    .line 253
    :cond_3
    :goto_1
    iget-object v5, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v2, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v6, v2

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v9, v2

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v10, v2

    invoke-static/range {v5 .. v10}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 254
    iget-object v2, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    iget-object v3, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v1

    iget-object v1, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    .line 258
    :cond_4
    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v9

    .line 259
    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v10

    .line 261
    iget-object v1, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v13

    .line 262
    iget-object v1, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v14

    .line 264
    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v17

    .line 265
    iget-object v1, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v18

    .line 267
    iget-object v1, v0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v21

    .line 268
    invoke-virtual {v0, v5}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v22

    .line 271
    iget-object v7, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v12, v1

    invoke-static/range {v7 .. v12}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 272
    iget-object v1, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 273
    iget-object v2, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 274
    iget-object v11, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v3, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v12, v3

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v15, v3

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 275
    iget-object v3, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 276
    iget-object v4, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 277
    iget-object v15, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-static/range {v15 .. v20}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 278
    iget-object v5, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 279
    iget-object v6, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 280
    iget-object v7, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v8, v0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v19 .. v24}, Ldoodle/util/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 281
    iget-object v7, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 282
    iget-object v8, v0, Ldoodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 284
    iget-object v9, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 285
    iget-object v9, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 286
    iget-object v9, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->right:F

    .line 287
    iget-object v1, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 289
    :goto_2
    iget-object v1, v0, Ldoodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getDoodleMaxScale()F
    .locals 1

    .line 910
    iget v0, p0, Ldoodle/DoodleView;->mMaxScale:F

    return v0
.end method

.method public getDoodleMinScale()F
    .locals 1

    .line 899
    iget v0, p0, Ldoodle/DoodleView;->mMinScale:F

    return v0
.end method

.method public getDoodleRotation()I
    .locals 1

    .line 546
    iget v0, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    return v0
.end method

.method public getDoodleScale()F
    .locals 1

    .line 725
    iget v0, p0, Ldoodle/DoodleView;->mScale:F

    return v0
.end method

.method public getDoodleTranslationX()F
    .locals 1

    .line 787
    iget v0, p0, Ldoodle/DoodleView;->mTransX:F

    return v0
.end method

.method public getDoodleTranslationY()F
    .locals 1

    .line 798
    iget v0, p0, Ldoodle/DoodleView;->mTransY:F

    return v0
.end method

.method public getPen()Ldoodle/core/IDoodlePen;
    .locals 1

    .line 745
    iget-object v0, p0, Ldoodle/DoodleView;->mPen:Ldoodle/core/IDoodlePen;

    return-object v0
.end method

.method public getRotateScale()F
    .locals 1

    .line 979
    iget v0, p0, Ldoodle/DoodleView;->mRotateScale:F

    return v0
.end method

.method public getRotateTranX()F
    .locals 1

    .line 983
    iget v0, p0, Ldoodle/DoodleView;->mRotateTranX:F

    return v0
.end method

.method public getRotateTranY()F
    .locals 1

    .line 987
    iget v0, p0, Ldoodle/DoodleView;->mRotateTranY:F

    return v0
.end method

.method public getShape()Ldoodle/core/IDoodleShape;
    .locals 1

    .line 764
    iget-object v0, p0, Ldoodle/DoodleView;->mShape:Ldoodle/core/IDoodleShape;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .line 810
    iget v0, p0, Ldoodle/DoodleView;->mSize:F

    return v0
.end method

.method public getUnitSize()F
    .locals 1

    .line 915
    iget v0, p0, Ldoodle/DoodleView;->mDoodleSizeUnit:F

    return v0
.end method

.method public getZoomerScale()F
    .locals 1

    .line 844
    iget v0, p0, Ldoodle/DoodleView;->mZoomerScale:F

    return v0
.end method

.method public isDrawableOutside()Z
    .locals 1

    .line 828
    iget-boolean v0, p0, Ldoodle/DoodleView;->mIsDrawableOutside:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .line 996
    iget-boolean v0, p0, Ldoodle/DoodleView;->mIsEditMode:Z

    return v0
.end method

.method public isEnableZoomer()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Ldoodle/DoodleView;->mEnableZoomer:Z

    return v0
.end method

.method public isScrollingDoodle()Z
    .locals 1

    .line 869
    iget-boolean v0, p0, Ldoodle/DoodleView;->mIsScrollingDoodle:Z

    return v0
.end method

.method public isShowOriginal()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Ldoodle/DoodleView;->isJustDrawOriginal:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 149
    invoke-direct {p0}, Ldoodle/DoodleView;->initCanvas()V

    .line 150
    invoke-direct {p0}, Ldoodle/DoodleView;->initDoodleBitmap()V

    .line 151
    iget-boolean p1, p0, Ldoodle/DoodleView;->mReady:Z

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Ldoodle/DoodleView;->mDoodleListener:Ldoodle/IDoodleListener;

    invoke-interface {p1, p0}, Ldoodle/IDoodleListener;->onReady(Ldoodle/core/IDoodle;)V

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Ldoodle/DoodleView;->mReady:Z

    :cond_0
    return-void
.end method

.method public redo()Z
    .locals 4

    .line 647
    iget-object v0, p0, Ldoodle/DoodleView;->mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 648
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Ldoodle/DoodleView;->mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public refresh()V
    .locals 2

    .line 537
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 538
    invoke-virtual {p0}, Ldoodle/DoodleView;->invalidate()V

    goto :goto_0

    .line 540
    :cond_0
    invoke-virtual {p0}, Ldoodle/DoodleView;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public removeItem(Ldoodle/core/IDoodleItem;)V
    .locals 1

    .line 935
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 938
    :cond_0
    invoke-interface {p1}, Ldoodle/core/IDoodleItem;->onRemove()V

    .line 940
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public removeTouchDetector(Ldoodle/core/IDoodlePen;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public save()V
    .locals 3

    .line 600
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldoodle/core/IDoodleItem;

    .line 601
    instance-of v2, v1, Ldoodle/DoodleItemBase;

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Ldoodle/DoodleView;->mBitmapCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2}, Ldoodle/core/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroids/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    .line 607
    iget-object v1, p0, Ldoodle/DoodleView;->mDoodleListener:Ldoodle/IDoodleListener;

    new-instance v2, Ldoodle/DoodleView$1;

    invoke-direct {v2, p0}, Ldoodle/DoodleView$1;-><init>(Ldoodle/DoodleView;)V

    invoke-interface {v1, p0, v0, v2}, Ldoodle/IDoodleListener;->onSaved(Ldoodle/core/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public setColor(Ldoodle/core/IDoodleColor;)V
    .locals 0

    .line 687
    iput-object p1, p0, Ldoodle/DoodleView;->mColor:Ldoodle/core/IDoodleColor;

    .line 688
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDefaultTouchDetector(Ldoodle/core/IDoodleTouchDetector;)V
    .locals 0

    .line 521
    iput-object p1, p0, Ldoodle/DoodleView;->mDefaultTouchDetector:Ldoodle/core/IDoodleTouchDetector;

    return-void
.end method

.method public setDoodleMaxScale(F)V
    .locals 1

    .line 904
    iput p1, p0, Ldoodle/DoodleView;->mMaxScale:F

    .line 905
    iget p1, p0, Ldoodle/DoodleView;->mScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ldoodle/DoodleView;->setDoodleScale(FFF)V

    return-void
.end method

.method public setDoodleMinScale(F)V
    .locals 1

    .line 893
    iput p1, p0, Ldoodle/DoodleView;->mMinScale:F

    .line 894
    iget p1, p0, Ldoodle/DoodleView;->mScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Ldoodle/DoodleView;->setDoodleScale(FFF)V

    return-void
.end method

.method public setDoodleRotation(I)V
    .locals 5

    .line 557
    iput p1, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    .line 558
    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Ldoodle/DoodleView;->mDoodleRotateDegree:I

    .line 561
    invoke-virtual {p0}, Ldoodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object p1

    .line 562
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 563
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 564
    invoke-virtual {p0}, Ldoodle/DoodleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 565
    invoke-virtual {p0}, Ldoodle/DoodleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpl-float v2, v0, p1

    if-lez v2, :cond_0

    div-float p1, v1, v0

    goto :goto_0

    :cond_0
    div-float p1, v1, p1

    .line 574
    :goto_0
    iget-object v0, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 575
    iget-object v2, p0, Ldoodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 577
    iput v3, p0, Ldoodle/DoodleView;->mTransY:F

    iput v3, p0, Ldoodle/DoodleView;->mTransX:F

    .line 578
    iput v3, p0, Ldoodle/DoodleView;->mRotateTranY:F

    iput v3, p0, Ldoodle/DoodleView;->mRotateTranX:F

    .line 579
    iput v1, p0, Ldoodle/DoodleView;->mScale:F

    .line 580
    iput v1, p0, Ldoodle/DoodleView;->mRotateScale:F

    int-to-float v0, v0

    .line 581
    invoke-virtual {p0, v0}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v1

    int-to-float v2, v2

    .line 582
    invoke-virtual {p0, v2}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v3

    .line 583
    iget v4, p0, Ldoodle/DoodleView;->mCenterScale:F

    div-float/2addr p1, v4

    iput p1, p0, Ldoodle/DoodleView;->mRotateScale:F

    .line 586
    invoke-virtual {p0, v1, v0}, Ldoodle/DoodleView;->toTransX(FF)F

    move-result p1

    .line 587
    invoke-virtual {p0, v3, v2}, Ldoodle/DoodleView;->toTransY(FF)F

    move-result v0

    .line 589
    iput p1, p0, Ldoodle/DoodleView;->mRotateTranX:F

    .line 590
    iput v0, p0, Ldoodle/DoodleView;->mRotateTranY:F

    .line 592
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDoodleScale(FFF)V
    .locals 2

    .line 706
    iget v0, p0, Ldoodle/DoodleView;->mMinScale:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    .line 708
    :cond_0
    iget v0, p0, Ldoodle/DoodleView;->mMaxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 712
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Ldoodle/DoodleView;->toTouchX(F)F

    move-result v0

    .line 713
    invoke-virtual {p0, p3}, Ldoodle/DoodleView;->toTouchY(F)F

    move-result v1

    .line 714
    iput p1, p0, Ldoodle/DoodleView;->mScale:F

    .line 717
    invoke-virtual {p0, v0, p2}, Ldoodle/DoodleView;->toTransX(FF)F

    move-result p1

    iput p1, p0, Ldoodle/DoodleView;->mTransX:F

    .line 718
    invoke-virtual {p0, v1, p3}, Ldoodle/DoodleView;->toTransY(FF)F

    move-result p1

    iput p1, p0, Ldoodle/DoodleView;->mTransY:F

    .line 720
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDoodleTranslation(FF)V
    .locals 0

    .line 769
    iput p1, p0, Ldoodle/DoodleView;->mTransX:F

    .line 770
    iput p2, p0, Ldoodle/DoodleView;->mTransY:F

    .line 771
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDoodleTranslationX(F)V
    .locals 0

    .line 781
    iput p1, p0, Ldoodle/DoodleView;->mTransX:F

    .line 782
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDoodleTranslationY(F)V
    .locals 0

    .line 792
    iput p1, p0, Ldoodle/DoodleView;->mTransY:F

    .line 793
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 1000
    iput-boolean p1, p0, Ldoodle/DoodleView;->mIsEditMode:Z

    .line 1001
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setIsDrawableOutside(Z)V
    .locals 0

    .line 820
    iput-boolean p1, p0, Ldoodle/DoodleView;->mIsDrawableOutside:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Ldoodle/DoodleView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 187
    invoke-super {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPen(Ldoodle/core/IDoodlePen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 739
    iput-object p1, p0, Ldoodle/DoodleView;->mPen:Ldoodle/core/IDoodlePen;

    .line 740
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void

    .line 736
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Pen can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollingDoodle(Z)V
    .locals 0

    .line 873
    iput-boolean p1, p0, Ldoodle/DoodleView;->mIsScrollingDoodle:Z

    .line 874
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setShape(Ldoodle/core/IDoodleShape;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 758
    iput-object p1, p0, Ldoodle/DoodleView;->mShape:Ldoodle/core/IDoodleShape;

    .line 759
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void

    .line 756
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shape can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowOriginal(Z)V
    .locals 0

    .line 671
    iput-boolean p1, p0, Ldoodle/DoodleView;->isJustDrawOriginal:Z

    .line 672
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 804
    iput p1, p0, Ldoodle/DoodleView;->mSize:F

    .line 805
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public setZoomerScale(F)V
    .locals 0

    .line 838
    iput p1, p0, Ldoodle/DoodleView;->mZoomerScale:F

    .line 839
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public final toTouchX(F)F
    .locals 1

    .line 445
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranX()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final toTouchY(F)F
    .locals 1

    .line 452
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranY()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final toTransX(FF)F
    .locals 1

    neg-float p2, p2

    .line 464
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Ldoodle/DoodleView;->mCentreTranX:F

    sub-float/2addr p2, p1

    iget p1, p0, Ldoodle/DoodleView;->mRotateTranX:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final toTransY(FF)F
    .locals 1

    neg-float p2, p2

    .line 468
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Ldoodle/DoodleView;->mCentreTranY:F

    sub-float/2addr p2, p1

    iget p1, p0, Ldoodle/DoodleView;->mRotateTranY:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final toX(F)F
    .locals 1

    .line 431
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final toY(F)F
    .locals 1

    .line 438
    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllTranY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Ldoodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public topItem(Ldoodle/core/IDoodleItem;)V
    .locals 1

    .line 879
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method

.method public undo()Z
    .locals 1

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, v0}, Ldoodle/DoodleView;->undo(I)Z

    move-result v0

    return v0
.end method

.method public undo(I)Z
    .locals 2

    .line 632
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 633
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 634
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldoodle/core/IDoodleItem;

    .line 636
    iget-object v0, p0, Ldoodle/DoodleView;->mItemStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    iget-object v0, p0, Ldoodle/DoodleView;->mItemreMovedStack:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {p0}, Ldoodle/DoodleView;->refresh()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
