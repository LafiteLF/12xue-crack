.class public abstract Landroids/views/ScrollPickerView;
.super Landroid/view/View;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroids/views/ScrollPickerView$OnSelectedListener;,
        Landroids/views/ScrollPickerView$FlingOnGestureListener;,
        Landroids/views/ScrollPickerView$SlotInterpolator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final sAutoScrollInterpolator:Landroids/views/ScrollPickerView$SlotInterpolator;


# instance fields
.field private mAutoScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCanTap:Z

.field private mCenterItemBackground:Landroid/graphics/drawable/Drawable;

.field private mCenterPoint:I

.field private mCenterPosition:I

.field private mCenterX:I

.field private mCenterY:I

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mDisallowInterceptTouch:Z

.field private mDisallowTouch:Z

.field private mDrawAllItem:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsAutoScrolling:Z

.field private mIsCirculation:Z

.field private mIsFling:Z

.field private mIsHorizontal:Z

.field private mIsInertiaScroll:Z

.field private mIsMovingCenter:Z

.field private mItemHeight:I

.field private mItemSize:I

.field private mItemWidth:I

.field private mLastMoveX:F

.field private mLastMoveY:F

.field private mLastScrollX:I

.field private mLastScrollY:I

.field private mListener:Landroids/views/ScrollPickerView$OnSelectedListener;

.field private mMoveLength:F

.field private mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mSelected:I

.field private mSelectedOnTouch:I

