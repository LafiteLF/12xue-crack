.class public Lk12/education/camaramodule/CaptureButton;
.super Landroid/view/View;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk12/education/camaramodule/CaptureButton$LongPressRunnable;,
        Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;
    }
.end annotation


# static fields
.field public static final STATE_BAN:I = 0x5

.field public static final STATE_IDLE:I = 0x1

.field public static final STATE_LONG_PRESS:I = 0x3

.field public static final STATE_PRESS:I = 0x2

.field public static final STATE_RECORDERING:I = 0x4


# instance fields
.field private button_inside_radius:F

.field private button_outside_radius:F

.field private button_radius:F

.field private button_size:I

.field private button_state:I

.field private captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

.field private center_X:F

.field private center_Y:F

.field private duration:I

.field private event_Y:F

.field private inside_color:I

.field private inside_reduce_size:I

.field private longPressRunnable:Lk12/education/camaramodule/CaptureButton$LongPressRunnable;

.field private mPaint:Landroid/graphics/Paint;

.field private min_duration:I

.field private outside_add_size:I

.field private outside_color:I

.field private progress:F

.field private progress_color:I

.field private recorded_time:I

.field private rectF:Landroid/graphics/RectF;

.field private state:I

.field private strokeWidth:F

.field private timer:Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 43
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 44
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->inside_color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 13

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const p1, -0x11e951ea

    .line 43
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->progress_color:I

    const p1, -0x11232324

    .line 44
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->outside_color:I

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->inside_color:I

    .line 83
    iput p2, p0, Lk12/education/camaramodule/CaptureButton;->button_size:I

    int-to-float p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 84
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_radius:F

    .line 86
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_outside_radius:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr p1, v1

    .line 87
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    .line 89
    div-int/lit8 p1, p2, 0xf

    int-to-float p1, p1

    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->strokeWidth:F

    .line 90
    div-int/lit8 p1, p2, 0x5

    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->outside_add_size:I

    .line 91
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lk12/education/camaramodule/CaptureButton;->inside_reduce_size:I

    .line 93
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->progress:F

    .line 97
    new-instance p1, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lk12/education/camaramodule/CaptureButton$LongPressRunnable;-><init>(Lk12/education/camaramodule/CaptureButton;Lk12/education/camaramodule/CaptureButton$1;)V

    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton;->longPressRunnable:Lk12/education/camaramodule/CaptureButton$LongPressRunnable;

    .line 99
    iput p2, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/16 p1, 0x103

    .line 100
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_state:I

    const-string p1, "CaptureButtom start"

    .line 101
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    const/16 p1, 0x2710

    .line 102
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->duration:I

    const-string p1, "CaptureButtom end"

    .line 103
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    const/16 p1, 0x5dc

    .line 104
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->min_duration:I

    .line 106
    iget p1, p0, Lk12/education/camaramodule/CaptureButton;->button_size:I

    iget p2, p0, Lk12/education/camaramodule/CaptureButton;->outside_add_size:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lk12/education/camaramodule/CaptureButton;->center_X:F

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 107
    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->center_Y:F

    .line 109
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lk12/education/camaramodule/CaptureButton;->center_X:F

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->button_radius:F

    iget v2, p0, Lk12/education/camaramodule/CaptureButton;->outside_add_size:I

    int-to-float v3, v2

    add-float/2addr v3, v1

    iget v4, p0, Lk12/education/camaramodule/CaptureButton;->strokeWidth:F

    div-float v5, v4, v0

    sub-float/2addr v3, v5

    sub-float v3, p2, v3

    iget v5, p0, Lk12/education/camaramodule/CaptureButton;->center_Y:F

    int-to-float v6, v2

    add-float/2addr v6, v1

    div-float v7, v4, v0

    sub-float/2addr v6, v7

    sub-float v6, v5, v6

    int-to-float v7, v2

    add-float/2addr v7, v1

    div-float v8, v4, v0

    sub-float/2addr v7, v8

    add-float/2addr p2, v7

    int-to-float v2, v2

    add-float/2addr v1, v2

    div-float/2addr v4, v0

    sub-float/2addr v1, v4

    add-float/2addr v5, v1

    invoke-direct {p1, v3, v6, p2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton;->rectF:Landroid/graphics/RectF;

    .line 115
    new-instance p1, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    iget p2, p0, Lk12/education/camaramodule/CaptureButton;->duration:I

    int-to-long v9, p2

    div-int/lit16 p2, p2, 0x168

    int-to-long v11, p2

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;-><init>(Lk12/education/camaramodule/CaptureButton;JJ)V

    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton;->timer:Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method static synthetic access$100(Lk12/education/camaramodule/CaptureButton;)F
    .locals 0

    .line 32
    iget p0, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    return p0
.end method

.method static synthetic access$1000(Lk12/education/camaramodule/CaptureButton;FFFF)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lk12/education/camaramodule/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method static synthetic access$102(Lk12/education/camaramodule/CaptureButton;F)F
    .locals 0

    .line 32
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    return p1
.end method

.method static synthetic access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    return-object p0
.end method

.method static synthetic access$300(Lk12/education/camaramodule/CaptureButton;)I
    .locals 0

    .line 32
    iget p0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    return p0
.end method

.method static synthetic access$302(Lk12/education/camaramodule/CaptureButton;I)I
    .locals 0

    .line 32
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    return p1
.end method

.method static synthetic access$400(Lk12/education/camaramodule/CaptureButton;)F
    .locals 0

    .line 32
    iget p0, p0, Lk12/education/camaramodule/CaptureButton;->button_outside_radius:F

    return p0
.end method

.method static synthetic access$402(Lk12/education/camaramodule/CaptureButton;F)F
    .locals 0

    .line 32
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_outside_radius:F

    return p1
.end method

.method static synthetic access$500(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;
    .locals 0

    .line 32
    iget-object p0, p0, Lk12/education/camaramodule/CaptureButton;->timer:Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    return-object p0
.end method

.method static synthetic access$600(Lk12/education/camaramodule/CaptureButton;J)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lk12/education/camaramodule/CaptureButton;->updateProgress(J)V

    return-void
.end method

.method static synthetic access$700(Lk12/education/camaramodule/CaptureButton;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lk12/education/camaramodule/CaptureButton;->recordEnd()V

    return-void
.end method

.method static synthetic access$800(Lk12/education/camaramodule/CaptureButton;)I
    .locals 0

    .line 32
    iget p0, p0, Lk12/education/camaramodule/CaptureButton;->outside_add_size:I

    return p0
.end method

.method static synthetic access$900(Lk12/education/camaramodule/CaptureButton;)I
    .locals 0

    .line 32
    iget p0, p0, Lk12/education/camaramodule/CaptureButton;->inside_reduce_size:I

    return p0
.end method

.method private handlerUnpressByState()V
    .locals 2

    .line 177
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->longPressRunnable:Lk12/education/camaramodule/CaptureButton$LongPressRunnable;

    invoke-virtual {p0, v0}, Lk12/education/camaramodule/CaptureButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 179
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->timer:Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    invoke-virtual {v0}, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->cancel()V

    .line 192
    invoke-direct {p0}, Lk12/education/camaramodule/CaptureButton;->recordEnd()V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->button_state:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    const/16 v1, 0x103

    if-ne v0, v1, :cond_3

    .line 184
    :cond_2
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    invoke-direct {p0, v0}, Lk12/education/camaramodule/CaptureButton;->startCaptureAnimation(F)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 186
    iput v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    :goto_0
    return-void
.end method

.method private recordEnd()V
    .locals 3

    .line 199
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    if-eqz v0, :cond_1

    .line 200
    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->recorded_time:I

    iget v2, p0, Lk12/education/camaramodule/CaptureButton;->min_duration:I

    if-ge v1, v2, :cond_0

    int-to-long v1, v1

    .line 201
    invoke-interface {v0, v1, v2}, Lk12/education/camaramodule/listener/CaptureListener;->recordShort(J)V

    goto :goto_0

    :cond_0
    int-to-long v1, v1

    .line 203
    invoke-interface {v0, v1, v2}, Lk12/education/camaramodule/listener/CaptureListener;->recordEnd(J)V

    .line 205
    :cond_1
    :goto_0
    invoke-direct {p0}, Lk12/education/camaramodule/CaptureButton;->resetRecordAnim()V

    return-void
.end method

.method private resetRecordAnim()V
    .locals 4

    const/4 v0, 0x5

    .line 210
    iput v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lk12/education/camaramodule/CaptureButton;->progress:F

    .line 212
    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureButton;->invalidate()V

    .line 214
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->button_outside_radius:F

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->button_radius:F

    iget v2, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v3, v1

    invoke-direct {p0, v0, v1, v2, v3}, Lk12/education/camaramodule/CaptureButton;->startRecordAnimation(FFFF)V

    return-void
.end method

.method private startCaptureAnimation(F)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 224
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 225
    new-instance v0, Lk12/education/camaramodule/CaptureButton$1;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/CaptureButton$1;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 232
    new-instance v0, Lk12/education/camaramodule/CaptureButton$2;

    invoke-direct {v0, p0}, Lk12/education/camaramodule/CaptureButton$2;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0x64

    .line 241
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 242
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRecordAnimation(FFFF)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 247
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v1, v0, [F

    aput p3, v1, v2

    aput p4, v1, p1

    .line 248
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 250
    new-instance p4, Lk12/education/camaramodule/CaptureButton$3;

    invoke-direct {p4, p0}, Lk12/education/camaramodule/CaptureButton$3;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    invoke-virtual {p2, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    new-instance p4, Lk12/education/camaramodule/CaptureButton$4;

    invoke-direct {p4, p0}, Lk12/education/camaramodule/CaptureButton$4;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 265
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    new-instance v1, Lk12/education/camaramodule/CaptureButton$5;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/CaptureButton$5;-><init>(Lk12/education/camaramodule/CaptureButton;)V

    invoke-virtual {p4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p2, v0, v2

    aput-object p3, v0, p1

    .line 280
    invoke-virtual {p4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x64

    .line 281
    invoke-virtual {p4, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 282
    invoke-virtual {p4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateProgress(J)V
    .locals 3

    .line 288
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->duration:I

    int-to-long v1, v0

    sub-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Lk12/education/camaramodule/CaptureButton;->recorded_time:I

    long-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    const/high16 p2, 0x43b40000    # 360.0f

    mul-float/2addr p1, p2

    sub-float/2addr p2, p1

    .line 289
    iput p2, p0, Lk12/education/camaramodule/CaptureButton;->progress:F

    .line 290
    invoke-virtual {p0}, Lk12/education/camaramodule/CaptureButton;->invalidate()V

    return-void
.end method


# virtual methods
.method public isIdle()Z
    .locals 2

    .line 361
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 126
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->outside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->center_X:F

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->center_Y:F

    iget v2, p0, Lk12/education/camaramodule/CaptureButton;->button_outside_radius:F

    iget-object v3, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 132
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->inside_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->center_X:F

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->center_Y:F

    iget v2, p0, Lk12/education/camaramodule/CaptureButton;->button_inside_radius:F

    iget-object v3, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 136
    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->progress_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->strokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    iget-object v3, p0, Lk12/education/camaramodule/CaptureButton;->rectF:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    iget v5, p0, Lk12/education/camaramodule/CaptureButton;->progress:F

    const/4 v6, 0x0

    iget-object v7, p0, Lk12/education/camaramodule/CaptureButton;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 121
    iget p1, p0, Lk12/education/camaramodule/CaptureButton;->button_size:I

    iget p2, p0, Lk12/education/camaramodule/CaptureButton;->outside_add_size:I

    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Lk12/education/camaramodule/CaptureButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x103

    const/16 v2, 0x102

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    if-eqz v0, :cond_6

    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->button_state:I

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_6

    .line 164
    :cond_1
    iget-object v0, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    iget v1, p0, Lk12/education/camaramodule/CaptureButton;->event_Y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lk12/education/camaramodule/listener/CaptureListener;->recordZoom(F)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0}, Lk12/education/camaramodule/CaptureButton;->handlerUnpressByState()V

    goto :goto_0

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v4, :cond_6

    iget v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    if-eq v0, v4, :cond_4

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->event_Y:F

    .line 153
    iput v3, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    .line 156
    iget p1, p0, Lk12/education/camaramodule/CaptureButton;->button_state:I

    if-eq p1, v2, :cond_5

    if-ne p1, v1, :cond_6

    .line 157
    :cond_5
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton;->longPressRunnable:Lk12/education/camaramodule/CaptureButton$LongPressRunnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lk12/education/camaramodule/CaptureButton;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_0
    return v4
.end method

.method public resetState()V
    .locals 1

    const/4 v0, 0x1

    .line 366
    iput v0, p0, Lk12/education/camaramodule/CaptureButton;->state:I

    return-void
.end method

.method public setButtonFeatures(I)V
    .locals 0

    .line 356
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->button_state:I

    return-void
.end method

.method public setCaptureLisenter(Lk12/education/camaramodule/listener/CaptureListener;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton;->captureLisenter:Lk12/education/camaramodule/listener/CaptureListener;

    return-void
.end method

.method public setDuration(I)V
    .locals 7

    .line 340
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->duration:I

    .line 341
    new-instance v6, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    int-to-long v2, p1

    div-int/lit16 p1, p1, 0x168

    int-to-long v4, p1

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;-><init>(Lk12/education/camaramodule/CaptureButton;JJ)V

    iput-object v6, p0, Lk12/education/camaramodule/CaptureButton;->timer:Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    return-void
.end method

.method public setMinDuration(I)V
    .locals 0

    .line 346
    iput p1, p0, Lk12/education/camaramodule/CaptureButton;->min_duration:I

    return-void
.end method
