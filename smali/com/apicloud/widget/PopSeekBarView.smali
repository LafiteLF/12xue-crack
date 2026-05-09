.class public Lcom/apicloud/widget/PopSeekBarView;
.super Landroid/view/View;
.source "PopSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_BIG_NUMBER_SIZE:F = 30.0f

.field private static final DEFAULT_NUMBER_COLOR:I = -0x58889

.field private static final DEFAULT_SEEK_BAR_COLOR:I = -0xb1017

.field private static final DEFAULT_SEEK_BAR_HIGHLIGHT_COLOR:I = -0x973b25

.field private static final DEFAULT_SEEK_BAR_WIDTH:F = 5.0f

.field private static final DEFAULT_SMALL_NUMBER_SIZE:F = 16.0f


# instance fields
.field private circleColor:I

.field private circlePaint:Landroid/graphics/Paint;

.field private circleR:I

.field private isDownInSmallCircle:Z

.field private listener:Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;

.field private mBigNumberPaint:Landroid/graphics/Paint;

.field private mBigNumberSize:F

.field private mCircleButtonBitmap:Landroid/graphics/Bitmap;

.field private mCircleButtonPaint:Landroid/graphics/Paint;

.field private mCircleButtonY:F

.field private mDifference:I

.field private mEnd:I

.field private mHandlerPaint:Landroid/graphics/Paint;

.field private mNumberColor:I

.field private mPreY:F

.field private mSeekBarColor:I

.field private mSeekBarHeight:F

.field private mSeekBarHighlightColor:I

.field private mSeekBarHighlightPaint:Landroid/graphics/Paint;

.field private mSeekBarPaint:Landroid/graphics/Paint;

.field private mSeekBarRect:Landroid/graphics/RectF;

.field private mSeekBarWidth:F

.field private mSmallNumberPaint:Landroid/graphics/Paint;

.field private mSmallNumberSize:F

.field private mStart:I

.field private percent:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/apicloud/widget/PopSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/widget/PopSeekBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xf

    .line 57
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->circleColor:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->percent:I

    const/16 p1, 0xa

    .line 79
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mStart:I

    const/16 p2, 0x3c

    .line 80
    iput p2, p0, Lcom/apicloud/widget/PopSeekBarView;->mEnd:I

    sub-int/2addr p2, p1

    .line 81
    iput p2, p0, Lcom/apicloud/widget/PopSeekBarView;->mDifference:I

    .line 105
    invoke-direct {p0}, Lcom/apicloud/widget/PopSeekBarView;->initialize()V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 316
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 317
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 319
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 321
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 323
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 324
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getFontHeight(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 3

    .line 221
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private initialize()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    .line 153
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSmallNumberSize:F

    .line 154
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mBigNumberSize:F

    const v0, -0xb1017

    .line 157
    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarColor:I

    const v0, -0x973b25

    .line 158
    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightColor:I

    const v0, -0x58889

    .line 159
    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mNumberColor:I

    .line 162
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarPaint:Landroid/graphics/Paint;

    .line 163
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circlePaint:Landroid/graphics/Paint;

    .line 167
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circlePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->circleColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonPaint:Landroid/graphics/Paint;

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mHandlerPaint:Landroid/graphics/Paint;

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightPaint:Landroid/graphics/Paint;

    .line 175
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSmallNumberPaint:Landroid/graphics/Paint;

    .line 179
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSmallNumberPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mNumberColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSmallNumberPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSmallNumberSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mBigNumberPaint:Landroid/graphics/Paint;

    .line 184
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mBigNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mNumberColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mBigNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mBigNumberSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private isInCircle(FF)Z
    .locals 3

    .line 279
    iget v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    .line 280
    iget-object v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    mul-float/2addr v1, p1

    iget p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    sub-float v2, p2, p1

    sub-float/2addr p2, p1

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-double p1, v1

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 192
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 193
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v4, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 198
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 202
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 203
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v4, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    int-to-float v3, v3

    sub-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    int-to-float v5, v5

    add-float/2addr v6, v5

    invoke-direct {v1, v2, v4, v3, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 204
    iget-object v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 207
    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 208
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/apicloud/widget/PopSeekBarView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 293
    iget p1, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    mul-int/lit8 p1, p1, 0x2

    .line 294
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 297
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 298
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/widget/PopSeekBarView;->setMeasuredDimension(II)V

    .line 299
    iget v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    .line 300
    iget-object v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 303
    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    sub-float v3, p1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v0

    add-float/2addr p1, v2

    div-float/2addr p1, v4

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {v1, v3, v5, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarRect:Landroid/graphics/RectF;

    .line 305
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result p2

    sub-int/2addr p2, v0

    iget v1, p0, Lcom/apicloud/widget/PopSeekBarView;->percent:I

    mul-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x64

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    if-nez v1, :cond_2

    .line 307
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    .line 309
    :cond_2
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/widget/PopSeekBarView;->isDownInSmallCircle:Z

    if-eqz v0, :cond_7

    .line 243
    iget v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/apicloud/widget/PopSeekBarView;->mPreY:F

    sub-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    .line 244
    iget v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    .line 245
    iget-object v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 246
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/2addr v0, v2

    .line 248
    :cond_1
    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    goto :goto_0

    .line 251
    :cond_2
    iget v2, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 253
    iput v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    .line 255
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    div-float/2addr v2, v0

    float-to-int v0, v2

    .line 256
    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->percent:I

    .line 257
    iget-object v2, p0, Lcom/apicloud/widget/PopSeekBarView;->listener:Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;

    if-eqz v2, :cond_4

    .line 258
    invoke-interface {v2, v0}, Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;->onPersentChange(I)V

    .line 260
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mPreY:F

    .line 261
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->invalidate()V

    goto :goto_1

    .line 266
    :cond_5
    iget-boolean p1, p0, Lcom/apicloud/widget/PopSeekBarView;->isDownInSmallCircle:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/apicloud/widget/PopSeekBarView;->isDownInSmallCircle:Z

    .line 269
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->invalidate()V

    goto :goto_1

    .line 232
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/apicloud/widget/PopSeekBarView;->isInCircle(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mPreY:F

    .line 235
    iput-boolean v1, p0, Lcom/apicloud/widget/PopSeekBarView;->isDownInSmallCircle:Z

    .line 236
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->invalidate()V

    :cond_7
    :goto_1
    return v1
.end method

.method public setCircleColor(I)V
    .locals 1

    .line 119
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->circleColor:I

    .line 120
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCircleR(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    return-void
.end method

.method public setListener(Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/apicloud/widget/PopSeekBarView;->listener:Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;

    return-void
.end method

.method public setPersent(I)V
    .locals 3

    .line 138
    iget v0, p0, Lcom/apicloud/widget/PopSeekBarView;->circleR:I

    .line 139
    iget-object v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    if-nez p1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iput v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonY:F

    .line 146
    :cond_1
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->percent:I

    .line 147
    invoke-virtual {p0}, Lcom/apicloud/widget/PopSeekBarView;->invalidate()V

    return-void
.end method

.method public setSeekerColor(I)V
    .locals 1

    .line 109
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarColor:I

    .line 110
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setmCircleButtonBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mCircleButtonBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setmSeekBarWidth(F)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/apicloud/widget/PopSeekBarView;->mSeekBarWidth:F

    return-void
.end method
