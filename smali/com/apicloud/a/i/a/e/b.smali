.class public Lcom/apicloud/a/i/a/e/b;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/a;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Rect;

.field private final d:Landroid/graphics/Paint;

.field private g:Lcom/apicloud/a/i/a/e/a;

.field private h:F

.field private i:F


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/high16 p1, 0x43960000    # 300.0f

    iput p1, p0, Lcom/apicloud/a/i/a/e/b;->h:F

    const/high16 p1, 0x43160000    # 150.0f

    iput p1, p0, Lcom/apicloud/a/i/a/e/b;->i:F

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/b;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private b(II)V
    .locals 2

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p2, v0, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b;->d()V

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method private f()I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/e/b;->p(I)F

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/e/b;->p(I)F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/b;->h:F

    return v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/b;->h:F

    return-void
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/b;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b;->d()V

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/b;->b(II)V

    :goto_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->g:Lcom/apicloud/a/i/a/e/a;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/a/e/a;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/b;->h()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/apicloud/a/i/a/e/a;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/e/b;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b;->g:Lcom/apicloud/a/i/a/e/a;

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->g:Lcom/apicloud/a/i/a/e/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/a;->a()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/b;->g:Lcom/apicloud/a/i/a/e/a;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/a;->b()V

    :cond_2
    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/b;->i:F

    return v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/b;->i:F

    return-void
.end method

.method public final c()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/b;->b:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->g:Lcom/apicloud/a/i/a/e/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/e/a;->b()V

    :cond_1
    return-void
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->c:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/b;->c:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/e/b;->f()I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    sub-int/2addr v2, v1

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/i/b;->onMeasure(II)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    int-to-float p1, v0

    iget p2, p0, Lcom/apicloud/a/i/a/e/b;->i:F

    iget v1, p0, Lcom/apicloud/a/i/a/e/b;->h:F

    div-float/2addr p2, v1

    mul-float/2addr p1, p2

    float-to-int v2, p1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    int-to-float p1, v2

    iget p2, p0, Lcom/apicloud/a/i/a/e/b;->h:F

    mul-float/2addr p1, p2

    iget p2, p0, Lcom/apicloud/a/i/a/e/b;->i:F

    div-float/2addr p1, p2

    float-to-int v0, p1

    :cond_3
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/apicloud/a/i/a/e/b;->setMeasuredDimension(II)V

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    int-to-float p2, v0

    invoke-interface {p1, p2}, Lcom/apicloud/c/b/b;->j(F)V

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    int-to-float p2, v2

    invoke-interface {p1, p2}, Lcom/apicloud/c/b/b;->k(F)V

    new-instance p1, Lcom/apicloud/a/i/a/e/b$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/e/b$1;-><init>(Lcom/apicloud/a/i/a/e/b;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
