.class public Lcom/apicloud/a/i/d/b/e;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lcom/apicloud/a/g/d/i;


# static fields
.field private static final q:I


# instance fields
.field private a:Lcom/apicloud/a/i/d/a/j;

.field private b:Lcom/apicloud/a/i/d/a/h;

.field private c:Lcom/apicloud/a/i/d/a/g;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private g:Lcom/apicloud/a/i/d/a/l;

.field private h:Landroid/graphics/Canvas;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Path;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Lcom/apicloud/a/i/d/a/c;

.field private m:Lcom/apicloud/a/i/d/a/a;

.field private n:Lcom/apicloud/a/i/d/a/b;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v0}, Lcom/apicloud/a/g/b;->a(I)I

    move-result v0

    sput v0, Lcom/apicloud/a/i/d/b/e;->q:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/b/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/d/a/j;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/j;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    new-instance v0, Lcom/apicloud/a/i/d/a/h;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/h;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    new-instance v0, Lcom/apicloud/a/i/d/a/g;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/g;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    const/16 v1, -0xc

    iput v1, p0, Lcom/apicloud/a/i/d/b/e;->e:I

    iput-boolean v0, p0, Lcom/apicloud/a/i/d/b/e;->o:Z

    iput-boolean v0, p0, Lcom/apicloud/a/i/d/b/e;->p:Z

    iput p1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    return-void
.end method

.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/z$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepe/c/c/z$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/apicloud/a/i/d/a/c;Lcom/apicloud/a/i/d/a/e;)Lcom/apicloud/a/i/d/a/c;
    .locals 6

    new-instance v0, Lcom/apicloud/a/i/d/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/c;-><init>()V

    iget v1, p0, Lcom/apicloud/a/i/d/a/c;->a:F

    iget-object v2, p1, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    iget v2, v2, Lcom/apicloud/a/i/d/a/l;->b:F

    iget-object v3, p1, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    iget v3, v3, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/apicloud/a/i/d/a/c;->b:F

    iget-object v3, p1, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v3, v3, Lcom/apicloud/a/i/d/a/l;->a:F

    iget-object v4, p1, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    iget v4, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/apicloud/a/i/d/a/c;->c:F

    iget-object v4, p1, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    iget v4, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    iget-object v5, p1, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v5, v5, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    iget p0, p0, Lcom/apicloud/a/i/d/a/c;->d:F

    iget-object v4, p1, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    iget v4, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget-object p1, p1, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    iget p1, p1, Lcom/apicloud/a/i/d/a/l;->a:F

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    add-float/2addr p0, p1

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/apicloud/a/i/d/a/c;->a(FFFF)V

    return-object v0
.end method

.method private static a(Lcom/apicloud/a/i/d/a/b;Lcom/apicloud/a/i/d/a/c;)Lcom/apicloud/a/i/d/a/e;
    .locals 10

    new-instance v9, Lcom/apicloud/a/i/d/a/e;

    invoke-direct {v9}, Lcom/apicloud/a/i/d/a/e;-><init>()V

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    iget v1, p1, Lcom/apicloud/a/i/d/a/c;->d:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->a:F

    iget v3, p1, Lcom/apicloud/a/i/d/a/c;->a:F

    sub-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    iget v4, p1, Lcom/apicloud/a/i/d/a/c;->b:F

    sub-float/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->b:F

    iget v5, p1, Lcom/apicloud/a/i/d/a/c;->a:F

    sub-float/2addr v0, v5

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    iget v6, p1, Lcom/apicloud/a/i/d/a/c;->d:F

    sub-float/2addr v0, v6

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->c:F

    iget v7, p1, Lcom/apicloud/a/i/d/a/c;->c:F

    sub-float/2addr v0, v7

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v0, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    iget v8, p1, Lcom/apicloud/a/i/d/a/c;->b:F

    sub-float/2addr v0, v8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iget p0, p0, Lcom/apicloud/a/i/d/a/b;->d:F

    iget p1, p1, Lcom/apicloud/a/i/d/a/c;->c:F

    sub-float/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    move-object v0, v9

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/apicloud/a/i/d/a/e;->a(FFFFFFFF)V

    return-object v9
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V
    .locals 10

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iput v1, p2, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v2

    div-float/2addr v1, p2

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v1

    sub-float/2addr v3, p1

    mul-float/2addr p0, p0

    mul-float p1, p2, p2

    mul-float v4, p1, v1

    mul-float/2addr v4, v1

    add-float/2addr v4, p0

    mul-float v5, p2, v2

    mul-float/2addr v5, p2

    mul-float/2addr v5, v3

    mul-float/2addr v5, v1

    mul-float p2, v3, v3

    sub-float/2addr p0, p2

    mul-float/2addr p1, p0

    div-float/2addr p1, v4

    float-to-double p0, p1

    mul-float/2addr v4, v2

    div-float p2, v5, v4

    float-to-double v6, p2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr p0, v6

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p1, v5

    div-float/2addr p1, v4

    add-float p2, p1, p0

    sub-float/2addr p1, p0

    mul-float p0, v1, p2

    add-float/2addr p0, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    const/4 v2, 0x0

    aget-object v2, p3, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, v3

    invoke-virtual {v2, p2, p0}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x1

    aget-object p0, p3, p0

    iget p2, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/z$a;

    invoke-direct {v0}, Lcom/deepe/c/c/z$a;-><init>()V

    iput-object p1, v0, Lcom/deepe/c/c/z$a;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/deepe/c/c/z;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/deepe/c/c/z$a;

    invoke-direct {v0}, Lcom/deepe/c/c/z$a;-><init>()V

    iput-object p1, v0, Lcom/deepe/c/c/z$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/deepe/c/c/z;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->l()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->invalidateSelf()V

    return-void
