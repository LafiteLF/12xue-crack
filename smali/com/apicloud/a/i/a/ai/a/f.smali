.class Lcom/apicloud/a/i/a/ai/a/f;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final e:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/apicloud/a/i/a/ai/a/f;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/Paint;

.field private d:F

.field private f:Z

.field private g:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/apicloud/a/i/a/ai/a/f$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "progress"

    invoke-direct {v0, v1, v2}, Lcom/apicloud/a/i/a/ai/a/f$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/apicloud/a/i/a/ai/a/f;->e:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/f;)F
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/f;->d()F

    move-result p0

    return p0
.end method

.method private a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->invalidateSelf()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/f;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/f;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/f;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/a/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    return p0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/ai/a/f;->e:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    aput v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    aput v4, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    new-instance v1, Lcom/apicloud/a/i/a/ai/a/f$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/ai/a/f$2;-><init>(Lcom/apicloud/a/i/a/ai/a/f;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private d()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/f;->a(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/f;->c()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/f;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/f;->b(Z)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/f;->c()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/f;->a(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f155555

    mul-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v0, v1

    const v2, 0x40666666    # 3.6f

    div-float v2, v0, v2

    iget v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v2

    const/high16 v3, 0x3fe00000    # 1.75f

    div-float v3, v0, v3

    iget v5, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    invoke-static {v1, v3, v5}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v1

    iget v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    invoke-static {v4, v1, v3}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v1, v5

    add-float/2addr v6, v2

    add-float/2addr v2, v1

    iget v7, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    invoke-static {v6, v2, v7}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v7

    iget-object v8, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v8, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    neg-float v9, v0

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v1, 0x41000000    # 8.0f

    div-float v1, v0, v1

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    invoke-static {v4, v1, v2}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v1

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->d:F

    :goto_0
    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    const/high16 v3, 0x42b40000    # 90.0f

    if-eqz v2, :cond_1

    move v4, v3

    :cond_1
    add-float/2addr v3, v4

    invoke-static {v4, v3, v1}, Lcom/apicloud/a/i/a/ai/a/f;->a(FFF)F

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    div-float/2addr v6, v5

    sub-float/2addr v1, v6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    div-float/2addr v0, v5

    add-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->g:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->f:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ai/a/f;->a(F)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/f;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/f;->invalidateSelf()V

    return-void
.end method
