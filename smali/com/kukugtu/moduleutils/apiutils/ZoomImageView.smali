.class public Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;
.super Landroid/widget/ImageView;
.source "ZoomImageView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$AutoScaleRunble;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomImageView"

.field public static final mMaxScale:F = 16.0f


# instance fields
.field private isCanDrag:Z

.field private isCheckLeftAndRight:Z

.field private isCheckTopAndBottom:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInitScale:F

.field private mIsAutoScaling:Z

.field private mLastPointCount:I

.field private mLastY:F

.field private mLatX:F

.field mMartixValue:[F

.field private mMidScale:F

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field mScaleMatrix:Landroid/graphics/Matrix;

.field private mTouchSlop:I

.field once:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 32
    iput p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    const/high16 p2, 0x40000000    # 2.0f

    .line 36
    iput p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mMidScale:F

    const/4 p2, 0x0

    .line 41
    iput-object p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    const/16 p2, 0x9

    new-array p2, p2, [F

    .line 64
    iput-object p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mMartixValue:[F

    const/4 p2, 0x1

    .line 278
    iput-boolean p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->once:Z

    .line 76
    sget-object p2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p2}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 77
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 78
    invoke-virtual {p0, p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 81
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mTouchSlop:I

    .line 84
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;

    invoke-direct {p3, p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView$1;-><init>(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mIsAutoScaling:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mIsAutoScaling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mMidScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    return p0
.end method

.method static synthetic access$300(Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->checkBorderAndCenterWhenScale()V

    return-void
.end method

.method private checkBorderAndCenterWhenScale()V
    .locals 10

    .line 345
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v1

    .line 349
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v2

    .line 351
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    int-to-float v4, v1

    cmpl-float v3, v3, v4

    const-string v5, "ZoomImageView"

    const/4 v6, 0x0

    const-string v7, "--"

    if-ltz v3, :cond_1

    .line 352
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_0

    .line 353
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    .line 354
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5bbd\u6709\u95ee\u98981---->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v3, v6

    .line 356
    :goto_0
    iget v8, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v8, v4

    if-gez v8, :cond_2

    .line 358
    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float v3, v4, v3

    .line 359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5bbd\u6709\u95ee\u98982---->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move v3, v6

    .line 362
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 363
    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_3

    .line 364
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v6, v1

    .line 366
    :cond_3
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 367
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v2, v1

    .line 371
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v4

    const-string v8, "\u7ed3\u679c"

    const/high16 v9, 0x3f000000    # 0.5f

    if-gez v1, :cond_5

    mul-float/2addr v4, v9

    .line 373
    iget v1, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, v9

    add-float v3, v4, v1

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5bbd\u6709\u95ee\u98983---->"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    mul-float/2addr v2, v9

    .line 377
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v9

    add-float v6, v2, v1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u6709\u95ee\u98984---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_6
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private checkBorderAndCenterWhenTranslate()V
    .locals 8

    .line 412
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v1

    .line 416
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v2

    .line 418
    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const-string v5, "ZoomImageView"

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckTopAndBottom:Z

    if-eqz v3, :cond_0

    .line 419
    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u4e0a\u9762\u7559\u767d\u8ddd\u79bb---->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move v3, v4

    .line 423
    :goto_0
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v2

    cmpg-float v6, v6, v2

    if-gez v6, :cond_1

    iget-boolean v6, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckTopAndBottom:Z

    if-eqz v6, :cond_1

    .line 424
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, v3

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4e0b\u9762\u7559\u767d\u8ddd\u79bb---->"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckLeftAndRight:Z

    if-eqz v2, :cond_2

    .line 429
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v2

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5de6\u8fb9\u7559\u767d\u8ddd\u79bb---->"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_2
    iget v2, v0, Landroid/graphics/RectF;->right:F

    int-to-float v1, v1

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    iget-boolean v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckLeftAndRight:Z

    if-eqz v2, :cond_3

    .line 434
    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float v4, v1, v2

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53f3\u8fb9\u7559\u767d\u8ddd\u79bb---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method private getMatrixRectF()Landroid/graphics/RectF;
    .locals 5

    .line 386
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 387
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 388
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 396
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v1
.end method

.method private isMoveAction(FF)Z
    .locals 2

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    .line 405
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    iget v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mTouchSlop:I

    int-to-double v0, v0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getScale()F
    .locals 2

    .line 337
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mMartixValue:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 338
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mMartixValue:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 114
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 121
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 7

    .line 285
    iget-boolean v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->once:Z

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v1

    .line 292
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v2

    .line 295
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 296
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    if-le v3, v1, :cond_2

    if-gt v0, v2, :cond_2

    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    :cond_2
    if-le v0, v2, :cond_3

    if-gt v3, v1, :cond_3

    int-to-float v4, v2

    int-to-float v5, v0

    div-float/2addr v4, v5

    :cond_3
    if-le v3, v1, :cond_4

    if-le v0, v2, :cond_4

    int-to-float v4, v1

    int-to-float v5, v3

    div-float/2addr v4, v5

    int-to-float v5, v2

    int-to-float v6, v0

    div-float/2addr v5, v6

    .line 307
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 308
    :cond_4
    iput v4, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    const-string v5, "SSSSS"

    const-string v6, "\u5c06\u56fe\u7247\u79fb\u52a8\u81f3\u5c4f\u5e55\u4e2d\u5fc3"

    .line 309
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v5, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 313
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 314
    iput-boolean v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->once:Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .line 233
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getScale()F

    move-result v0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "matrix scale---->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomImageView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scaleFactor---->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    return v4

    :cond_0
    const/high16 v3, 0x41800000    # 16.0f

    cmpg-float v5, v0, v3

    const/high16 v6, 0x3f800000    # 1.0f

    if-gez v5, :cond_1

    cmpl-float v5, v1, v6

    if-gtz v5, :cond_2

    .line 239
    :cond_1
    iget v5, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    cmpg-float v5, v1, v6

    if-gez v5, :cond_5

    :cond_2
    mul-float v5, v1, v0

    .line 242
    iget v6, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    div-float v1, v6, v0

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u8fdb\u6765\u4e861"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    mul-float v5, v1, v0

    cmpl-float v5, v5, v3

    if-lez v5, :cond_4

    div-float v1, v3, v0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8fdb\u6765\u4e862---->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scaleFactor2---->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    .line 254
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    .line 253
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 255
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->checkBorderAndCenterWhenScale()V

    .line 259
    iget-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_5
    return v4
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 143
    iget-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    .line 155
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v4, v6

    .line 156
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v3, p1

    div-float/2addr v4, v3

    div-float/2addr v5, v3

    .line 162
    iget v3, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastPointCount:I

    if-eq v3, p1, :cond_2

    .line 164
    iput-boolean v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCanDrag:Z

    .line 166
    iput v4, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLatX:F

    .line 167
    iput v5, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastY:F

    .line 170
    :cond_2
    iput p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastPointCount:I

    .line 171
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getMatrixRectF()Landroid/graphics/RectF;

    move-result-object v3

    .line 172
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_b

    if-eq p2, v0, :cond_a

    const/4 v6, 0x2

    if-eq p2, v6, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_a

    goto/16 :goto_2

    .line 184
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p2, p2, v6

    if-gtz p2, :cond_4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p2

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float p2, p2, v6

    if-lez p2, :cond_5

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 189
    :cond_5
    iget p2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLatX:F

    sub-float p2, v4, p2

    .line 190
    iget v6, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastY:F

    sub-float v6, v5, v6

    .line 192
    iget-boolean v7, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCanDrag:Z

    if-nez v7, :cond_6

    .line 194
    invoke-direct {p0, p2, v6}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isMoveAction(FF)Z

    move-result v7

    iput-boolean v7, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCanDrag:Z

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u79fb\u52a83---->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v7, "ZoomImageView"

    invoke-static {v7, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    iget-boolean p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCanDrag:Z

    if-eqz p1, :cond_9

    .line 198
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 200
    iput-boolean v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckTopAndBottom:Z

    iput-boolean v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckLeftAndRight:Z

    .line 201
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float p1, p1, v7

    if-gez p1, :cond_7

    .line 202
    iput-boolean v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckLeftAndRight:Z

    move p2, v1

    .line 205
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_8

    .line 206
    iput-boolean v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->isCheckTopAndBottom:Z

    goto :goto_1

    :cond_8
    move v1, v6

    .line 209
    :goto_1
    iget-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    invoke-direct {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->checkBorderAndCenterWhenTranslate()V

    .line 212
    iget-object p1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 215
    :cond_9
    iput v4, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLatX:F

    .line 216
    iput v5, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastY:F

    goto :goto_2

    .line 220
    :cond_a
    iput v2, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mLastPointCount:I

    goto :goto_2

    .line 176
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_c

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d

    .line 178
    :cond_c
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    :goto_2
    return v0
.end method

.method public setTranslate()V
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v1

    .line 322
    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v2

    .line 325
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 326
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 327
    iget-object v4, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mInitScale:F

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 329
    iget-object v0, p0, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
