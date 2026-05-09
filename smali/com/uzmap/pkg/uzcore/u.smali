.class public abstract Lcom/uzmap/pkg/uzcore/u;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:I

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private h:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/uzmap/pkg/uzcore/u;->a:F

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/u;->b:I

    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/u;->g:Z

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v0, v0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/u;->a()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget v3, p0, Lcom/uzmap/pkg/uzcore/u;->a:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget v3, p0, Lcom/uzmap/pkg/uzcore/u;->a:F

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    :cond_0
    if-gez v0, :cond_1

    neg-int v3, v0

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    if-gez v2, :cond_2

    neg-int v4, v2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-le v2, v1, :cond_3

    if-le v4, v3, :cond_3

    const-string v0, "swiperight"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/u;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v5, -0x3e8

    if-ge v2, v5, :cond_4

    if-le v4, v3, :cond_4

    const-string v0, "swipeleft"

    goto :goto_2

    :cond_4
    if-le v0, v1, :cond_5

    if-le v3, v4, :cond_5

    const-string v0, "swipedown"

    goto :goto_2

    :cond_5
    if-ge v0, v5, :cond_6

    if-le v3, v4, :cond_6

    const-string v0, "swipeup"

    goto :goto_2

    :cond_6
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 11

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/u;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    goto :goto_1

    :cond_2
    const/4 v5, -0x1

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x0

    move v9, v2

    move v8, v7

    :goto_2
    if-lt v9, v6, :cond_d

    if-eqz v4, :cond_3

    add-int/lit8 v6, v6, -0x1

    :cond_3
    int-to-float v4, v6

    div-float/2addr v7, v4

    div-float/2addr v8, v4

    if-eqz v0, :cond_b

    if-eq v0, v3, :cond_a

    const/4 p1, 0x2

    if-eq v0, p1, :cond_7

    const/4 p1, 0x3

    if-eq v0, p1, :cond_6

    const/4 p1, 0x5

    if-eq v0, p1, :cond_5

    if-eq v0, v1, :cond_4

    goto :goto_3

    :cond_4
    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->e:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->f:F

    goto :goto_3

    :cond_5
    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->e:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->f:F

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/u;->b()V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/u;->c()V

    goto :goto_3

    :cond_7
    iget p1, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    sub-float/2addr p1, v7

    iget v0, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    sub-float/2addr v0, v8

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/u;->g:Z

    if-eqz v1, :cond_8

    iget p1, p0, Lcom/uzmap/pkg/uzcore/u;->e:F

    sub-float p1, v7, p1

    float-to-int p1, p1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/u;->f:F

    sub-float v0, v8, v0

    float-to-int v0, v0

    mul-int/2addr p1, p1

    mul-int/2addr v0, v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/u;->b:I

    if-le p1, v0, :cond_c

    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/u;->g:Z

    goto :goto_3

    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-gez p1, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_c

    :cond_9
    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/u;->g:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/u;->b(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_b
    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->c:F

    iput v7, p0, Lcom/uzmap/pkg/uzcore/u;->e:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->d:F

    iput v8, p0, Lcom/uzmap/pkg/uzcore/u;->f:F

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/u;->g:Z

    :cond_c
    :goto_3
    return v2

    :cond_d
    if-ne v5, v9, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v7, v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    add-float/2addr v8, v10

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method
