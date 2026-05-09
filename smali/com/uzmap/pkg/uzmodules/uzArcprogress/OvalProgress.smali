.class public Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;
.super Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;
.source "OvalProgress.java"


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStart:F

.field private mSweep:D

.field private oval:Landroid/graphics/RectF;

.field private progressPaint:Landroid/graphics/Paint;

.field private yHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/ArcProgress;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mStart:F

    .line 36
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->init()V

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

.method private drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V
    .locals 6

    .line 55
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerX:I

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    sub-int/2addr p2, p3

    int-to-float v1, p2

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerY:I

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    add-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->yHeight:F

    sub-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    add-float v2, p2, p3

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerX:I

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    add-int/2addr p2, p3

    int-to-float v3, p2

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerY:I

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, -0x1

    int-to-float v4, p2

    move-object v0, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getRadius()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    int-to-float v0, v0

    return v0
.end method

.method private init()V
    .locals 6

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->circlePaint:Landroid/graphics/Paint;

    .line 40
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->circlePaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->bgcolorsID:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->oval:Landroid/graphics/RectF;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mPath:Landroid/graphics/Path;

    .line 44
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mSweep:D

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->progressPaint:Landroid/graphics/Paint;

    .line 46
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->progressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->progressColorsID:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getmStart()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mStart:F

    return v0
.end method

.method public getmSweep()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mSweep:D

    return-wide v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 59
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 60
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 61
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 62
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->centerY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->radius:I

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 63
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 65
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->oval:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->progressPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->drawArcs(Landroid/graphics/Canvas;Landroid/graphics/RectF;ZLandroid/graphics/Paint;)V

    return-void
.end method

.method public setmStart(F)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mStart:F

    return-void
.end method

.method public setmSweep(F)V
    .locals 2

    float-to-double v0, p1

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mSweep:D

    return-void
.end method

.method public showValue(FFZ)V
    .locals 2

    .line 73
    iget-wide p2, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->mSweep:D

    float-to-double v0, p1

    mul-double/2addr p2, v0

    double-to-float p1, p2

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->yHeight:F

    .line 74
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzArcprogress/OvalProgress;->invalidate()V

    return-void
.end method