.field private mVisibleItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 493
    new-instance v0, Landroids/views/ScrollPickerView$SlotInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroids/views/ScrollPickerView$SlotInterpolator;-><init>(Landroids/views/ScrollPickerView$1;)V

    sput-object v0, Landroids/views/ScrollPickerView;->sAutoScrollInterpolator:Landroids/views/ScrollPickerView$SlotInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, v0}, Landroids/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 36
    iput p1, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsInertiaScroll:Z

    .line 39
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    const/4 p3, 0x0

    .line 45
    iput-boolean p3, p0, Landroids/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    .line 49
    iput p3, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    .line 50
    iput p3, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    const/4 v0, -0x1

    .line 52
    iput v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 68
    iput p3, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 69
    iput p3, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 71
    iput-boolean p3, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 76
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mCanTap:Z

    .line 78
    iput-boolean p3, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    .line 80
    iput-boolean p3, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    .line 491
    iput-boolean p3, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 89
    new-instance p3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroids/views/ScrollPickerView$FlingOnGestureListener;

    invoke-direct {v2, p0, v0}, Landroids/views/ScrollPickerView$FlingOnGestureListener;-><init>(Landroids/views/ScrollPickerView;Landroids/views/ScrollPickerView$1;)V

    invoke-direct {p3, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Landroids/views/ScrollPickerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 91
    new-instance p3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 p3, 0x2

    new-array p3, p3, [I

    .line 92
    fill-array-data p3, :array_0

    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    .line 94
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Landroids/views/ScrollPickerView;->mPaint:Landroid/graphics/Paint;

    .line 95
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    invoke-direct {p0, p2}, Landroids/views/ScrollPickerView;->init(Landroid/util/AttributeSet;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Landroids/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    return p0
.end method

.method static synthetic access$1100(Landroids/views/ScrollPickerView;FF)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroids/views/ScrollPickerView;->fling(FF)V

    return-void
.end method

.method static synthetic access$1200(Landroids/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    return p0
.end method

.method static synthetic access$1202(Landroids/views/ScrollPickerView;I)I
    .locals 0

    .line 34
    iput p1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    return p1
.end method

.method static synthetic access$1300(Landroids/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    return p0
.end method

.method static synthetic access$1400(Landroids/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    return p0
.end method

.method static synthetic access$1500(Landroids/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroids/views/ScrollPickerView;->mCanTap:Z

    return p0
.end method

.method static synthetic access$1600(Landroids/views/ScrollPickerView;)I
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    return p0
.end method

.method static synthetic access$1700()Landroids/views/ScrollPickerView$SlotInterpolator;
    .locals 1

    .line 34
    sget-object v0, Landroids/views/ScrollPickerView;->sAutoScrollInterpolator:Landroids/views/ScrollPickerView$SlotInterpolator;

    return-object v0
.end method

.method static synthetic access$1800(Landroids/views/ScrollPickerView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->moveToCenter()V

    return-void
.end method

.method static synthetic access$200(Landroids/views/ScrollPickerView;IIF)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroids/views/ScrollPickerView;->computeScroll(IIF)V

    return-void
.end method

.method static synthetic access$302(Landroids/views/ScrollPickerView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    return p1
.end method

.method static synthetic access$402(Landroids/views/ScrollPickerView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    return p1
.end method

.method static synthetic access$500(Landroids/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroids/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return p0
.end method

.method static synthetic access$600(Landroids/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    return p0
.end method

.method static synthetic access$602(Landroids/views/ScrollPickerView;F)F
    .locals 0

    .line 34
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    return p1
.end method

.method static synthetic access$700(Landroids/views/ScrollPickerView;)F
    .locals 0

    .line 34
    iget p0, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    return p0
.end method

.method static synthetic access$702(Landroids/views/ScrollPickerView;F)F
    .locals 0

    .line 34
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    return p1
.end method

.method static synthetic access$800(Landroids/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroids/views/ScrollPickerView;->mIsInertiaScroll:Z

    return p0
.end method

.method static synthetic access$900(Landroids/views/ScrollPickerView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    return p0
.end method

.method private checkCirculation()V
    .locals 6

    .line 358
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_4

    int-to-float v2, v1

    div-float v2, v0, v2

    float-to-int v2, v2

    .line 361
    iget v5, p0, Landroids/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v5, v2

    iput v5, p0, Landroids/views/ScrollPickerView;->mSelected:I

    if-gez v5, :cond_3

    .line 363
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    if-ltz v0, :cond_0

    .line 367
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto/16 :goto_0

    .line 369
    :cond_1
    iput v4, p0, Landroids/views/ScrollPickerView;->mSelected:I

    int-to-float v0, v1

    .line 370
    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 371
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_2

    .line 372
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 374
    :cond_2
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_9

    .line 375
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    invoke-direct {p0, v0, v4}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_3
    int-to-float v2, v1

    sub-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    .line 379
    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    :cond_4
    neg-int v2, v1

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_9

    neg-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 385
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iput v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    .line 386
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_8

    .line 387
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v0, :cond_6

    .line 389
    :cond_5
    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    iget-object v1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    .line 390
    iget-object v1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 391
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    .line 393
    :cond_6
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    .line 394
    iget v0, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 395
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_7

    .line 396
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 398
    :cond_7
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_9

    .line 399
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    invoke-direct {p0, v0, v4}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 403
    :cond_8
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    int-to-float v2, v1

    add-float/2addr v0, v2

    int-to-float v1, v1

    rem-float/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    :cond_9
    :goto_0
    return-void
.end method

.method private computeScroll(IIF)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p3, p2

    if-gez p2, :cond_1

    .line 283
    iget-boolean p2, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p2, :cond_0

    .line 285
    iget p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    int-to-float p3, p1

    add-float/2addr p2, p3

    iget p3, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 286
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    goto :goto_0

    .line 289
    :cond_0
    iget p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    int-to-float p3, p1

    add-float/2addr p2, p3

    iget p3, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iput p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 290
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 292
    :goto_0
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->checkCirculation()V

    .line 293
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 296
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 297
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 300
    iget p1, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_3

    .line 301
    iget p3, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 302
    iput p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_2
    int-to-float p1, p3

    .line 304
    iput p1, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_3
    neg-float p1, p1

    .line 307
    iget p3, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    div-int/lit8 v0, p3, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    .line 308
    iput p2, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    :cond_4
    neg-int p1, p3

    int-to-float p1, p1

    .line 310
    iput p1, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 313
    :goto_1
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->checkCirculation()V

    .line 314
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->notifySelected()V

    .line 315
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    :goto_2
    return-void
.end method

.method private fling(FF)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 466
    iget-boolean v3, v0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    float-to-int v6, v1

    .line 467
    iput v6, v0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 468
    iput-boolean v4, v0, Landroids/views/ScrollPickerView;->mIsFling:Z

    .line 470
    iget-object v5, v0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v7, 0x0

    float-to-int v8, v2

    const/4 v9, 0x0

    iget v1, v0, Landroids/views/ScrollPickerView;->mItemWidth:I

    mul-int/lit8 v10, v1, -0xa

    mul-int/lit8 v11, v1, 0xa

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    :cond_0
    float-to-int v1, v1

    .line 473
    iput v1, v0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 474
    iput-boolean v4, v0, Landroids/views/ScrollPickerView;->mIsFling:Z

    .line 476
    iget-object v14, v0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    const/4 v15, 0x0

    const/16 v17, 0x0

    float-to-int v2, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v3, v0, Landroids/views/ScrollPickerView;->mItemHeight:I

    mul-int/lit8 v21, v3, -0xa

    mul-int/lit8 v22, v3, 0xa

    move/from16 v16, v1

    move/from16 v18, v2

    invoke-virtual/range {v14 .. v22}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 479
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 106
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_center_item_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_center_item_background:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->setCenterItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_visible_item_count:I

    .line 111
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getVisibleItemCount()I

    move-result v1

    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->setVisibleItemCount(I)V

    .line 112
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_center_item_position:I

    .line 114
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getCenterPosition()I

    move-result v1

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->setCenterPosition(I)V

    .line 115
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_is_circulation:I

    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->isIsCirculation()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->setIsCirculation(Z)V

    .line 116
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_disallow_intercept_touch:I

    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->isDisallowInterceptTouch()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->setDisallowInterceptTouch(Z)V

    .line 117
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->ScrollPickerView_spv_orientation:I

    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Landroids/views/ScrollPickerView;->setHorizontal(Z)V

    .line 118
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method private moveToCenter()V
    .locals 5

    .line 411
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    if-nez v0, :cond_8

    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->cancelScroll()V

    .line 417
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_4

    .line 418
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v1, :cond_2

    .line 419
    iget v1, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 420
    invoke-direct {p0, v0, v2}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-direct {p0, v0, v1}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 425
    :cond_2
    iget v1, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 426
    invoke-direct {p0, v0, v2}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 428
    :cond_3
    invoke-direct {p0, v0, v1}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    .line 432
    :cond_4
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v1, :cond_6

    neg-float v1, v0

    .line 433
    iget v3, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 434
    invoke-direct {p0, v0, v2}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_5
    neg-int v1, v3

    .line 436
    invoke-direct {p0, v0, v1}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_6
    neg-float v1, v0

    .line 439
    iget v3, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    div-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_7

    .line 440
    invoke-direct {p0, v0, v2}, Landroids/views/ScrollPickerView;->scroll(FI)V

    goto :goto_0

    :cond_7
    neg-int v1, v3

    .line 442
    invoke-direct {p0, v0, v1}, Landroids/views/ScrollPickerView;->scroll(FI)V

    :cond_8
    :goto_0
    return-void
.end method

.method private notifySelected()V
    .locals 2

    const/4 v0, 0x0

    .line 483
    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 484
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->cancelScroll()V

    .line 485
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mListener:Landroids/views/ScrollPickerView$OnSelectedListener;

    if-eqz v0, :cond_0

    .line 487
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    invoke-interface {v0, p0, v1}, Landroids/views/ScrollPickerView$OnSelectedListener;->onSelected(Landroids/views/ScrollPickerView;I)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 5

    .line 194
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    if-gez v0, :cond_0

    .line 195
    iget v0, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    .line 198
    :cond_0
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    .line 200
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/2addr v0, v2

    iput v0, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    .line 202
    iput v1, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    .line 203
    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    mul-int/2addr v1, v0

    iput v1, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    .line 205
    iput v0, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    .line 206
    iput v1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    div-int/2addr v0, v2

    iput v0, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    .line 209
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    .line 211
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    mul-int/2addr v0, v2

    iput v0, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    .line 212
    iput v1, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    .line 214
    iput v2, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    .line 215
    iput v0, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    .line 218
    :goto_0
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 219
    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    iget v2, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    iget v3, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v3, v1

    iget v4, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method private scroll(FI)V
    .locals 3

    .line 450
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    float-to-int p1, p1

    .line 451
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 452
    iput-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 453
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 454
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    .line 456
    iput p1, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 457
    iput-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    .line 458
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 459
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 461
    :goto_0
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method


# virtual methods
.method public autoScrollFast(IJ)V
    .locals 7

    const v0, 0x3f19999a    # 0.6f

    .line 554
    invoke-virtual {p0, v0}, Landroids/views/ScrollPickerView;->dip2px(F)I

    move-result v0

    int-to-float v5, v0

    .line 555
    sget-object v6, Landroids/views/ScrollPickerView;->sAutoScrollInterpolator:Landroids/views/ScrollPickerView$SlotInterpolator;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    invoke-virtual/range {v1 .. v6}, Landroids/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public autoScrollFast(IJF)V
    .locals 6

    .line 564
    sget-object v5, Landroids/views/ScrollPickerView;->sAutoScrollInterpolator:Landroids/views/ScrollPickerView$SlotInterpolator;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroids/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public autoScrollFast(IJFLandroid/view/animation/Interpolator;)V
    .locals 5

    .line 503
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->cancelScroll()V

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    long-to-float v1, p2

    mul-float/2addr p4, v1

    float-to-int p4, p4

    int-to-float v1, p4

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    .line 511
    iget-object v3, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-gtz v1, :cond_1

    move v1, v0

    .line 514
    :cond_1
    iget-object v3, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v1, v3

    iget v3, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v1, v3

    iget v4, p0, Landroids/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v4, p1

    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    .line 515
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v3, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr p1, v3

    add-int/2addr p1, v1

    sub-int v3, p4, v1

    .line 517
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr p4, p1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    if-ge v3, p4, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    .line 519
    :goto_0
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 520
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 p4, 0x2

    new-array p4, p4, [I

    const/4 v3, 0x0

    aput v3, p4, v3

    aput v1, p4, v0

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 521
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 522
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 523
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    if-eqz v1, :cond_3

    .line 525
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroids/views/ScrollPickerView$1;

    invoke-direct {p2, p0, v1}, Landroids/views/ScrollPickerView$1;-><init>(Landroids/views/ScrollPickerView;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 533
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 534
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroids/views/ScrollPickerView$2;

    invoke-direct {p2, p0}, Landroids/views/ScrollPickerView$2;-><init>(Landroids/views/ScrollPickerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 543
    :cond_3
    invoke-direct {p0, v1, v1, v2}, Landroids/views/ScrollPickerView;->computeScroll(IIF)V

    .line 544
    iput-boolean v3, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V
    .locals 4

    .line 587
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 590
    :cond_0
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v1, 0x1

    xor-int/2addr p5, v1

    .line 591
    iput-boolean p5, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    .line 592
    iput-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 593
    iget-object p5, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 594
    iget-object p5, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    aput p1, v2, v1

    invoke-virtual {p5, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 595
    iget-object p5, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p5, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    iget-object p4, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 597
    iget-object p2, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 598
    iget-object p2, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroids/views/ScrollPickerView$3;

    invoke-direct {p3, p0, p1}, Landroids/views/ScrollPickerView$3;-><init>(Landroids/views/ScrollPickerView;I)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 606
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 607
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroids/views/ScrollPickerView$4;

    invoke-direct {p2, p0, v0}, Landroids/views/ScrollPickerView$4;-><init>(Landroids/views/ScrollPickerView;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public autoScrollToPosition(IJLandroid/view/animation/Interpolator;)V
    .locals 7

    .line 575
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 576
    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v0, p1

    iget p1, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    mul-int v2, v0, p1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v3, p2

    move-object v5, p4

    .line 577
    invoke-virtual/range {v1 .. v6}, Landroids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public cancelScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 349
    iput v0, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 350
    iput v0, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 351
    iput-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    iput-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    .line 352
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 353
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->stopAutoScroll()V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 322
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz v0, :cond_0

    .line 325
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget-object v1, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_0

    .line 328
    :cond_0
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget-object v1, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 330
    :goto_0
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mLastScrollY:I

    .line 331
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mLastScrollX:I

    .line 332
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->checkCirculation()V

    .line 333
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    goto :goto_1

    .line 335
    :cond_1
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 336
    iput-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    .line 337
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 338
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->notifySelected()V

    goto :goto_1

    .line 340
    :cond_2
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->moveToCenter()V

    goto :goto_1

    .line 342
    :cond_3
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    if-eqz v0, :cond_4

    .line 343
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->notifySelected()V

    :cond_4
    :goto_1
    return-void
.end method

.method public dip2px(F)I
    .locals 1

    .line 953
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 954
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public abstract drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "TT;>;IIFF)V"
        }
    .end annotation
.end method

.method public getCenterItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 869
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCenterPoint()I
    .locals 1

    .line 814
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    return v0
.end method

.method public getCenterPosition()I
    .locals 1

    .line 853
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    return v0
.end method

.method public getCenterX()I
    .locals 1

    .line 800
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .line 807
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    return v0
.end method

.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    return-object v0
.end method

.method public getItemHeight()I
    .locals 1

    .line 782
    iget v0, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    return v0
.end method

.method public getItemSize()I
    .locals 1

    .line 793
    iget v0, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    return v0
.end method

.method public getItemWidth()I
    .locals 1

    .line 786
    iget v0, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    return v0
.end method

.method public getListener()Landroids/views/ScrollPickerView$OnSelectedListener;
    .locals 1

    .line 741
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mListener:Landroids/views/ScrollPickerView$OnSelectedListener;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 719
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 723
    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    return v0
.end method

.method public getVisibleItemCount()I
    .locals 1

    .line 765
    iget v0, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    return v0
.end method

.method public isAutoScrolling()Z
    .locals 1

    .line 885
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    return v0
.end method

.method public isCanTap()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mCanTap:Z

    return v0
.end method

.method public isDisallowInterceptTouch()Z
    .locals 1

    .line 761
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return v0
.end method

.method public isDisallowTouch()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    return v0
.end method

.method public isDrawAllItem()Z
    .locals 1

    .line 938
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    return v0
.end method

.method public isFling()Z
    .locals 1

    .line 877
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    return v0
.end method

.method public isHorizontal()Z
    .locals 1

    .line 902
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    return v0
.end method

.method public isInertiaScroll()Z
    .locals 1

    .line 745
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsInertiaScroll:Z

    return v0
.end method

.method public isIsCirculation()Z
    .locals 1

    .line 753
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    return v0
.end method

.method public isMovingCenter()Z
    .locals 1

    .line 881
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 873
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsFling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsMovingCenter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVertical()Z
    .locals 1

    .line 906
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 126
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 131
    :cond_0
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_1
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 138
    iget-object v1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    if-eqz v1, :cond_2

    .line 140
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    :goto_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    .line 145
    iget-boolean v2, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    if-nez v2, :cond_3

    iget v2, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_6

    .line 146
    :cond_3
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    sub-int v2, v1, v0

    if-gez v2, :cond_4

    iget-object v1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v2

    :cond_4
    sub-int/2addr v1, v0

    move v5, v1

    .line 149
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v1, :cond_5

    .line 150
    iget-object v4, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    neg-int v6, v0

    iget v7, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    sub-float v8, v1, v2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Landroids/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    goto :goto_1

    .line 151
    :cond_5
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    sub-int/2addr v1, v0

    if-ltz v1, :cond_6

    .line 152
    iget-object v4, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    neg-int v6, v0

    iget v7, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v7

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    sub-float v8, v1, v2

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Landroids/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    .line 155
    :cond_6
    :goto_1
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    if-nez v1, :cond_7

    iget v1, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    iget v2, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_a

    .line 156
    :cond_7
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_8

    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_8
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    :goto_2
    move v4, v1

    .line 159
    iget-boolean v1, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    if-eqz v1, :cond_9

    .line 160
    iget-object v3, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v6, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float v7, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Landroids/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    goto :goto_3

    .line 161
    :cond_9
    iget v1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 162
    iget-object v3, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v6, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v1, v1

    add-float/2addr v1, v6

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    add-float v7, v1, v2

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v7}, Landroids/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    :cond_a
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 167
    :cond_b
    iget-object v3, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    iget v4, p0, Landroids/views/ScrollPickerView;->mSelected:I

    const/4 v5, 0x0

    iget v6, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterPoint:I

    int-to-float v0, v0

    add-float v7, v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroids/views/ScrollPickerView;->drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V

    :cond_c
    :goto_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 184
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 190
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 228
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    iput v0, p0, Landroids/views/ScrollPickerView;->mSelectedOnTouch:I

    .line 238
    :goto_0
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 242
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto/16 :goto_2

    .line 245
    :cond_3
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    const v2, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_5

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    return v1

    .line 249
    :cond_4
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    return v1

    .line 254
    :cond_6
    iget v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    .line 256
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    .line 258
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->checkCirculation()V

    .line 259
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    goto :goto_2

    .line 262
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroids/views/ScrollPickerView;->mLastMoveY:F

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Landroids/views/ScrollPickerView;->mLastMoveX:F

    .line 264
    iget p1, p0, Landroids/views/ScrollPickerView;->mMoveLength:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    .line 265
    iget p1, p0, Landroids/views/ScrollPickerView;->mSelectedOnTouch:I

    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    if-eq p1, v0, :cond_9

    .line 266
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->notifySelected()V

    goto :goto_2

    .line 269
    :cond_8
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->moveToCenter()V

    :cond_9
    :goto_2
    return v1
.end method

.method public setCanTap(Z)V
    .locals 0

    .line 898
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mCanTap:Z

    return-void
.end method

.method public setCenterItemBackground(I)V
    .locals 4

    .line 863
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 864
    iget p1, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v2, p1

    iget v3, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 865
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setCenterItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 857
    iput-object p1, p0, Landroids/views/ScrollPickerView;->mCenterItemBackground:Landroid/graphics/drawable/Drawable;

    .line 858
    iget v0, p0, Landroids/views/ScrollPickerView;->mCenterX:I

    iget v1, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    iget v2, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    add-int/2addr v2, v0

    iget v3, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 859
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setCenterPosition(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 837
    iput p1, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    goto :goto_0

    .line 838
    :cond_0
    iget v0, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 839
    iput v0, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    goto :goto_0

    .line 841
    :cond_1
    iput p1, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    .line 843
    :goto_0
    iget p1, p0, Landroids/views/ScrollPickerView;->mCenterPosition:I

    iget v0, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    mul-int/2addr p1, v0

    iput p1, p0, Landroids/views/ScrollPickerView;->mCenterY:I

    .line 844
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 709
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    goto :goto_0

    .line 711
    :cond_0
    iput-object p1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    .line 713
    :goto_0
    iget-object p1, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    .line 714
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setDisallowInterceptTouch(Z)V
    .locals 0

    .line 778
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mDisallowInterceptTouch:Z

    return-void
.end method

.method public setDisallowTouch(Z)V
    .locals 0

    .line 827
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mDisallowTouch:Z

    return-void
.end method

.method public setDrawAllItem(Z)V
    .locals 0

    .line 942
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mDrawAllItem:Z

    return-void
.end method

.method public setHorizontal(Z)V
    .locals 1

    .line 910
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 913
    :cond_0
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    .line 914
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->reset()V

    .line 915
    iget-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p1, :cond_1

    .line 916
    iget p1, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    iput p1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    goto :goto_0

    .line 918
    :cond_1
    iget p1, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    iput p1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    .line 920
    :goto_0
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setInertiaScroll(Z)V
    .locals 0

    .line 749
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsInertiaScroll:Z

    return-void
.end method

.method public setIsCirculation(Z)V
    .locals 0

    .line 757
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsCirculation:Z

    return-void
.end method

.method public setOnSelectedListener(Landroids/views/ScrollPickerView$OnSelectedListener;)V
    .locals 0

    .line 737
    iput-object p1, p0, Landroids/views/ScrollPickerView;->mListener:Landroids/views/ScrollPickerView$OnSelectedListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    if-ltz p1, :cond_1

    .line 727
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget v0, p0, Landroids/views/ScrollPickerView;->mSelected:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iput p1, p0, Landroids/views/ScrollPickerView;->mSelected:I

    .line 732
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    .line 733
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->notifySelected()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVertical(Z)V
    .locals 2

    .line 924
    iget-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    xor-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 927
    iput-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    .line 928
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->reset()V

    .line 929
    iget-boolean p1, p0, Landroids/views/ScrollPickerView;->mIsHorizontal:Z

    if-eqz p1, :cond_1

    .line 930
    iget p1, p0, Landroids/views/ScrollPickerView;->mItemWidth:I

    iput p1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    goto :goto_0

    .line 932
    :cond_1
    iget p1, p0, Landroids/views/ScrollPickerView;->mItemHeight:I

    iput p1, p0, Landroids/views/ScrollPickerView;->mItemSize:I

    .line 934
    :goto_0
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 960
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 962
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->moveToCenter()V

    :cond_0
    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 0

    .line 769
    iput p1, p0, Landroids/views/ScrollPickerView;->mVisibleItemCount:I

    .line 770
    invoke-direct {p0}, Landroids/views/ScrollPickerView;->reset()V

    .line 771
    invoke-virtual {p0}, Landroids/views/ScrollPickerView;->invalidate()V

    return-void
.end method

.method public stopAutoScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 623
    iput-boolean v0, p0, Landroids/views/ScrollPickerView;->mIsAutoScrolling:Z

    .line 624
    iget-object v0, p0, Landroids/views/ScrollPickerView;->mAutoScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
