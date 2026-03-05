.class final Lcom/apicloud/a/i/a/e/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/b/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/e/g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/e/b;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/apicloud/a/i/a/e/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Paint;

.field private d:Lcom/apicloud/a/i/a/e/i;

.field private e:Lcom/apicloud/a/i/a/e/b/ab;

.field private f:Lcom/apicloud/a/i/a/e/b/ac;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/i/a/e/b/z;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/e/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->j:F

    iput v0, p0, Lcom/apicloud/a/i/a/e/g;->k:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    return-void
.end method

.method private final a(Lcom/apicloud/a/i/a/e/b/ac;Z)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/e/i;->a(Lcom/apicloud/a/i/a/e/b/ac;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b/ac;->b()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/b/ac;->a()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/b/ac;->a()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/e/a/f;)F
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/f;->b()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/f;->g()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return p1
.end method

.method public final a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/b/z;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/e/b/z;

    if-eqz p1, :cond_0

    const-string v1, "obj-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/e/h;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/b;->h()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/e/h;-><init>(Lcom/apicloud/a/d;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public final a()Lcom/apicloud/a/i/a/e/b;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    return-object v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    return-void
.end method

.method public final a(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    return-void
.end method

.method public final a(FFFF)V
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->d()Landroid/graphics/Paint;

    move-result-object v5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final a(FFFFFF)V
    .locals 8

    new-instance v7, Lcom/apicloud/a/i/a/e/b/ac;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/apicloud/a/i/a/e/b/ac;-><init>(FFFFFF)V

    const/4 p1, 0x0

    invoke-direct {p0, v7, p1}, Lcom/apicloud/a/i/a/e/g;->a(Lcom/apicloud/a/i/a/e/b/ac;Z)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/g;->k:I

    return-void
.end method

.method public final a(II)V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    const/high16 v1, 0x41280000    # 10.5f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    sget-object v1, Lcom/apicloud/a/i/a/e/a/f;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->r()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->g()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/e/b;->a(II)V

    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->d()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final b()Lcom/apicloud/a/i/a/e/b/aa;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/g;->j:F

    return-void
.end method

.method public final b(FF)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final b(FFFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v8, 0x0

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    add-float v3, p1, p3

    add-float v4, p2, p4

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, v6

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sget-object p1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v7, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    add-float/2addr p3, p1

    add-float/2addr p4, p2

    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v8, p1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :goto_0
    return-void
.end method

.method public final b(FFFFFF)V
    .locals 8

    new-instance v7, Lcom/apicloud/a/i/a/e/b/ac;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/apicloud/a/i/a/e/b/ac;-><init>(FFFFFF)V

    const/4 p1, 0x1

    invoke-direct {p0, v7, p1}, Lcom/apicloud/a/i/a/e/g;->a(Lcom/apicloud/a/i/a/e/b/ac;Z)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/g;->l:Ljava/lang/String;

    return-void
.end method

.method public final c()Lcom/apicloud/a/i/a/e/b/ac;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    return-object v0
.end method

.method public final c(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    return-void
.end method

.method public final d()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final e()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/e/b;->c()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/e/b;->invalidate()V

    return-void
.end method

.method public final g()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/e/i;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/e/i;-><init>(Lcom/apicloud/a/i/a/e/b/ac;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->a:Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/e/b;->c()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Lcom/apicloud/a/i/a/e/i;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/e/i;->close()V

    return-void
.end method

.method public final j()I
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/e/g;->k:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Lcom/deepe/c/b/c;->a(II)I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    invoke-static {v1, v0}, Lcom/deepe/c/b/c;->a(II)I

    move-result v0

    return v0
.end method

.method public l()Lcom/apicloud/a/i/a/e/b/ab;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->e:Lcom/apicloud/a/i/a/e/b/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/e/j;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/e/j;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->e:Lcom/apicloud/a/i/a/e/b/ab;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->e:Lcom/apicloud/a/i/a/e/b/ab;

    return-object v0
.end method

.method public final m()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/g;->j:F

    return v0
.end method

.method public n()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->d:Lcom/apicloud/a/i/a/e/i;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Lcom/apicloud/a/i/a/e/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/e/g$a;-><init>(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/i/a/e/g$a;)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    iput-object v1, v0, Lcom/apicloud/a/i/a/e/g$a;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    iput v1, v0, Lcom/apicloud/a/i/a/e/g$a;->a:I

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->k:I

    iput v1, v0, Lcom/apicloud/a/i/a/e/g$a;->e:I

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->j:F

    iput v1, v0, Lcom/apicloud/a/i/a/e/g$a;->c:F

    iget v1, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    iput v1, v0, Lcom/apicloud/a/i/a/e/g$a;->b:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/apicloud/a/i/a/e/g$a;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    return-void
.end method

.method public final p()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/g;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/e/g$a;

    iget-object v1, v0, Lcom/apicloud/a/i/a/e/g$a;->d:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/apicloud/a/i/a/e/g;->c:Landroid/graphics/Paint;

    iget v1, v0, Lcom/apicloud/a/i/a/e/g$a;->a:I

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->h:I

    iget v1, v0, Lcom/apicloud/a/i/a/e/g$a;->e:I

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->k:I

    iget v1, v0, Lcom/apicloud/a/i/a/e/g$a;->b:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->i:F

    iget v1, v0, Lcom/apicloud/a/i/a/e/g$a;->c:F

    iput v1, p0, Lcom/apicloud/a/i/a/e/g;->j:F

    iget-object v0, v0, Lcom/apicloud/a/i/a/e/g$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->l:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Can not restore canvas state. There are no stored states in the GraphicalContext2D"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final r()V
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/e/b/ac;

    invoke-direct {v0}, Lcom/apicloud/a/i/a/e/b/ac;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/g;->f:Lcom/apicloud/a/i/a/e/b/ac;

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/g;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method
