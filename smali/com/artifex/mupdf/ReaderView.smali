.class public Lcom/artifex/mupdf/ReaderView;
.super Landroid/widget/AdapterView;
.source "ReaderView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/view/GestureDetector$OnGestureListener;",
        "Landroid/view/ScaleGestureDetector$OnScaleGestureListener;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final FLING_MARGIN:I = 0x64

.field private static final GAP:I = 0x14

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 1.0f

.field private static final MOVING_DIAGONALLY:I = 0x0

.field private static final MOVING_DOWN:I = 0x4

.field private static final MOVING_LEFT:I = 0x1

.field private static final MOVING_RIGHT:I = 0x2

.field private static final MOVING_UP:I = 0x3


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private final mChildViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrent:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mResetLayout:Z

.field private mScale:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field private mScrollDisabled:Z

.field private final mScroller:Landroid/widget/Scroller;

.field private mScrollerLastX:I

.field private mScrollerLastY:I

.field private mUserInteracting:Z

.field private final mViewCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mXScroll:I

.field private mYScroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 46
    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    .line 61
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 62
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 63
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance p2, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    .line 42
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    iput p2, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    .line 69
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 70
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 71
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroid/util/SparseArray;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    .line 42
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 46
    iput p2, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    .line 77
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 78
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 79
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private addAndMeasureChild(ILandroid/view/View;)V
    .locals 3

    .line 474
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 478
    invoke-virtual {p0, p2, v1, v0, v2}, Lcom/artifex/mupdf/ReaderView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 479
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 480
    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;->measureView(Landroid/view/View;)V

    return-void
.end method

