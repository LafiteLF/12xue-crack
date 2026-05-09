.class public Lcom/apicloud/a/i/a/u/a/d;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/u/a/d$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:J

.field private D:Landroid/graphics/Rect;

.field a:Landroid/os/Handler;

.field b:Lcom/apicloud/a/i/a/u/a/g;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:F

.field f:Z

.field g:I

.field h:I

.field private i:F

.field private j:Landroid/view/GestureDetector;

.field private k:Ljava/util/concurrent/ScheduledExecutorService;

.field private l:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Landroid/graphics/Paint;

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/String;

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x3f866666    # 1.05f

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->i:F

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x7

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->A:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apicloud/a/i/a/u/a/d;->C:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->D:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/graphics/Paint;)F
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->d:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget v0, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/Paint;->ascent()F

    move-result p1

    sub-float/2addr v0, p1

    return v0
.end method

.method private a(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/d;->D:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/d;->D:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->i:F

    mul-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->D:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/d;->i:F

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    div-float/2addr p1, p2

    return p1

    :cond_0
    return v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/u/a/f;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/a/f;-><init>(Lcom/apicloud/a/i/a/u/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->a:Landroid/os/Handler;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/apicloud/a/i/a/u/a/e;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/u/a/e;-><init>(Lcom/apicloud/a/i/a/u/a/d;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->j:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    const/16 v0, 0x9

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->w:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    iput v1, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/d;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    const v1, -0x505051

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->i:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->o:Landroid/graphics/Paint;

    const v2, -0x47443e

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method private h()V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    iput v1, p0, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v2, v1

    iget v3, p0, Lcom/apicloud/a/i/a/u/a/d;->e:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/apicloud/a/i/a/u/a/d;->w:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lcom/apicloud/a/i/a/u/a/d;->y:I

    mul-int/lit8 v4, v2, 0x2

    int-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/apicloud/a/i/a/u/a/d;->x:I

    int-to-double v8, v2

    div-double/2addr v8, v6

    double-to-int v2, v8

    iput v2, p0, Lcom/apicloud/a/i/a/u/a/d;->z:I

    int-to-float v2, v4

    int-to-float v5, v1

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lcom/apicloud/a/i/a/u/a/d;->q:I

    int-to-float v2, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    div-float/2addr v2, v5

    float-to-int v1, v2

    iput v1, p0, Lcom/apicloud/a/i/a/u/a/d;->r:I

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    :cond_2
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->u:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->l:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->l:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->l:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method protected final a(F)V
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/apicloud/a/i/a/u/a/c;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/a/u/a/c;-><init>(Lcom/apicloud/a/i/a/u/a/d;F)V

    const/16 p1, 0xa

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->l:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    return-void
.end method

.method protected final a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, Lcom/apicloud/a/i/a/u/a/d;->v:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_2

    :goto_1
    array-length v1, v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "..."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    aget-char v4, v1, v2

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_4

    const/16 v5, 0x5e

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x2

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method a(Lcom/apicloud/a/i/a/u/a/d$a;)V
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    sget-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->b:Lcom/apicloud/a/i/a/u/a/d$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->c:Lcom/apicloud/a/i/a/u/a/d$a;

    if-ne p1, v0, :cond_2

    :cond_0
    iget p1, p0, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float v0, v0

    rem-float/2addr v0, p1

    add-float/2addr v0, p1

    rem-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->A:I

    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    :cond_1
    neg-int p1, v0

    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->A:I

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/apicloud/a/i/a/u/a/n;

    iget p1, p0, Lcom/apicloud/a/i/a/u/a/d;->A:I

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/i/a/u/a/n;-><init>(Lcom/apicloud/a/i/a/u/a/d;I)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->l:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/u/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->b:Lcom/apicloud/a/i/a/u/a/g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/d;->c(I)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/d;->h()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    return-void
.end method

.method public final b(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->p:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/d;->h()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->v:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->x:I

    return v0
.end method

.method public final c(I)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    :cond_1
    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->t:I

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->t:I

    return v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->b:Lcom/apicloud/a/i/a/u/a/g;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/u/a/h;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/a/h;-><init>(Lcom/apicloud/a/i/a/u/a/d;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/apicloud/a/i/a/u/a/d;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->w:I

    new-array v8, v1, [Ljava/lang/String;

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float v1, v1

    iget v2, v6, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iget v3, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v6, Lcom/apicloud/a/i/a/u/a/d;->h:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v1, v0

    add-int/2addr v2, v1

    iput v2, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    iget-boolean v0, v6, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    const/4 v9, 0x0

    if-nez v0, :cond_2

    if-gez v2, :cond_1

    iput v9, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    :cond_1
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-gez v2, :cond_3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    add-int/2addr v0, v1

    iput v0, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    :cond_3
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_4

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    :cond_4
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float v0, v0

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iget v2, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    rem-float/2addr v0, v1

    float-to-int v10, v0

    move v0, v9

    :goto_1
    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->w:I

    if-lt v0, v1, :cond_b

    const/4 v1, 0x0

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    int-to-float v4, v0

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->o:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v11, v9

    :goto_2
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->w:I

    if-lt v11, v0, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v0, v0

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->e:F

    mul-float v12, v0, v1

    int-to-float v0, v11

    mul-float/2addr v0, v12

    int-to-float v1, v10

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    iget v4, v6, Lcom/apicloud/a/i/a/u/a/d;->y:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    const-wide v4, 0x4056800000000000L    # 90.0

    div-double v2, v0, v2

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v13

    sub-double/2addr v4, v2

    double-to-float v2, v4

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v3, v2, v3

    if-gez v3, :cond_a

    const/high16 v3, -0x3d4c0000    # -90.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_6

    goto/16 :goto_4

    :cond_6
    iget v2, v6, Lcom/apicloud/a/i/a/u/a/d;->z:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget v13, v6, Lcom/apicloud/a/i/a/u/a/d;->z:I

    int-to-double v13, v13

    mul-double/2addr v4, v13

    sub-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    iget v13, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-double v13, v13

    mul-double/2addr v4, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v13

    sub-double/2addr v2, v4

    double-to-int v13, v2

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v7, v2, v0}, Landroid/graphics/Canvas;->scale(FF)V

    aget-object v14, v8, v11

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    if-gt v13, v0, :cond_7

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    add-int/2addr v1, v13

    if-lt v1, v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    sub-int/2addr v1, v13

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    sub-int/2addr v0, v13

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v1

    float-to-int v2, v12

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    :goto_3
    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    :cond_7
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    if-gt v13, v0, :cond_8

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    add-int/2addr v1, v13

    if-lt v1, v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    sub-int/2addr v1, v13

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    sub-int/2addr v0, v13

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v1

    float-to-int v2, v12

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    goto :goto_3

    :cond_8
    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->q:I

    if-lt v13, v0, :cond_9

    iget v0, v6, Lcom/apicloud/a/i/a/u/a/d;->d:I

    add-int/2addr v0, v13

    iget v1, v6, Lcom/apicloud/a/i/a/u/a/d;->r:I

    if-gt v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    float-to-int v1, v12

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->n:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iput-object v14, v6, Lcom/apicloud/a/i/a/u/a/d;->s:Ljava/lang/String;

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, v6, Lcom/apicloud/a/i/a/u/a/d;->t:I

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->getWidth()I

    move-result v0

    float-to-int v1, v12

    invoke-virtual {v7, v9, v9, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v14, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v3

    iget-object v0, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Paint;)F

    move-result v4

    iget-object v5, v6, Lcom/apicloud/a/i/a/u/a/d;->m:Landroid/graphics/Paint;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/u/a/d;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_a
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_b
    iget v2, v6, Lcom/apicloud/a/i/a/u/a/d;->u:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, v0

    sub-int/2addr v2, v1

    iget-boolean v1, v6, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    if-eqz v1, :cond_e

    :goto_5
    if-ltz v2, :cond_d

    :goto_6
    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v2, v1, :cond_c

    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v0

    goto :goto_7

    :cond_c
    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v2, v1

    goto :goto_6

    :cond_d
    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_5

    :cond_e
    const-string v1, ""

    if-gez v2, :cond_f

    aput-object v1, v8, v0

    goto :goto_7

    :cond_f
    iget-object v3, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_10

    aput-object v1, v8, v0

    goto :goto_7

    :cond_10
    iget-object v1, v6, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v8, v0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/d;->h()V

    iget p2, p0, Lcom/apicloud/a/i/a/u/a/d;->x:I

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/u/a/d;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->j:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->z:I

    int-to-float v2, v0

    sub-float/2addr v2, p1

    int-to-float p1, v0

    div-float/2addr v2, p1

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v5

    iget p1, p0, Lcom/apicloud/a/i/a/u/a/d;->z:I

    int-to-double v7, p1

    mul-double/2addr v5, v7

    const/high16 p1, 0x40000000    # 2.0f

    div-float p1, v1, p1

    float-to-double v7, p1

    add-double/2addr v5, v7

    float-to-double v7, v1

    div-double/2addr v5, v7

    double-to-int p1, v5

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float v0, v0

    rem-float/2addr v0, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->w:I

    div-int/2addr v2, v4

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr p1, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->A:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/apicloud/a/i/a/u/a/d;->C:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x78

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    sget-object p1, Lcom/apicloud/a/i/a/u/a/d$a;->c:Lcom/apicloud/a/i/a/u/a/d$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/apicloud/a/i/a/u/a/d$a;->a:Lcom/apicloud/a/i/a/u/a/d$a;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/d;->a(Lcom/apicloud/a/i/a/u/a/d$a;)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/d;->B:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->B:F

    iget p1, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    if-nez p1, :cond_4

    iget p1, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    neg-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/d;->h:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    int-to-float v2, v1

    cmpg-float v2, v2, p1

    if-gez v2, :cond_2

    float-to-int p1, p1

    :goto_1
    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    goto :goto_2

    :cond_2
    int-to-float p1, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    float-to-int p1, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apicloud/a/i/a/u/a/d;->C:J

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/d;->B:F

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    return v3
.end method
