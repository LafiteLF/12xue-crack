.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;
.super Ljava/lang/Object;
.source "ScaleHelper.java"


# instance fields
.field private mDuration:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mToScale:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mFinished:Z

    return-void
.end method

.method private isFinished()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mFinished:Z

    return v0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 5

    .line 47
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartTime:J

    sub-long/2addr v0, v2

    .line 55
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mDuration:I

    int-to-long v3, v2

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    if-gez v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 58
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mScale:F

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mToScale:F

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    iput v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mScale:F

    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mToScale:F

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mScale:F

    .line 61
    iput-boolean v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mFinished:Z

    :goto_0
    return v4
.end method

.method public getCurScale()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mScale:F

    return v0
.end method

.method public getStartX()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartX:I

    return v0
.end method

.method public getStartY()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartY:I

    return v0
.end method

.method public startScale(FFIILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 22
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartTime:J

    .line 23
    iput-object p5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 24
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mScale:F

    .line 25
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mToScale:F

    .line 26
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartX:I

    .line 27
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mStartY:I

    cmpl-float p3, p2, p1

    if-lez p3, :cond_0

    div-float/2addr p2, p1

    goto :goto_0

    :cond_0
    div-float p2, p1, p2

    :goto_0
    const/high16 p1, 0x40800000    # 4.0f

    cmpl-float p3, p2, p1

    if-lez p3, :cond_1

    move p2, p1

    :cond_1
    const-wide p3, 0x406b800000000000L    # 220.0

    const/high16 p1, 0x45610000    # 3600.0f

    mul-float/2addr p2, p1

    float-to-double p1, p2

    .line 38
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    add-double/2addr p1, p3

    double-to-int p1, p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mDuration:I

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ScaleHelper;->mFinished:Z

    return-void
.end method
