.class public Lcom/apicloud/a/i/d/b/a;
.super Lcom/apicloud/a/i/d/b/e;

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/apicloud/a/g/l;

.field private c:Lcom/apicloud/a/g/l;

.field private d:Lcom/apicloud/a/g/l;

.field private e:Lcom/apicloud/a/g/l;

.field private f:Landroid/graphics/Shader$TileMode;

.field private g:Landroid/graphics/Shader$TileMode;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Path;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->f:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->g:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/e;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->f:Landroid/graphics/Shader$TileMode;

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->g:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method private static a(IIIII)I
    .locals 1

    invoke-static {p0}, Landroid/view/Gravity;->isHorizontal(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_0

    or-int/lit8 p0, p0, 0x7

    goto :goto_0

    :cond_0
    const v0, 0x800003

    or-int/2addr p0, v0

    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/view/Gravity;->isVertical(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-gez p2, :cond_2

    or-int/lit8 p0, p0, 0x70

    goto :goto_1

    :cond_2
    or-int/lit8 p0, p0, 0x30

    :cond_3
    :goto_1
    if-gez p1, :cond_4

    if-gez p3, :cond_4

    or-int/lit8 p0, p0, 0x7

    :cond_4
    if-gez p2, :cond_5

    if-gez p4, :cond_5

    or-int/lit8 p0, p0, 0x70

    :cond_5
    return p0
.end method

.method private final a(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    return-void
.end method

.method private a(ILandroid/graphics/Rect;)[I
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    const/16 v3, -0x10

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v3, :cond_4

    cmpl-float p1, v2, p2

    if-lez p1, :cond_3

    :cond_2
    move v2, p2

    :cond_3
    :goto_0
    move v4, v2

    goto :goto_1

    :cond_4
    const/16 v3, -0xf

    if-ne p1, v3, :cond_5

    cmpl-float p1, v2, p2

    if-lez p1, :cond_2

    goto :goto_0

    :cond_5
    const/4 p2, -0x2

    :goto_1
    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object v0
.end method

.method private b(II)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    if-ne v0, v2, :cond_3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private b(Landroid/graphics/Rect;)V
    .locals 13

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/apicloud/a/i/d/b/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Lcom/apicloud/a/i/d/b/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->d()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/d/b/d;->setCornerRadii([F)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->b()[F

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/apicloud/a/i/d/b/d;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0, v2}, Lcom/apicloud/a/i/d/b/d;->setStroke(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/apicloud/a/i/d/b/a;->j:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->c()[F

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/d/a;->a(Landroid/graphics/drawable/Drawable;[F)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->h:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->h:Landroid/graphics/Rect;

    :cond_3
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->c(Landroid/graphics/Rect;)[I

    move-result-object v0

    aget v1, v0, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/apicloud/a/i/d/b/a;->b(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p0, v3, v0}, Lcom/apicloud/a/i/d/b/a;->c(II)I

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/deepe/c/b/m;->b(Landroid/graphics/drawable/Drawable;)I

    move-result v11

    iget-object v6, p0, Lcom/apicloud/a/i/d/b/a;->h:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v2, v3, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/a;->i()I

    move-result v2

    invoke-static {v2, v1, v0, v4, v5}, Lcom/apicloud/a/i/d/b/a;->a(IIIII)I

    move-result v6

    if-gez v1, :cond_4

    move v7, v4

    goto :goto_0

    :cond_4
    move v7, v1

    :goto_0
    if-gez v0, :cond_5

    move v8, v5

    goto :goto_1

    :cond_5
    move v8, v0

    :goto_1
    iget-object v9, p0, Lcom/apicloud/a/i/d/b/a;->h:Landroid/graphics/Rect;

    move-object v10, v12

    invoke-static/range {v6 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->d(Landroid/graphics/Rect;)Landroid/graphics/Path;

    :cond_6
    :goto_2
    return-void
.end method

.method private final b(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    return-void
.end method

.method private c(II)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    return p1

    :cond_2
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    if-ne v0, v2, :cond_3

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result p2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private c(Landroid/graphics/Rect;)[I
    .locals 8

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/a;->h()Lcom/apicloud/a/g/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/d/b/a;->a(ILandroid/graphics/Rect;)[I

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_1

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/d/b/a;->a(ILandroid/graphics/Rect;)[I

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v5

    if-ne v3, v5, :cond_3

    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    iget-object v5, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    if-nez v5, :cond_5

    int-to-float v5, v2

    int-to-float v6, v0

    div-float/2addr v5, v6

    int-to-float v6, v1

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    goto :goto_1

    :cond_4
    move v2, v0

    :cond_5
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/apicloud/a/g/l;->c()I

    move-result v7

    if-ne v4, v7, :cond_6

    invoke-virtual {v6}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v5

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/apicloud/a/g/l;->c()I

    move-result v7

    if-ne v3, v7, :cond_7

    invoke-virtual {v6}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    if-nez p1, :cond_8

    div-int p1, v5, v1

    int-to-float p1, p1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_8
    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput v2, p1, v0

    aput v5, p1, v4

    return-object p1
.end method

.method private d(Landroid/graphics/Rect;)Landroid/graphics/Path;
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->b()[F

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    const/4 v3, 0x0

    aget v4, v0, v3

    add-float/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    const/4 v6, 0x2

    aget v6, v0, v6

    sub-float/2addr v5, v6

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    const/4 v6, 0x3

    aget v6, v0, v6

    sub-float/2addr p1, v6

    invoke-direct {v1, v2, v4, v5, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 p1, 0x8

    new-array p1, p1, [F

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->c()[F

    move-result-object v2

    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p1, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    iget-object p1, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    return-object p1

    :cond_1
    aget v4, v2, v3

    aget v5, v0, v3

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_2

    sub-float/2addr v4, v5

    :cond_2
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v6, v5, 0x1

    aput v4, p1, v6

    aput v4, p1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private h()Lcom/apicloud/a/g/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->b:Lcom/apicloud/a/g/l;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->c:Lcom/apicloud/a/g/l;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private i()I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    if-nez v0, :cond_0

    const/16 v0, 0x33

    return v0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->intValue()I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    if-nez v2, :cond_2

    or-int/lit8 v0, v0, 0x11

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/apicloud/a/g/l;->c()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {v1}, Lcom/apicloud/a/g/l;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :cond_3
    or-int/lit8 v0, v0, 0x30

    :goto_1
    return v0
.end method


# virtual methods
.method public final a(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)Lcom/apicloud/a/i/d/b/a;
    .locals 1

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->f:Landroid/graphics/Shader$TileMode;

    iput-object p2, p0, Lcom/apicloud/a/i/d/b/a;->g:Landroid/graphics/Shader$TileMode;

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/apicloud/a/i/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/d/b/a;->j:Z

    return-object p0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/a/i/d/b/a;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->f:Landroid/graphics/Shader$TileMode;

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->g:Landroid/graphics/Shader$TileMode;

    invoke-static {p1, v0, v1}, Lcom/apicloud/a/i/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/d/a;->a(Landroid/graphics/drawable/Drawable;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->invalidateSelf()V

    return-object p0
.end method

.method public final a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)Lcom/apicloud/a/i/d/b/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->a(Lcom/apicloud/a/g/l;)V

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/d/b/a;->b(Lcom/apicloud/a/g/l;)V

    return-object p0
.end method

.method public final b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)Lcom/apicloud/a/i/d/b/a;
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/d/b/a;->d:Lcom/apicloud/a/g/l;

    iput-object p2, p0, Lcom/apicloud/a/i/d/b/a;->e:Lcom/apicloud/a/g/l;

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->b(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->invalidateSelf()V

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->i:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 2

    invoke-super {p0}, Lcom/apicloud/a/i/d/b/e;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/a;->b(Landroid/graphics/Rect;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->setAlpha(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/a;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/d/b/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