.method private static directionOfTravel(FF)I
    .locals 3

    .line 557
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0

    .line 559
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p0, v2

    cmpl-float p0, v0, p0

    if-lez p0, :cond_3

    cmpl-float p0, p1, v1

    if-lez p0, :cond_2

    const/4 p0, 0x4

    goto :goto_1

    :cond_2
    const/4 p0, 0x3

    :goto_1
    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getCached()Landroid/view/View;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method private getCorrection(Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4

    .line 519
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 520
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private getOrCreateChild(I)Landroid/view/View;
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    invoke-direct {p0}, Lcom/artifex/mupdf/ReaderView;->getCached()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/artifex/mupdf/ReaderView;->addAndMeasureChild(ILandroid/view/View;)V

    .line 468
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/artifex/mupdf/ReaderView;->onChildSetup(ILandroid/view/View;)V

    return-object v0
.end method

.method private getScrollBounds(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p3

    neg-int p1, p1

    .line 497
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getHeight()I

    move-result p3

    sub-int/2addr p3, p4

    neg-int p2, p2

    if-le v0, p1, :cond_0

    add-int/2addr v0, p1

    .line 502
    div-int/lit8 v0, v0, 0x2

    move p1, v0

    :cond_0
    if-le p3, p2, :cond_1

    add-int/2addr p3, p2

    .line 503
    div-int/lit8 p3, p3, 0x2

    move p2, p3

    .line 505
    :cond_1
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, v0, p3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p4
.end method

.method private getScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 512
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr v0, v1

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    add-int/2addr v1, v2

    .line 514
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr v2, v3

    .line 515
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v3, p1

    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    add-int/2addr v3, p1

    .line 512
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/artifex/mupdf/ReaderView;->getScrollBounds(IIII)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 487
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 488
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    mul-float/2addr v3, v0

    float-to-int v0, v3

    or-int/2addr v0, v2

    .line 490
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private postSettle(Landroid/view/View;)V
    .locals 1

    .line 527
    new-instance v0, Lcom/artifex/mupdf/ReaderView$1;

    invoke-direct {v0, p0, p1}, Lcom/artifex/mupdf/ReaderView$1;-><init>(Lcom/artifex/mupdf/ReaderView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postUnsettle(Landroid/view/View;)V
    .locals 1

    .line 535
    new-instance v0, Lcom/artifex/mupdf/ReaderView$2;

    invoke-direct {v0, p0, p1}, Lcom/artifex/mupdf/ReaderView$2;-><init>(Lcom/artifex/mupdf/ReaderView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private slideViewOntoScreen(Landroid/view/View;)V
    .locals 7

    .line 543
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->getScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->getCorrection(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p1

    .line 544
    iget v0, p1, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 545
    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastY:I

    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastX:I

    .line 546
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Point;->x:I

    iget v5, p1, Landroid/graphics/Point;->y:I

    const/16 v6, 0x190

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 547
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private subScreenSizeOffset(Landroid/view/View;)Landroid/graphics/Point;
    .locals 4

    .line 552
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 553
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static withinBoundsInDirectionOfTravel(Landroid/graphics/Rect;FF)Z
    .locals 2

    .line 566
    invoke-static {p1, p2}, Lcom/artifex/mupdf/ReaderView;->directionOfTravel(FF)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 571
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ltz p0, :cond_0

    move p2, v0

    :cond_0
    return p2

    .line 572
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 570
    :cond_2
    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-gtz p0, :cond_3

    move p2, v0

    :cond_3
    return p2

    .line 569
    :cond_4
    iget p0, p0, Landroid/graphics/Rect;->right:I

    if-ltz p0, :cond_5

    move p2, v0

    :cond_5
    return p2

    .line 568
    :cond_6
    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-gtz p0, :cond_7

    move p2, v0

    :cond_7
    return p2

    .line 567
    :cond_8
    invoke-virtual {p0, p2, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getDisplayedView()Landroid/view/View;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public getDisplayedViewIndex()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public moveToNext()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->slideViewOntoScreen(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public moveToPrevious()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->slideViewOntoScreen(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onChildSetup(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 151
    iget-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScrollDisabled:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_4

    .line 156
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->getScrollBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 157
    invoke-static {p3, p4}, Lcom/artifex/mupdf/ReaderView;->directionOfTravel(FF)I

    move-result v0

    if-eq v0, p2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_3

    .line 172
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 175
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->slideViewOntoScreen(Landroid/view/View;)V

    return p2

    .line 159
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 164
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->slideViewOntoScreen(Landroid/view/View;)V

    return p2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 181
    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastY:I

    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastX:I

    .line 191
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/16 v2, -0x64

    .line 192
    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 194
    invoke-static {p1, p3, p4}, Lcom/artifex/mupdf/ReaderView;->withinBoundsInDirectionOfTravel(Landroid/graphics/Rect;FF)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    float-to-int v4, p3

    float-to-int v5, p4

    iget v6, p1, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 197
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return p2
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 306
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 308
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 311
    iget-boolean p2, p0, Lcom/artifex/mupdf/ReaderView;->mResetLayout:Z

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p2, :cond_5

    if-eqz p1, :cond_1

    .line 314
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->subScreenSizeOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p5, v0

    iget v0, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p5, v0

    add-int/lit8 p5, p5, 0xa

    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr p5, v0

    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p5, v0, :cond_0

    iget p5, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/2addr p5, p4

    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p5, v0, :cond_0

    .line 318
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->postUnsettle(Landroid/view/View;)V

    .line 321
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    .line 323
    iget p5, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/2addr p5, p4

    iput p5, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    .line 324
    invoke-virtual {p0, p5}, Lcom/artifex/mupdf/ReaderView;->onMoveToChild(I)V

    .line 327
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p5

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p5, p2

    add-int/lit8 p5, p5, -0xa

    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr p5, p2

    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    if-lt p5, p2, :cond_1

    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    if-lez p2, :cond_1

    .line 328
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->postUnsettle(Landroid/view/View;)V

    .line 331
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    .line 333
    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    .line 334
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/ReaderView;->onMoveToChild(I)V

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 340
    new-array p2, p1, [I

    move p5, p3

    :goto_0
    if-ge p5, p1, :cond_2

    .line 342
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    aput v0, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    move p5, p3

    :goto_1
    if-ge p5, p1, :cond_7

    .line 345
    aget v0, p2, p5

    .line 346
    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_4

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 348
    iget-object v2, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {p0, v1}, Lcom/artifex/mupdf/ReaderView;->removeViewInLayout(Landroid/view/View;)V

    .line 350
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 354
    :cond_5
    iput-boolean p3, p0, Lcom/artifex/mupdf/ReaderView;->mResetLayout:Z

    .line 355
    iput p3, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    iput p3, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    .line 358
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move p2, p3

    :goto_2
    if-ge p2, p1, :cond_6

    .line 360
    iget-object p5, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    .line 361
    invoke-direct {p0, p5}, Lcom/artifex/mupdf/ReaderView;->postUnsettle(Landroid/view/View;)V

    .line 362
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mViewCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0, p5}, Lcom/artifex/mupdf/ReaderView;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 365
    :cond_6
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 367
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    .line 372
    :cond_7
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    move p1, p4

    goto :goto_3

    :cond_8
    move p1, p3

    .line 373
    :goto_3
    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;->getOrCreateChild(I)Landroid/view/View;

    move-result-object p2

    .line 377
    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;->subScreenSizeOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p5

    if-eqz p1, :cond_9

    .line 380
    iget p1, p5, Landroid/graphics/Point;->x:I

    .line 381
    iget v0, p5, Landroid/graphics/Point;->y:I

    goto :goto_4

    .line 384
    :cond_9
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr p1, v0

    .line 385
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    add-int/2addr v0, v1

    .line 388
    :goto_4
    iput p3, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    iput p3, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    .line 389
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    .line 390
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 392
    iget-boolean v2, p0, Lcom/artifex/mupdf/ReaderView;->mUserInteracting:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 393
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/artifex/mupdf/ReaderView;->getScrollBounds(IIII)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/artifex/mupdf/ReaderView;->getCorrection(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 394
    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p3, v3

    .line 395
    iget v3, v2, Landroid/graphics/Point;->x:I

    add-int/2addr p1, v3

    .line 396
    iget v3, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    .line 397
    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_5

    .line 398
    :cond_a
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_b

    .line 401
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/artifex/mupdf/ReaderView;->getScrollBounds(IIII)Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/artifex/mupdf/ReaderView;->getCorrection(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 402
    iget v3, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v3

    .line 403
    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_5
    add-int/2addr v1, v2

    .line 406
    :cond_b
    invoke-virtual {p2, p1, v0, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 408
    iget p2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    if-lez p2, :cond_c

    sub-int/2addr p2, p4

    .line 409
    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;->getOrCreateChild(I)Landroid/view/View;

    move-result-object p2

    .line 410
    invoke-direct {p0, p2}, Lcom/artifex/mupdf/ReaderView;->subScreenSizeOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v2

    .line 411
    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    .line 412
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v3, p1, v3

    sub-int/2addr v3, v2

    add-int v4, v1, v0

    .line 413
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr p1, v2

    .line 415
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 412
    invoke-virtual {p2, v3, v5, p1, v4}, Landroid/view/View;->layout(IIII)V

    .line 418
    :cond_c
    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/2addr p1, p4

    iget-object p2, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    if-ge p1, p2, :cond_d

    .line 419
    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    add-int/2addr p1, p4

    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->getOrCreateChild(I)Landroid/view/View;

    move-result-object p1

    .line 420
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->subScreenSizeOffset(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p2

    .line 421
    iget p4, p5, Landroid/graphics/Point;->x:I

    add-int/lit8 p4, p4, 0x14

    iget p2, p2, Landroid/graphics/Point;->x:I

    add-int/2addr p4, p2

    add-int p2, p3, p4

    add-int/2addr v1, v0

    .line 423
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    sub-int p5, v1, p5

    div-int/lit8 p5, p5, 0x2

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p3, v0

    add-int/2addr p3, p4

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr v1, p4

    div-int/lit8 v1, v1, 0x2

    .line 422
    invoke-virtual {p1, p2, p5, p3, v1}, Landroid/view/View;->layout(IIII)V

    .line 428
    :cond_d
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->invalidate()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 296
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    .line 298
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 300
    invoke-virtual {p0, p2}, Lcom/artifex/mupdf/ReaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->measureView(Landroid/view/View;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMoveToChild(I)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 225
    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    .line 226
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/artifex/mupdf/ReaderView;->mScale:F

    div-float/2addr v1, v0

    .line 229
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v2, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 233
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget v3, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    add-int/2addr v0, v3

    sub-int/2addr p1, v0

    .line 235
    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float v4, v2, v1

    sub-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    int-to-float v0, v3

    int-to-float p1, p1

    mul-float/2addr v1, p1

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 236
    iput p1, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    .line 237
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScaling:Z

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    .line 250
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScrollDisabled:Z

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/4 p1, 0x0

    .line 255
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScaling:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 209
    iget-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScrollDisabled:Z

    if-nez p1, :cond_0

    .line 210
    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    int-to-float p1, p1

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    .line 211
    iget p1, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    int-to-float p1, p1

    sub-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    .line 212
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onSettle(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 263
    iget-boolean v0, p0, Lcom/artifex/mupdf/ReaderView;->mScaling:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 267
    iput-boolean v1, p0, Lcom/artifex/mupdf/ReaderView;->mUserInteracting:Z

    .line 269
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_3

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mScrollDisabled:Z

    .line 271
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mUserInteracting:Z

    .line 273
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v0, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 275
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->slideViewOntoScreen(Landroid/view/View;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/ReaderView;->postSettle(Landroid/view/View;)V

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    return v1
.end method

.method protected onUnsettle(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public resetupChildren()V
    .locals 3

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lcom/artifex/mupdf/ReaderView;->onChildSetup(ILandroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 127
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/artifex/mupdf/ReaderView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 129
    iget v2, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    iget v3, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastX:I

    sub-int v3, v0, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/artifex/mupdf/ReaderView;->mXScroll:I

    .line 130
    iget v2, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    iget v3, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastY:I

    sub-int v3, v1, v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/artifex/mupdf/ReaderView;->mYScroll:I

    .line 131
    iput v0, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastX:I

    .line 132
    iput v1, p0, Lcom/artifex/mupdf/ReaderView;->mScrollerLastY:I

    .line 133
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    .line 134
    invoke-virtual {p0, p0}, Lcom/artifex/mupdf/ReaderView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/artifex/mupdf/ReaderView;->mUserInteracting:Z

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    iget v1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 140
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/ReaderView;->postSettle(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    .line 445
    iget-object p1, p0, Lcom/artifex/mupdf/ReaderView;->mChildViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 446
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->removeAllViewsInLayout()V

    .line 447
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    return-void
.end method

.method public setDisplayedViewIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/artifex/mupdf/ReaderView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    iput p1, p0, Lcom/artifex/mupdf/ReaderView;->mCurrent:I

    .line 89
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/ReaderView;->onMoveToChild(I)V

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/artifex/mupdf/ReaderView;->mResetLayout:Z

    .line 91
    invoke-virtual {p0}, Lcom/artifex/mupdf/ReaderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 452
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
