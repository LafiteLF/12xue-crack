.class public Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;
.super Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;
.source "CircleDisplay.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;,
        Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$Utils;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CircleDisplay"

.field public static final PAINT_ARC:I = 0x2

.field public static final PAINT_INNER:I = 0x3

.field public static final PAINT_TEXT:I = 0x1


# instance fields
.field private mAngle:F

.field private mArcPaint:Landroid/graphics/Paint;

.field private mBoxSetup:Z

.field private mCircleBox:Landroid/graphics/RectF;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCustomText:[Ljava/lang/String;

.field private mDimAlpha:I

.field private mDrawInner:Z

.field private mDrawText:Z

.field private mFormatValue:Ljava/text/DecimalFormat;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInnerCirclePaint:Landroid/graphics/Paint;

.field private mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

.field private mMaxValue:F

.field private mPhase:F

.field private mStartAngle:F

.field private mStepSize:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTouchEnabled:Z

.field private mUnit:Ljava/lang/String;

.field private mValue:F

.field private mValueWidthPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "%"

    .line 42
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 p1, 0x43870000    # 270.0f

    .line 45
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStartAngle:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    .line 60
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    .line 63
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 66
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    .line 72
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    .line 75
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    const/16 p1, 0x50

    .line 78
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDimAlpha:I

    .line 81
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "###,###,###,##0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    .line 103
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "%"

    .line 42
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 p1, 0x43870000    # 270.0f

    .line 45
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStartAngle:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    .line 60
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    .line 63
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 66
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    .line 72
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    .line 75
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    const/16 p1, 0x50

    .line 78
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDimAlpha:I

    .line 81
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "###,###,###,##0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    .line 108
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const-string p1, "%"

    .line 42
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mUnit:Ljava/lang/String;

    const/high16 p1, 0x43870000    # 270.0f

    .line 45
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStartAngle:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 51
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    .line 57
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    .line 60
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    .line 63
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    const/high16 p1, 0x42480000    # 50.0f

    .line 66
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    .line 72
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    .line 75
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    const/16 p1, 0x50

    .line 78
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDimAlpha:I

    .line 81
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "###,###,###,##0.0"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    .line 90
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    .line 98
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->init()V

    return-void
.end method

.method private calcAngle(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method private drawCustomText(Landroid/graphics/Canvas;)V
    .locals 4

    .line 182
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 184
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 185
    aget-object v0, v1, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 186
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    .line 185
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const-string p1, "CircleDisplay"

    const-string v0, "Custom text array not long enough."

    .line 188
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private drawInnerCircle(Landroid/graphics/Canvas;)V
    .locals 5

    .line 210
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getRadius()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 211
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mInnerCirclePaint:Landroid/graphics/Paint;

    .line 210
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 4

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mUnit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 172
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    .line 171
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawValue(Landroid/graphics/Canvas;)V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 223
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    mul-float v5, v0, v1

    .line 225
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStartAngle:F

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawWholeCircle(Landroid/graphics/Canvas;)V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getRadius()F

    move-result v0

    .line 200
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerY:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    .line 114
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCirclePaint:Landroid/graphics/Paint;

    .line 115
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCirclePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->bgcolorsID:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    .line 119
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->progressColorsID:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mInnerCirclePaint:Landroid/graphics/Paint;

    .line 123
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mInnerCirclePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    .line 127
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 129
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$Utils;->convertDpToPixel(Landroid/content/res/Resources;F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private setupBox()V
    .locals 6

    .line 236
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getWidth()I

    .line 237
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getHeight()I

    .line 239
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getDiameter()F

    .line 243
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerX:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->radius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerY:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->radius:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerX:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->radius:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->centerY:I

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->radius:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCircleBox:Landroid/graphics/RectF;

    return-void
.end method

.method private updateValue(FF)V
    .locals 2

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getAngleForPoint(FF)F

    move-result p1

    .line 621
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    mul-float/2addr p2, p1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p2, v0

    .line 624
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 625
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    .line 626
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    return-void

    :cond_0
    rem-float p1, p2, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v0, v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_1

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_1
    sub-float/2addr p2, p1

    add-float/2addr p2, v0

    .line 641
    :goto_0
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getAngleForValue(F)F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    .line 642
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    return-void
.end method


# virtual methods
.method public distanceToCenter(FF)F
    .locals 4

    .line 726
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 733
    iget v1, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 734
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v1

    goto :goto_0

    .line 736
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float p1, v1, p1

    .line 739
    :goto_0
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 740
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v0

    goto :goto_1

    .line 742
    :cond_1
    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float p2, v0, p2

    :goto_1
    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 746
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double p1, p2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public getAngleForPoint(FF)F
    .locals 7

    .line 676
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getCenter()Landroid/graphics/PointF;

    move-result-object v0

    .line 678
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p1, v1

    float-to-double v1, v1

    iget v3, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, v3

    float-to-double v3, p2

    mul-double/2addr v1, v1

    mul-double v5, v3, v3

    add-double/2addr v1, v5

    .line 679
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr v3, v1

    .line 680
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 682
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p2, v1

    .line 684
    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float p1, p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    if-lez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    const/high16 p1, 0x43340000    # 180.0f

    add-float/2addr p2, p1

    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    sub-float/2addr p2, v0

    :cond_1
    return p2
.end method

.method public getAngleForValue(F)F
    .locals 1

    .line 703
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    div-float/2addr p1, v0

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr p1, v0

    return p1
.end method

.method public getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 519
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getDiameter()F
    .locals 1

    .line 309
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->radius:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method public getPhase()F
    .locals 1

    .line 346
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    return v0
.end method

.method public getRadius()F
    .locals 2

    .line 318
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getDiameter()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .line 510
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 286
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    return v0
.end method

.method public getValueForAngle(F)F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    .line 713
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public isDrawInnerCircleEnabled()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    return v0
.end method

.method public isDrawTextEnabled()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mBoxSetup:Z

    .line 147
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->setupBox()V

    .line 149
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->drawWholeCircle(Landroid/graphics/Canvas;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->drawValue(Landroid/graphics/Canvas;)V

    .line 153
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->drawInnerCircle(Landroid/graphics/Canvas;)V

    .line 156
    :cond_1
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 159
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->drawCustomText(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->drawText(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->distanceToCenter(FF)F

    move-result v0

    .line 650
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getRadius()F

    move-result v1

    .line 654
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    mul-float/2addr v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->updateValue(FF)V

    .line 657
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->invalidate()V

    .line 659
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

    if-eqz p1, :cond_0

    .line 660
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;->onValueSelected(FF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 561
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    if-eqz v0, :cond_5

    .line 563
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

    if-nez v0, :cond_0

    const-string v0, "CircleDisplay"

    const-string v1, "No SelectionListener specified. Use setSelectionListener(...) to set a listener for callbacks when selecting values."

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 571
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 575
    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->distanceToCenter(FF)F

    move-result v3

    .line 576
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getRadius()F

    move-result v4

    .line 580
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    mul-float/2addr v5, v4

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    sub-float v5, v4, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    goto :goto_0

    .line 590
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->updateValue(FF)V

    .line 591
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->invalidate()V

    .line 592
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

    if-eqz p1, :cond_4

    .line 593
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    invoke-interface {p1, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;->onSelectionUpdate(FF)V

    goto :goto_0

    .line 596
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

    if-eqz p1, :cond_4

    .line 597
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    invoke-interface {p1, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;->onValueSelected(FF)V

    :cond_4
    :goto_0
    return v1

    .line 605
    :cond_5
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAnimDuration(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setCustomText([Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mCustomText:[Ljava/lang/String;

    return-void
.end method

.method public setDimAlpha(I)V
    .locals 0

    .line 457
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDimAlpha:I

    return-void
.end method

.method public setDrawInnerCircle(Z)V
    .locals 0

    .line 365
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawInner:Z

    return-void
.end method

.method public setDrawText(Z)V
    .locals 0

    .line 383
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mDrawText:Z

    return-void
.end method

.method public setFormatDigits(I)V
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, p1, :cond_0

    .line 447
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "###,###,###,##0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mFormatValue:Ljava/text/DecimalFormat;

    return-void

    :cond_0
    if-nez v1, :cond_1

    const-string v2, "."

    .line 443
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v2, "0"

    .line 444
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPaint(ILandroid/graphics/Paint;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mInnerCirclePaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 480
    :cond_1
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mArcPaint:Landroid/graphics/Paint;

    goto :goto_0

    .line 486
    :cond_2
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    :goto_0
    return-void
.end method

.method public setPhase(F)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    .line 356
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->invalidate()V

    return-void
.end method

.method public setSelectionListener(Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$SelectionListener;

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStartAngle:F

    return-void
.end method

.method public setStepSize(F)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mStepSize:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay$Utils;->convertDpToPixel(Landroid/content/res/Resources;F)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mTouchEnabled:Z

    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mUnit:Ljava/lang/String;

    return-void
.end method

.method public setValueWidthPercent(F)V
    .locals 0

    .line 419
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValueWidthPercent:F

    return-void
.end method

.method public showValue(FFZ)V
    .locals 2

    div-float v0, p1, p2

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 256
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->calcAngle(F)F

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mAngle:F

    .line 257
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mValue:F

    .line 258
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mMaxValue:F

    if-eqz p3, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->startAnim()V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 263
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    .line 264
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->invalidate()V

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/CircleDisplay;->mPhase:F

    return-void
.end method
