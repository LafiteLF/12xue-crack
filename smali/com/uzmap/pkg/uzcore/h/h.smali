.class public Lcom/uzmap/pkg/uzcore/h/h;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static final b:F


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:Z

.field private final h:Landroid/graphics/Path;

.field private i:I

.field private j:Z

.field private k:F

.field private l:F

.field private m:I

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/uzmap/pkg/uzcore/h/h;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->j:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->m:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/h;->a(I)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/h;->c(Z)V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/h;->a(F)V

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/h;->b(F)V

    const/high16 v0, 0x41900000    # 18.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->d:F

    const/high16 v0, 0x41100000    # 9.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->c:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->e:F

    const/high16 v0, 0x41c00000    # 24.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->i:I

    return-void
.end method

.method private static a(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    return p0
.end method

.method public static a(ILandroid/content/res/Resources;)Lcom/uzmap/pkg/uzcore/h/h;
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/h;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/h/h;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/h/h;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzcore/h/h;->a(Z)V

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/h/h;->a(I)V

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/h/h;->setBounds(Landroid/graphics/Rect;)V

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/h;->i:I

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    sget p1, Lcom/uzmap/pkg/uzcore/h/h;->b:F

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p1, v0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->l:F

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->n:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->f:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->f:F

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/h;->c(F)V

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->o:Z

    return-void
.end method

.method public c(F)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->g:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/h;->g:Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/h;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    invoke-static {p0}, Lcom/deepe/c/b/m;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/b/m;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget v4, p0, Lcom/uzmap/pkg/uzcore/h/h;->c:F

    mul-float/2addr v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    iget v6, p0, Lcom/uzmap/pkg/uzcore/h/h;->d:F

    iget v7, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-static {v6, v4, v7}, Lcom/uzmap/pkg/uzcore/h/h;->a(FFF)F

    move-result v4

    iget v6, p0, Lcom/uzmap/pkg/uzcore/h/h;->d:F

    iget v7, p0, Lcom/uzmap/pkg/uzcore/h/h;->e:F

    iget v8, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-static {v6, v7, v8}, Lcom/uzmap/pkg/uzcore/h/h;->a(FFF)F

    move-result v6

    const/4 v7, 0x0

    sget v8, Lcom/uzmap/pkg/uzcore/h/h;->b:F

    iget v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-static {v7, v8, v9}, Lcom/uzmap/pkg/uzcore/h/h;->a(FFF)F

    move-result v7

    if-eqz v1, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    const/16 v8, -0xb4

    :goto_2
    int-to-float v8, v8

    if-eqz v1, :cond_4

    const/16 v2, 0xb4

    :cond_4
    int-to-float v2, v2

    iget v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-static {v8, v2, v9}, Lcom/uzmap/pkg/uzcore/h/h;->a(FFF)F

    move-result v2

    float-to-double v8, v4

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-float v4, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-float v7, v7

    iget-object v8, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    iget v8, p0, Lcom/uzmap/pkg/uzcore/h/h;->f:F

    iget-object v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v9

    add-float/2addr v8, v9

    iget v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->l:F

    neg-float v9, v9

    iget v10, p0, Lcom/uzmap/pkg/uzcore/h/h;->k:F

    invoke-static {v8, v9, v10}, Lcom/uzmap/pkg/uzcore/h/h;->a(FFF)F

    move-result v8

    neg-float v6, v6

    div-float/2addr v6, v5

    iget-object v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    invoke-virtual {v9, v4, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v9, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    neg-float v8, v8

    invoke-virtual {v9, v6, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    neg-float v7, v7

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/uzmap/pkg/uzcore/h/h;->f:F

    mul-float/2addr v5, v7

    sub-float/2addr v6, v5

    float-to-int v5, v6

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v6

    add-float/2addr v4, v7

    add-float/2addr v5, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->g:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->j:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_5

    const/4 v3, -0x1

    :cond_5
    int-to-float v0, v3

    mul-float/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->h:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->i:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->i:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/h;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/h;->invalidateSelf()V

    return-void
.end method
