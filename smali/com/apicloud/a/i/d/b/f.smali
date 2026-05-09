.class public Lcom/apicloud/a/i/d/b/f;
.super Lcom/apicloud/a/i/d/b/a;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:Landroid/graphics/Path;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/a;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;-><init>(I)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->k()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->i()F

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->j()F

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->p()F

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->l()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->m()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    const/4 v8, 0x0

    if-ge v6, v7, :cond_1

    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->g()Landroid/graphics/RectF;

    move-result-object v6

    sget-object v7, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    cmpl-float v6, v3, v8

    if-lez v6, :cond_2

    invoke-virtual {v4, v3, v1, v2, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    cmpl-float v0, v3, v8

    if-lez v0, :cond_2

    new-instance v0, Landroid/graphics/BlurMaskFilter;

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v3, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_2
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    :goto_0
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static b(I)Lcom/apicloud/a/i/d/b/f;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/b/g;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/d/b/g;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/d/b/f;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/d/b/f;-><init>(I)V

    return-object v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->r()F

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/i/d/b/f;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->g()Landroid/graphics/RectF;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/apicloud/a/i/d/b/f;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-float v5, v2

    neg-float v6, v0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/d/b/f;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :catch_0
    const-string p1, "Create shadow layer OOM."

    invoke-static {p1}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static h()Lcom/apicloud/a/i/d/b/f;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/b/g;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/b/g;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/d/b/f;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/b/f;-><init>()V

    return-object v0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/f;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method private final r()F
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->p()F

    move-result v0

    sget v1, Lcom/apicloud/a/a/d;->d:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget v0, Lcom/apicloud/a/a/d;->d:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method private final s()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shadow-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/b/f;->a:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/b/f;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/b/f;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/b/f;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/b/f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(FF)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->a:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->b:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/d/b/f;->a:F

    iput p2, p0, Lcom/apicloud/a/i/d/b/f;->b:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    cmpl-float p1, p2, v0

    if-eqz p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->q()V

    :cond_2
    return-void
.end method

.method public final a(FFFI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/d/b/f;->a(FF)V

    invoke-virtual {p0, p3}, Lcom/apicloud/a/i/d/b/f;->c(F)V

    invoke-virtual {p0, p4}, Lcom/apicloud/a/i/d/b/f;->c(I)V

    return-void
.end method

.method public final c(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->c:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/d/b/f;->c:F

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->q()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/d/b/f;->e:I

    return-void
.end method

.method public final d(F)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->d:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/apicloud/a/i/d/b/f;->d:F

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->q()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/a;->draw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/f;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/f;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method protected g()Landroid/graphics/RectF;
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/f;->r()F

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->i()F

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->j()F

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    neg-float v5, v2

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    neg-float v5, v3

    sub-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v3

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->h:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final i()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->a:F

    return v0
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->b:F

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->e:I

    return v0
.end method

.method final l()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->g:Landroid/graphics/Paint;

    return-object v0
.end method

.method final m()Landroid/graphics/Path;
    .locals 15

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->c()[F

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    const/4 v6, 0x3

    aget v2, v2, v6

    add-float v6, v3, v4

    int-to-float v1, v1

    cmpl-float v7, v6, v1

    if-lez v7, :cond_0

    div-float v6, v1, v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    :cond_0
    add-float v6, v4, v5

    int-to-float v0, v0

    cmpl-float v7, v6, v0

    if-lez v7, :cond_1

    div-float v6, v0, v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    :cond_1
    add-float v6, v5, v2

    cmpl-float v7, v6, v0

    if-lez v7, :cond_2

    div-float v6, v1, v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    :cond_2
    add-float v6, v3, v2

    cmpl-float v7, v6, v0

    if-lez v7, :cond_3

    div-float v6, v1, v6

    mul-float/2addr v3, v6

    mul-float/2addr v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    :cond_3
    iget-object v6, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v11, v3, v6

    mul-float v3, v4, v6

    mul-float/2addr v5, v6

    mul-float/2addr v2, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    const/high16 v12, 0x43340000    # 180.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    move v10, v11

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-float v8, v1, v3

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    const/high16 v12, -0x3d4c0000    # -90.0f

    move v10, v1

    move v11, v3

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    sub-float v8, v1, v5

    sub-float v9, v0, v5

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    const/4 v12, 0x0

    move v11, v0

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/4 v8, 0x0

    sub-float v9, v0, v2

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    const/high16 v12, 0x42b40000    # 90.0f

    move v10, v2

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->f:Landroid/graphics/Path;

    return-object v0
.end method

.method protected final n()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final o()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/f;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->b:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->p()F

    move-result v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final p()F
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/d/b/f;->c:F

    iget v1, p0, Lcom/apicloud/a/i/d/b/f;->d:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "shadow-box"

    goto :goto_0

    :cond_0
    const-string v1, "background"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/f;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
