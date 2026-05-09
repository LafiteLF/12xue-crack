.class public Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;
.super Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;
.source "SeekArc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;
    }
.end annotation


# static fields
.field private static INVALID_PROGRESS_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SeekArc"


# instance fields
.field private final mAngleOffset:I

.field private mArcPaint:Landroid/graphics/Paint;

.field private mArcRadius:I

.field private mArcRect:Landroid/graphics/RectF;

.field private mClockwise:Z

.field private mMax:I

.field private mOnSeekArcChangeListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;

.field private mProgress:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSweep:F

.field private mRotation:I

.field private mRoundedEdges:Z

.field private mStartAngle:I

.field private mSweepAngle:I

.field private mThumbXPos:I

.field private mThumbYPos:I

.field private mTouchAngle:D

.field private mTouchIgnoreRadius:F

.field private mTouchInside:Z

.field private mTranslateX:I

.field private mTranslateY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, -0x5a

    .line 33
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mAngleOffset:I

    const/16 p1, 0x64

    .line 42
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    .line 59
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    const/16 p2, 0x168

    .line 64
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 69
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    .line 74
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRoundedEdges:Z

    .line 79
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchInside:Z

    const/4 p2, 0x1

    .line 84
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    .line 87
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, -0x5a

    .line 33
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mAngleOffset:I

    const/16 p1, 0x64

    .line 42
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    .line 59
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    const/16 p2, 0x168

    .line 64
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 69
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    .line 74
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRoundedEdges:Z

    .line 79
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchInside:Z

    const/4 p2, 0x1

    .line 84
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    .line 87
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/16 p1, -0x5a

    .line 33
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mAngleOffset:I

    const/16 p1, 0x64

    .line 42
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    .line 59
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    const/16 p2, 0x168

    .line 64
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 69
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    .line 74
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRoundedEdges:Z

    .line 79
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchInside:Z

    const/4 p2, 0x1

    .line 84
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    .line 87
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    .line 89
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    .line 140
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->init()V

    return-void
.end method

.method private getProgressForAngle(D)I
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->valuePerDegree()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    if-gez p1, :cond_0

    .line 330
    sget p1, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->INVALID_PROGRESS_VALUE:I

    .line 332
    :cond_0
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    if-le p1, p2, :cond_1

    sget p1, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->INVALID_PROGRESS_VALUE:I

    :cond_1
    return p1
.end method

.method private getTouchDegrees(FF)D
    .locals 2

    .line 313
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 314
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 316
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    float-to-double v0, p2

    float-to-double p1, p1

    .line 318
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr p1, v0

    .line 319
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    .line 318
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    .line 323
    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    int-to-double v0, v0

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private init()V
    .locals 3

    const-string v0, "SeekArc"

    const-string v1, "Initialising SeekArc"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    const/16 v1, 0x168

    .line 170
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 171
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    .line 172
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    .line 173
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    .line 175
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->bgcolorsID:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    .line 181
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->progressColorsID:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 186
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRoundedEdges:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 188
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :cond_0
    return-void
.end method

.method private onProgressRefresh(IZ)V
    .locals 0

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateProgress(IZ)V

    return-void
.end method

.method private updateProgress(IZ)V
    .locals 1

    .line 353
    sget v0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->INVALID_PROGRESS_VALUE:I

    if-ne p1, v0, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mOnSeekArcChangeListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;

    if-eqz v0, :cond_1

    .line 359
    invoke-interface {v0, p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;->onProgressChanged(Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;IZ)V

    .line 362
    :cond_1
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    if-le p1, p2, :cond_2

    move p1, p2

    .line 363
    :cond_2
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    if-gez p2, :cond_3

    const/4 p1, 0x0

    .line 365
    :cond_3
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgress:I

    int-to-float p1, p1

    .line 366
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    .line 368
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateThumbPosition()V

    .line 370
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->invalidate()V

    return-void
.end method

.method private updateThumbPosition()V
    .locals 7

    .line 346
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 347
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-int v0, v1

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbXPos:I

    .line 348
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbYPos:I

    return-void
.end method

.method private valuePerDegree()F
    .locals 2

    .line 338
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mMax:I

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 269
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->drawableStateChanged()V

    .line 274
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->invalidate()V

    return-void
.end method

.method public getArcRotation()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    return v0
.end method

.method public getArcWidth()I
    .locals 1

    .line 401
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    return v0
.end method

.method public getProgressWidth()I
    .locals 1

    .line 392
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    return v0
.end method

.method public getStartAngle()I
    .locals 1

    .line 419
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    return v0
.end method

.method public getSweepAngle()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    return v0
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return v0

    .line 156
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 194
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    if-nez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 195
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 199
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    add-int/lit8 v0, v0, -0x5a

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    add-int/2addr v0, v1

    .line 200
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 201
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 202
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    const/4 v8, 0x0

    .line 203
    iget-object v9, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v0

    .line 202
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 205
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateX:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbXPos:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateY:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbYPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 212
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->getDefaultSize(II)I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->getDefaultSize(II)I

    move-result v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "width  =  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SeekArc"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "height = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 223
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateX:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 224
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTranslateY:I

    .line 226
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    mul-int/lit8 v0, v0, 0x2

    .line 227
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    .line 228
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerY:I

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 229
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerX:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 230
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerX:I

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerY:I

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onMeasure  left  =  "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMeasure  top   =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMeasure  right  =  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerX:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMeasure  bottom  =   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->centerY:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->radius:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressSweep:F

    float-to-int v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5a

    .line 236
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    int-to-double v1, v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v1, v5

    double-to-int v0, v1

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbXPos:I

    .line 237
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    int-to-double v0, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mThumbYPos:I

    .line 239
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchInside:Z

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->setTouchInSide(Z)V

    .line 240
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;->onMeasure(II)V

    return-void
.end method

.method public setArcRotation(I)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRotation:I

    .line 415
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setArcWidth(I)V
    .locals 1

    .line 405
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    .line 406
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setClockwise(Z)V
    .locals 0

    .line 461
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mClockwise:Z

    return-void
.end method

.method public setOnSeekArcChangeListener(Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mOnSeekArcChangeListener:Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc$OnSeekArcChangeListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 388
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateProgress(IZ)V

    return-void
.end method

.method public setProgressWidth(I)V
    .locals 1

    .line 396
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressWidth:I

    .line 397
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public setRoundedEdges(Z)V
    .locals 1

    .line 437
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mRoundedEdges:Z

    if-eqz p1, :cond_0

    .line 439
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 440
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto :goto_0

    .line 442
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 443
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    :goto_0
    return-void
.end method

.method public setStartAngle(I)V
    .locals 0

    .line 423
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mStartAngle:I

    .line 424
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setSweepAngle(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mSweepAngle:I

    .line 433
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->updateThumbPosition()V

    return-void
.end method

.method public setTouchInSide(Z)V
    .locals 1

    .line 450
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchInside:Z

    if-eqz p1, :cond_0

    .line 452
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mArcRadius:I

    int-to-float p1, p1

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->mTouchIgnoreRadius:F

    :cond_0
    return-void
.end method

.method public showValue(FFZ)V
    .locals 0

    float-to-int p1, p1

    .line 466
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/SeekArc;->setProgress(I)V

    return-void
.end method