.end method

.method private a([FZZ[F)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/apicloud/a/i/d/b/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/i/d/b/e;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, v0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/apicloud/a/i/d/b/e;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget-object v3, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-static {v2, v3}, Lcom/apicloud/a/i/d/b/e;->a(Lcom/apicloud/a/i/d/a/b;Lcom/apicloud/a/i/d/a/c;)Lcom/apicloud/a/i/d/a/e;

    move-result-object v2

    iget-object v3, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-static {v3, v2}, Lcom/apicloud/a/i/d/b/e;->a(Lcom/apicloud/a/i/d/a/c;Lcom/apicloud/a/i/d/a/e;)Lcom/apicloud/a/i/d/a/c;

    move-result-object v3

    new-instance v4, Lcom/apicloud/a/i/d/a/l;

    iget v5, v3, Lcom/apicloud/a/i/d/a/c;->d:F

    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr v5, v6

    iget v7, v3, Lcom/apicloud/a/i/d/a/c;->b:F

    add-float/2addr v5, v7

    iget v7, v3, Lcom/apicloud/a/i/d/a/c;->a:F

    add-float/2addr v7, v6

    iget v6, v3, Lcom/apicloud/a/i/d/a/c;->c:F

    add-float/2addr v7, v6

    invoke-direct {v4, v5, v7}, Lcom/apicloud/a/i/d/a/l;-><init>(FF)V

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v6, 0x1

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_1
    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    :cond_2
    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->f:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->g:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v4, v5}, Lcom/apicloud/a/i/d/a/l;->a(Lcom/apicloud/a/i/d/a/l;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/apicloud/a/i/d/b/e;->l()V

    invoke-virtual {v4}, Lcom/apicloud/a/i/d/a/l;->c()I

    move-result v5

    invoke-virtual {v4}, Lcom/apicloud/a/i/d/a/l;->d()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Lcom/apicloud/a/i/d/b/e;->f:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v8, v0, Lcom/apicloud/a/i/d/b/e;->f:Landroid/graphics/Bitmap;

    invoke-direct {v5, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v5, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iput-object v4, v0, Lcom/apicloud/a/i/d/b/e;->g:Lcom/apicloud/a/i/d/a/l;

    :goto_1
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v8, Lcom/apicloud/a/i/d/a/d;

    invoke-direct {v8}, Lcom/apicloud/a/i/d/a/d;-><init>()V

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/graphics/PointF;

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    aput-object v10, v9, v6

    new-instance v10, Landroid/graphics/PointF;

    iget-object v12, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v12, v12, Lcom/apicloud/a/i/d/a/c;->d:F

    iget-object v13, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v13, v13, Lcom/apicloud/a/i/d/a/c;->a:F

    invoke-direct {v10, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v12, v2, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v12}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    iget v12, v10, Landroid/graphics/PointF;->x:F

    iget v15, v10, Landroid/graphics/PointF;->y:F

    iget-object v7, v2, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    iget v7, v7, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v7, v13

    iget-object v11, v2, Lcom/apicloud/a/i/d/a/e;->a:Lcom/apicloud/a/i/d/a/l;

    iget v11, v11, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v11, v13

    invoke-virtual {v8, v12, v15, v7, v11}, Lcom/apicloud/a/i/d/a/d;->a(FFFF)V

    invoke-virtual {v5, v14, v14}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {v8, v5, v10, v9}, Lcom/apicloud/a/i/d/b/e;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V

    aget-object v7, v9, v6

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v9, v6

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v9, v6

    invoke-virtual {v10, v7}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_4
    new-instance v7, Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v11, v11, Lcom/apicloud/a/i/d/a/c;->d:F

    iget v12, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    iget-object v15, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v15, v15, Lcom/apicloud/a/i/d/a/c;->c:F

    sub-float/2addr v12, v15

    invoke-direct {v7, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v11, v2, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v11}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v11

    if-eqz v11, :cond_5

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget-object v15, v2, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    iget v15, v15, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v15, v13

    sub-float/2addr v12, v15

    iget-object v15, v2, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    iget v15, v15, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v15, v13

    iget-object v6, v2, Lcom/apicloud/a/i/d/a/e;->c:Lcom/apicloud/a/i/d/a/l;

    iget v6, v6, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v6, v13

    invoke-virtual {v8, v11, v12, v15, v6}, Lcom/apicloud/a/i/d/a/d;->a(FFFF)V

    iget v6, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v5, v14, v6}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {v8, v5, v7, v9}, Lcom/apicloud/a/i/d/b/e;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V

    const/4 v6, 0x1

    aget-object v11, v9, v6

    iget v11, v11, Landroid/graphics/PointF;->x:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    aget-object v11, v9, v6

    iget v11, v11, Landroid/graphics/PointF;->y:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    aget-object v6, v9, v6

    invoke-virtual {v7, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_5
    new-instance v6, Landroid/graphics/PointF;

    iget v11, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget-object v12, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v12, v12, Lcom/apicloud/a/i/d/a/c;->b:F

    sub-float/2addr v11, v12

    iget-object v12, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v12, v12, Lcom/apicloud/a/i/d/a/c;->a:F

    invoke-direct {v6, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v11, v2, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v11}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget-object v12, v2, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    iget v12, v12, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    iget-object v15, v2, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    iget v15, v15, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v15, v13

    iget-object v14, v2, Lcom/apicloud/a/i/d/a/e;->b:Lcom/apicloud/a/i/d/a/l;

    iget v14, v14, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v14, v13

    invoke-virtual {v8, v11, v12, v15, v14}, Lcom/apicloud/a/i/d/a/d;->a(FFFF)V

    iget v11, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {v8, v5, v6, v9}, Lcom/apicloud/a/i/d/b/e;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V

    const/4 v11, 0x0

    aget-object v12, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_6

    aget-object v12, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_6

    aget-object v12, v9, v11

    invoke-virtual {v6, v12}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_6
    new-instance v11, Landroid/graphics/PointF;

    iget v12, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget-object v14, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v14, v14, Lcom/apicloud/a/i/d/a/c;->b:F

    sub-float/2addr v12, v14

    iget v14, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    iget-object v15, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v15, v15, Lcom/apicloud/a/i/d/a/c;->c:F

    sub-float/2addr v14, v15

    invoke-direct {v11, v12, v14}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v12, v2, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    invoke-virtual {v12}, Lcom/apicloud/a/i/d/a/l;->a()Z

    move-result v12

    if-eqz v12, :cond_7

    iget v12, v11, Landroid/graphics/PointF;->x:F

    iget-object v14, v2, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v14, v14, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v14, v13

    sub-float/2addr v12, v14

    iget v14, v11, Landroid/graphics/PointF;->y:F

    iget-object v15, v2, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v15, v15, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v15, v13

    sub-float/2addr v14, v15

    iget-object v15, v2, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v15, v15, Lcom/apicloud/a/i/d/a/l;->a:F

    mul-float/2addr v15, v13

    move-object/from16 v16, v1

    iget-object v1, v2, Lcom/apicloud/a/i/d/a/e;->d:Lcom/apicloud/a/i/d/a/l;

    iget v1, v1, Lcom/apicloud/a/i/d/a/l;->b:F

    mul-float/2addr v1, v13

    invoke-virtual {v8, v12, v14, v15, v1}, Lcom/apicloud/a/i/d/a/d;->a(FFFF)V

    iget v1, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget v12, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v5, v1, v12}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {v8, v5, v11, v9}, Lcom/apicloud/a/i/d/b/e;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Landroid/graphics/PointF;)V

    const/4 v1, 0x0

    aget-object v5, v9, v1

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, v9, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_8

    aget-object v5, v9, v1

    invoke-virtual {v11, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_7
    move-object/from16 v16, v1

    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v1, v1, Lcom/apicloud/a/i/d/a/c;->b:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_9

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v8, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    invoke-virtual {v1, v8, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget v8, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v5, v5, Lcom/apicloud/a/i/d/a/a;->d:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_9
    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v1, v1, Lcom/apicloud/a/i/d/a/c;->c:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_a

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v8, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v7, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v11, Landroid/graphics/PointF;->x:F

    iget v8, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v5, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget v8, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v5, v5, Lcom/apicloud/a/i/d/a/a;->c:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v8, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_a
    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v1, v1, Lcom/apicloud/a/i/d/a/c;->d:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_b

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v8, v10, Landroid/graphics/PointF;->x:F

    iget v9, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v7, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v5, v5, Lcom/apicloud/a/i/d/a/a;->b:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_b
    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v1, v1, Lcom/apicloud/a/i/d/a/c;->a:F

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_c

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v7, v10, Landroid/graphics/PointF;->x:F

    iget v8, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget v6, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v5, v5, Lcom/apicloud/a/i/d/a/a;->a:I

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_c
    invoke-virtual {v2}, Lcom/apicloud/a/i/d/a/e;->a()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v2, v2, Lcom/apicloud/a/i/d/a/c;->d:F

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v5, v5, Lcom/apicloud/a/i/d/a/c;->a:F

    iget v6, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget-object v7, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v7, v7, Lcom/apicloud/a/i/d/a/c;->b:F

    sub-float/2addr v6, v7

    iget v7, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    iget-object v8, v0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v8, v8, Lcom/apicloud/a/i/d/a/c;->c:F

    sub-float/2addr v7, v8

    invoke-direct {v1, v2, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v2, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v6, p1

    invoke-virtual {v2, v1, v6, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    sget v2, Lcom/apicloud/a/i/d/b/e;->q:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    :cond_d
    if-eqz p2, :cond_e

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    iget v2, v0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_e
    if-eqz p3, :cond_f

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    iget v5, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4}, Lcom/apicloud/a/i/d/a/l;->c()I

    move-result v2

    invoke-virtual {v4}, Lcom/apicloud/a/i/d/a/l;->d()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v6, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p4

    invoke-virtual {v6, v1, v8, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    sget v6, Lcom/apicloud/a/g/b;->a:I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    iget-object v6, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    invoke-virtual {v5, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->h:Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->i:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, v0, Lcom/apicloud/a/i/d/b/e;->j:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_f
    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->c()I

    move-result v1

    iget v2, v4, Lcom/apicloud/a/i/d/a/l;->a:F

    float-to-int v2, v2

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->d()I

    move-result v5

    sub-int/2addr v2, v5

    iget v4, v4, Lcom/apicloud/a/i/d/a/l;->b:F

    float-to-int v4, v4

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->e()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->f()I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Lcom/apicloud/a/i/d/a/g;->a(IIII)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "view-border-drawable@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/apicloud/a/i/d/b/c;

    iget-object v4, v0, Lcom/apicloud/a/i/d/b/e;->f:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/apicloud/a/i/d/b/c;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, v16

    invoke-static {v1, v3}, Lcom/apicloud/a/i/d/b/e;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lcom/deepe/c/c/z;->a()Lcom/deepe/c/c/z;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/c/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepe/c/c/z$a;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepe/c/c/z$a;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/a/b;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/apicloud/a/i/d/a/h;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/apicloud/a/i/d/a/h;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/apicloud/a/i/d/a/h;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    const/4 v5, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/apicloud/a/i/d/a/h;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v2, v0

    if-nez v5, :cond_1

    cmpl-float v5, v2, v1

    if-nez v5, :cond_1

    cmpl-float v5, v2, v3

    if-nez v5, :cond_1

    cmpl-float v5, v2, v4

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    cmpl-float v6, v0, v2

    if-lez v6, :cond_2

    int-to-float v6, v5

    int-to-float v7, p1

    invoke-static {v6, v7, v0}, Lcom/apicloud/a/i/d/c;->a(FFF)F

    move-result v0

    :cond_2
    cmpl-float v6, v1, v2

    if-lez v6, :cond_3

    int-to-float v6, v5

    int-to-float v7, p1

    invoke-static {v6, v7, v1}, Lcom/apicloud/a/i/d/c;->a(FFF)F

    move-result v1

    :cond_3
    cmpl-float v6, v3, v2

    if-lez v6, :cond_4

    int-to-float v6, v5

    int-to-float v7, p1

    invoke-static {v6, v7, v3}, Lcom/apicloud/a/i/d/c;->a(FFF)F

    move-result v3

    :cond_4
    cmpl-float v2, v4, v2

    if-lez v2, :cond_5

    int-to-float v2, v5

    int-to-float p1, p1

    invoke-static {v2, p1, v4}, Lcom/apicloud/a/i/d/c;->a(FFF)F

    move-result v4

    :cond_5
    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/apicloud/a/i/d/a/b;->a(FFFF)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->e:I

    const/16 v2, -0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v1, v1, Lcom/apicloud/a/i/d/a/c;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float v1, v3, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v3, v1, Lcom/apicloud/a/i/d/a/c;->d:F

    :cond_2
    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-virtual {v2}, Lcom/apicloud/a/i/d/a/c;->f()I

    move-result v2

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v4, v4, Lcom/apicloud/a/i/d/a/a;->b:I

    invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_3
    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->l()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->invalidateSelf()V

    return-void
.end method

.method private c(Z)V
    .locals 13

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v4

    aput-object v5, v6, v3

    invoke-direct {v0, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget v6, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v6, p0, Lcom/apicloud/a/i/d/b/e;->e:I

    const/16 v7, -0xc

    const/4 v8, 0x0

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v2, v2, Lcom/apicloud/a/i/d/a/c;->d:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v8, v2, v6

    div-float v2, v8, v6

    goto :goto_1

    :cond_1
    if-ne v6, v2, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v8, v2, Lcom/apicloud/a/i/d/a/c;->d:F

    :cond_2
    move v2, v8

    :goto_1
    iget-object v6, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-virtual {v6}, Lcom/apicloud/a/i/d/a/c;->f()I

    move-result v6

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v7, v7, Lcom/apicloud/a/i/d/a/a;->b:I

    invoke-virtual {v5, v6, v7, v8, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {p1}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    :cond_3
    invoke-static {v3}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v12

    const/4 v8, 0x0

    move-object v7, v0

    move v9, v12

    move v10, v12

    move v11, v12

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->l()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->invalidateSelf()V

    return-void
.end method

.method private d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/d/b/e;->o:Z

    return-void
.end method

.method private h()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->i()V

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->j()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/b/e;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v4, 0x3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/apicloud/a/i/d/a/c;->a(FFFF)V

    return-void
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/d/a/a;

    invoke-direct {v0}, Lcom/apicloud/a/i/d/a/a;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    const/4 v1, 0x1

    sget v2, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/d/a/g;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    const/4 v2, 0x2

    sget v3, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/a/i/d/a/g;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    const/4 v3, 0x3

    sget v4, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/apicloud/a/i/d/a/g;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    const/4 v4, 0x0

    sget v5, Lcom/apicloud/a/g/b;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/apicloud/a/i/d/a/g;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/apicloud/a/i/d/a/a;->a(IIII)V

    return-void
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->l()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->invalidateSelf()V

    return-void
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/e;->g:Lcom/apicloud/a/i/d/a/l;

    return-void
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/d/b/e;->o:Z

    return v0
.end method

.method private n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/d/b/e;->p:Z

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "border-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    return v0
.end method

.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(IF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(IF)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(IF)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(IF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->b(IF)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/d/b/e;->b(IF)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/d/b/e;->b(IF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, p4}, Lcom/apicloud/a/i/d/b/e;->b(IF)V

    return-void
.end method

.method public a(FI)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/e;->a(F)V

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/d/b/e;->e(I)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/e;->g(I)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/d/a/j;->a(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->c:Lcom/apicloud/a/i/d/a/g;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/d/a/g;->a(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Rect;)[F
    .locals 5

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;->b(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget p1, p1, Lcom/apicloud/a/i/d/a/b;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget v0, v0, Lcom/apicloud/a/i/d/a/b;->b:F

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget v1, v1, Lcom/apicloud/a/i/d/a/b;->d:F

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget v2, v2, Lcom/apicloud/a/i/d/a/b;->c:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput v0, v3, p1

    const/4 p1, 0x2

    aput v1, v3, p1

    const/4 p1, 0x3

    aput v2, v3, p1

    return-object v3
.end method

.method public b(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/apicloud/a/i/d/b/e;->a(FFFF)V

    return-void
.end method

.method public b(IF)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->b:Lcom/apicloud/a/i/d/a/h;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/d/a/h;->a(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    :cond_0
    return-void
.end method

.method public b()[F
    .locals 9

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v5, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/e;->a:Lcom/apicloud/a/i/d/a/j;

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v1}, Lcom/apicloud/a/i/d/a/j;->b(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v7, 0x4

    new-array v7, v7, [F

    aput v0, v7, v2

    aput v3, v7, v4

    aput v5, v7, v6

    aput v1, v7, v8

    return-object v7
.end method

.method public c()[F
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/d/b/e;->a(Landroid/graphics/Rect;)[F

    move-result-object v0

    return-object v0
.end method

.method public d()[F
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/b/e;->b(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object v0

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->e()V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 8

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->m()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->h()V

    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {v1}, Lcom/apicloud/a/g/b;->a(I)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->a()Z

    move-result v3

    if-nez v1, :cond_2

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->k()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {v4}, Lcom/apicloud/a/i/d/a/b;->a()Z

    move-result v4

    if-eqz v1, :cond_3

    if-nez v3, :cond_3

    invoke-direct {p0, v4}, Lcom/apicloud/a/i/d/b/e;->a(Z)V

    return-void

    :cond_3
    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    invoke-virtual {v3}, Lcom/apicloud/a/i/d/a/c;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    iget-object v5, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    invoke-virtual {v5}, Lcom/apicloud/a/i/d/a/a;->b()Z

    move-result v5

    iget-object v6, p0, Lcom/apicloud/a/i/d/b/e;->m:Lcom/apicloud/a/i/d/a/a;

    iget v6, v6, Lcom/apicloud/a/i/d/a/a;->b:I

    invoke-static {v6}, Lcom/apicloud/a/g/b;->a(I)I

    move-result v6

    sget v7, Lcom/apicloud/a/i/d/b/e;->q:I

    if-ne v6, v7, :cond_5

    move v0, v2

    :cond_5
    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    if-eqz v0, :cond_6

    invoke-direct {p0, v4}, Lcom/apicloud/a/i/d/b/e;->b(Z)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v4}, Lcom/apicloud/a/i/d/b/e;->c(Z)V

    :goto_2
    return-void

    :cond_7
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/d/a/b;->b()[F

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/e;->n:Lcom/apicloud/a/i/d/a/b;

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v3, v3, Lcom/apicloud/a/i/d/a/c;->d:F

    iget-object v5, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v5, v5, Lcom/apicloud/a/i/d/a/c;->a:F

    iget-object v6, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v6, v6, Lcom/apicloud/a/i/d/a/c;->b:F

    iget-object v7, p0, Lcom/apicloud/a/i/d/b/e;->l:Lcom/apicloud/a/i/d/a/c;

    iget v7, v7, Lcom/apicloud/a/i/d/a/c;->c:F

    invoke-virtual {v2, v3, v5, v6, v7}, Lcom/apicloud/a/i/d/a/b;->b(FFFF)[F

    move-result-object v2

    invoke-direct {p0, v2, v1, v4, v0}, Lcom/apicloud/a/i/d/b/e;->a([FZZ[F)V

    :cond_8
    :goto_3
    return-void
.end method

.method public e(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/e;->a(II)V

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/d/b/e;->e:I

    return-void
.end method

.method protected final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/d/b/e;->p:Z

    return v0
.end method

.method protected g()Landroid/graphics/RectF;
    .locals 2

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public g(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {p1, v0}, Lcom/apicloud/a/i/d/a/k;->a(II)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    :cond_0
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {v0}, Lcom/apicloud/a/g/b;->a(I)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method public invalidateSelf()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;->n()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/d/b/e;->d(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/e;->e()V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {v0}, Lcom/apicloud/a/g/b;->b(I)I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {v1}, Lcom/apicloud/a/g/b;->c(I)I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    invoke-static {v2}, Lcom/apicloud/a/g/b;->d(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/apicloud/a/g/b;->a(IIII)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/d/b/e;->d:I

    :goto_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/e;->k:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method
