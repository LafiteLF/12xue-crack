.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;
.super Landroid/view/View;
.source "LargeImageView.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ILargeImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;
    }
.end annotation


# instance fields
.field private accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private criticalScaleValueHook:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private drawDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;",
            ">;"
        }
    .end annotation
.end field

.field private firstLoad:Z

.field private fitScale:F

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

.field private imageRect:Landroid/graphics/Rect;

.field private isAttachedWindow:Z

.field private isPlaceHolder:Z

.field private mCanZoom:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

.field private mLevel:I

.field private final mMaximumVelocity:I

.field private final mMinimumVelocity:I

.field private mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private mScale:F

.field private final mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private maxScale:F

.field private minScale:F

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onDoubleClickListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private final paint:Landroid/graphics/Paint;

.field private final scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

.field private simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 64
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    const/4 p2, 0x1

    .line 107
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mCanZoom:Z

    .line 484
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    .line 486
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    .line 488
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->firstLoad:Z

    .line 490
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isPlaceHolder:Z

    .line 748
    new-instance p3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;

    invoke-direct {p3, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 852
    new-instance p3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;

    invoke-direct {p3, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 87
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p3

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 88
    new-instance p3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    invoke-direct {p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;-><init>()V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    .line 89
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setFocusable(Z)V

    const/4 p3, 0x0

    .line 90
    invoke-virtual {p0, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setWillNotDraw(Z)V

    .line 91
    new-instance p3, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->simpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->gestureDetector:Landroid/view/GestureDetector;

    .line 92
    new-instance p3, Landroid/view/ScaleGestureDetector;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {p3, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 94
    new-instance p3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-direct {p3, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    .line 95
    invoke-virtual {p3, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setOnImageLoadListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMinimumVelocity:I

    .line 98
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMaximumVelocity:I

    .line 100
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->paint:Landroid/graphics/Paint;

    const p3, -0x777778

    .line 101
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->initFitImageScale(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F
    .locals 0

    .line 54
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    return p0
.end method

.method static synthetic access$1100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F
    .locals 0

    .line 54
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    return p0
.end method

.method static synthetic access$1200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F
    .locals 0

    .line 54
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    return p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)I
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)I
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;IIIIIIIIZ)Z
    .locals 0

    .line 54
    invoke-direct/range {p0 .. p9}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->fling(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onDoubleClickListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F
    .locals 0

    .line 54
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->fitScale:F

    return p0
.end method

.method private fling(II)Z
    .locals 18

    move-object/from16 v0, p0

    .line 655
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMinimumVelocity:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    .line 658
    :goto_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMinimumVelocity:I

    if-ge v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    .line 661
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v4

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_2

    if-lez v1, :cond_3

    .line 664
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result v7

    if-lt v5, v7, :cond_4

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move v5, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v6

    :goto_3
    if-gtz v4, :cond_5

    if-lez v2, :cond_6

    .line 666
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result v7

    if-lt v4, v7, :cond_7

    if-gez v2, :cond_6

    goto :goto_4

    :cond_6
    move v4, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v6

    :goto_5
    if-nez v4, :cond_9

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move v4, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v4, v6

    :goto_7
    if-eqz v4, :cond_a

    .line 669
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMaximumVelocity:I

    neg-int v5, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 670
    iget v1, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mMaximumVelocity:I

    neg-int v4, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentHeight()I

    move-result v4

    .line 674
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentWidth()I

    move-result v5

    .line 675
    iget-object v7, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v9

    const/4 v12, 0x0

    sub-int/2addr v5, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v14, 0x0

    sub-int/2addr v4, v1

    .line 676
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    div-int/lit8 v16, v2, 0x2

    div-int/lit8 v17, v1, 0x2

    .line 675
    invoke-virtual/range {v7 .. v17}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    return v6

    :cond_a
    return v3
.end method

.method private getContentHeight()I
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getImageWidth()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 381
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getImageHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    :cond_1
    return v1
.end method

.method private getContentWidth()I
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getScrollRangeX()I
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 366
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentWidth()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private getScrollRangeY()I
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 328
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentHeight()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private initFitImageScale(II)V
    .locals 5

    .line 551
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredWidth()I

    move-result v0

    .line 552
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x40800000    # 4.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-le p1, p2, :cond_0

    int-to-float v4, p1

    mul-float/2addr v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    int-to-float v0, v1

    mul-float/2addr v0, v4

    int-to-float v1, p2

    div-float/2addr v0, v1

    .line 554
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->fitScale:F

    mul-float v0, v4, v2

    .line 555
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    div-float/2addr v4, v2

    .line 556
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    cmpl-float v0, v4, v3

    if-lez v0, :cond_2

    .line 558
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    goto :goto_0

    .line 561
    :cond_0
    iput v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->fitScale:F

    const/high16 v4, 0x3e800000    # 0.25f

    .line 562
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    int-to-float v4, p1

    mul-float/2addr v4, v3

    int-to-float v0, v0

    div-float/2addr v4, v0

    .line 563
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    int-to-float v0, v1

    mul-float/2addr v4, v0

    int-to-float v0, p2

    div-float/2addr v4, v0

    .line 565
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 566
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    cmpg-float v0, v1, v2

    if-gez v0, :cond_1

    .line 568
    iput v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    .line 570
    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_2

    .line 571
    iput v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    .line 574
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->criticalScaleValueHook:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;

    if-eqz v0, :cond_3

    .line 575
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;->getMinScale(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;IIF)F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    .line 576
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->criticalScaleValueHook:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;->getMaxScale(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;IIF)F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    :cond_3
    return-void
.end method

.method private notifyInvalidate()V
    .locals 0

    .line 581
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private overScrollByCompat(IIIIIIIIZ)Z
    .locals 3

    .line 609
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result p9

    .line 610
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v0

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    neg-int v1, p7

    add-int/2addr p7, p5

    neg-int p5, p8

    add-int/2addr p8, p6

    const/4 p6, 0x1

    const/4 v2, 0x0

    if-le p3, p7, :cond_0

    move p3, p7

    move p7, p6

    goto :goto_0

    :cond_0
    if-ge p3, v1, :cond_1

    move p7, p6

    move p3, v1

    goto :goto_0

    :cond_1
    move p7, v2

    :goto_0
    if-le p4, p8, :cond_2

    move p5, p6

    move p4, p8

    goto :goto_1

    :cond_2
    if-ge p4, p5, :cond_3

    move p4, p5

    move p5, p6

    goto :goto_1

    :cond_3
    move p5, v2

    :goto_1
    if-gez p3, :cond_4

    move p3, v2

    :cond_4
    if-gez p4, :cond_5

    move p4, v2

    .line 650
    :cond_5
    invoke-virtual {p0, p3, p4, p7, p5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onOverScrolled(IIZZ)V

    .line 651
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result p3

    sub-int/2addr p3, p9

    if-eq p3, p1, :cond_7

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result p1

    sub-int/2addr p1, v0

    if-ne p1, p2, :cond_6

    goto :goto_2

    :cond_6
    move p6, v2

    :cond_7
    :goto_2
    return p6
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 236
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isAttachedWindow:Z

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 241
    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4

    .line 244
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 248
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 251
    :cond_1
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isAttachedWindow:Z

    if-eqz v0, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWindowVisibility()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_3
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 255
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    .line 262
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    :goto_0
    return-void
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result p1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result v2

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result p1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result v2

    if-ge p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result p1

    if-lez p1, :cond_2

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 353
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentWidth()I

    move-result v1

    .line 354
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v2

    sub-int v0, v1, v0

    const/4 v3, 0x0

    .line 355
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v2, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-le v2, v0, :cond_1

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public computeScroll()V
    .locals 11

    .line 125
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 126
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->getCurScale()F

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->getStartX()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->getStartY()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setScale(FII)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v4

    .line 131
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v5

    .line 132
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v1

    if-ne v4, v0, :cond_1

    if-eq v5, v1, :cond_2

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result v7

    .line 136
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result v6

    sub-int v2, v0, v4

    sub-int v3, v1, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    .line 137
    invoke-direct/range {v1 .. v10}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    :cond_3
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .line 344
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 336
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 4

    .line 278
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 279
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentHeight()I

    move-result v1

    .line 280
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v2

    sub-int v0, v1, v0

    const/4 v3, 0x0

    .line 281
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v2, :cond_0

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-le v2, v0, :cond_1

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    :cond_1
    :goto_0
    return v1
.end method

.method public getFitScale()F
    .locals 1

    .line 299
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->fitScale:F

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 317
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    return v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 295
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->maxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 291
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->minScale:F

    return v0
.end method

.method public getOnDoubleClickListener()Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onDoubleClickListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

    return-object v0
.end method

.method public getOnImageLoadListener()Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 890
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    return v0
.end method

.method public hasLoad()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->hasLoad()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 587
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 588
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isAttachedWindow:Z

    .line 589
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public onBlockImageLoadFinished()V
    .locals 3

    .line 494
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    .line 495
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onBlockImageLoadFinished()V

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isPlaceHolder:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_1

    .line 500
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    .line 501
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setScale(FII)V

    return-void

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->firstLoad:Z

    if-eqz v0, :cond_2

    .line 506
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    .line 507
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setScale(FII)V

    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->firstLoad:Z

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 596
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isAttachedWindow:Z

    .line 598
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->stopLoad()V

    .line 599
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 600
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 388
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v6

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getHeight()I

    move-result v7

    if-nez v6, :cond_0

    return-void

    .line 399
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentWidth()I

    move-result v8

    .line 400
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContentHeight()I

    move-result v9

    const/4 v10, 0x0

    if-le v6, v8, :cond_1

    sub-int v2, v6, v8

    .line 402
    div-int/lit8 v2, v2, 0x2

    move v11, v2

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    if-le v7, v9, :cond_2

    sub-int v2, v7, v9

    .line 405
    div-int/lit8 v2, v2, 0x2

    move v12, v2

    goto :goto_1

    :cond_2
    move v12, v10

    .line 407
    :goto_1
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-nez v2, :cond_3

    .line 408
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    add-int/2addr v8, v11

    add-int/2addr v9, v12

    .line 409
    invoke-virtual {v2, v11, v12, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 410
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 416
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v2

    add-int v3, v2, v6

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v4

    add-int v5, v4, v7

    .line 422
    iget v13, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    .line 423
    iget-object v14, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v14}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v13

    .line 429
    iget-object v13, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    sub-int/2addr v2, v10

    int-to-float v2, v2

    mul-float/2addr v2, v14

    move v15, v11

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v2, v10

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 430
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    sub-int/2addr v4, v10

    int-to-float v4, v4

    mul-float/2addr v4, v14

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 431
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v14

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v3, v10

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 432
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    sub-int/2addr v5, v4

    int-to-float v3, v5

    mul-float/2addr v3, v14

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 434
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 438
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->hasLoad()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getWidth()I

    move-result v3

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_5

    .line 439
    :cond_4
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    iget-object v5, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageRect:Landroid/graphics/Rect;

    move v4, v14

    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->loadImageBlocks(Ljava/util/List;FLandroid/graphics/Rect;II)V

    .line 441
    :cond_5
    sget-boolean v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    const-string v4, "debug"

    if-eqz v2, :cond_7

    const-string v2, "debug branch"

    .line 442
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 443
    :goto_2
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    .line 444
    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    .line 445
    iget-object v5, v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    .line 446
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move-object v9, v4

    const/4 v8, 0x0

    int-to-double v3, v8

    add-double/2addr v6, v3

    double-to-int v6, v6

    add-int/2addr v6, v15

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 447
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v3

    double-to-int v6, v6

    add-int/2addr v6, v12

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 448
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v3

    double-to-int v6, v6

    add-int/2addr v6, v15

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 449
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v3

    double-to-int v3, v6

    add-int/2addr v3, v12

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    if-nez v2, :cond_6

    .line 451
    iget-object v3, v9, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 453
    :cond_6
    iget v3, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v5, Landroid/graphics/Rect;->left:I

    .line 454
    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x3

    iput v3, v5, Landroid/graphics/Rect;->top:I

    .line 455
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x3

    iput v3, v5, Landroid/graphics/Rect;->bottom:I

    .line 456
    iget v3, v5, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x3

    iput v3, v5, Landroid/graphics/Rect;->right:I

    .line 458
    iget-object v3, v9, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v9, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    const-string v2, "debug else branch"

    .line 462
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 464
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    add-int v11, v15, v8

    add-int/2addr v9, v12

    move v3, v15

    .line 465
    invoke-virtual {v2, v3, v12, v11, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 466
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_8
    move v3, v15

    .line 469
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->drawDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    .line 470
    iget-object v5, v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    .line 471
    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    move v13, v12

    const/4 v8, 0x0

    int-to-double v11, v8

    add-double/2addr v6, v11

    double-to-int v6, v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 472
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v11

    double-to-int v6, v6

    add-int/2addr v6, v13

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 473
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v11

    double-to-int v6, v6

    add-int/2addr v6, v3

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 474
    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v14

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    add-double/2addr v6, v11

    double-to-int v6, v6

    add-int/2addr v6, v13

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 476
    iget-object v6, v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move v12, v13

    goto :goto_4

    .line 480
    :cond_9
    :goto_5
    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_a
    :goto_6
    return-void
.end method

.method public onLoadFail(Ljava/lang/Exception;)V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onLoadImageSize(II)V
    .locals 2

    .line 517
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    .line 518
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    .line 519
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredWidth()I

    move-result v0

    .line 520
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredHeight()I

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->initFitImageScale(II)V

    goto :goto_1

    .line 522
    :cond_1
    :goto_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->post(Ljava/lang/Runnable;)Z

    .line 531
    :goto_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    .line 532
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_2

    .line 533
    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadImageSize(II)V

    :cond_2
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 685
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 690
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 691
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 692
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->initFitImageScale(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mCanZoom:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setCanZoom(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mCanZoom:Z

    return-void
.end method

.method public setCriticalScaleValueHook(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->criticalScaleValueHook:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$CriticalScaleValueHook;

    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 187
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 225
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    .line 226
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scrollTo(II)V

    .line 228
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setBitmapDecoderFactory(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;)V

    .line 230
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->invalidate()V

    return-void
.end method

.method public setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Landroid/graphics/drawable/Drawable;)V

    .line 220
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isPlaceHolder:Z

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scrollTo(II)V

    .line 205
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 206
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    .line 207
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    .line 208
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onLoadImageSize(II)V

    .line 210
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mDrawableHeight:I

    if-eq v1, p1, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->requestLayout()V

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    :cond_2
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 701
    invoke-super {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnDoubleClickListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;)V
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onDoubleClickListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

    return-void
.end method

.method public setOnImageLoadListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mOnImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    return-void
.end method

.method public setOnLoadStateChangeListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->imageBlockImageLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setOnLoadStateChangeListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 707
    invoke-super {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 708
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setScale(F)V
    .locals 2

    .line 885
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getMeasuredHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setScale(FII)V

    return-void
.end method

.method public setScale(FII)V
    .locals 11

    .line 894
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 897
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    .line 898
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    .line 899
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v4

    .line 900
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v5

    add-int/2addr p2, v4

    int-to-float p2, p2

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float/2addr p2, p1

    float-to-int v2, p2

    add-int/2addr p3, v5

    int-to-float p2, p3

    mul-float/2addr p2, p1

    float-to-int v3, p2

    .line 903
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeX()I

    move-result v6

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollRangeY()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 904
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    return-void
.end method

.method public smoothScale(FII)V
    .locals 7

    .line 838
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    cmpl-float v0, v0, p1

    if-lez v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    if-nez v0, :cond_0

    .line 840
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->accelerateInterpolator:Landroid/view/animation/AccelerateInterpolator;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->startScale(FFIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_2

    .line 845
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 847
    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->scaleHelper:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->mScale:F

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->startScale(FFIILandroid/view/animation/Interpolator;)V

    .line 849
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->notifyInvalidate()V

    return-void
.end method
