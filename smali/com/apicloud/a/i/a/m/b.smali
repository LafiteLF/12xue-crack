.class Lcom/apicloud/a/i/a/m/b;
.super Lcom/apicloud/c/a/a/j$g;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Landroid/graphics/RectF;

.field private e:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/c/a/a/j$g;-><init>()V

    const/high16 v0, -0x31000000

    iput v0, p0, Lcom/apicloud/a/i/a/m/b;->a:F

    iput v0, p0, Lcom/apicloud/a/i/a/m/b;->b:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/apicloud/a/i/a/m/b;->c:I

    iput v0, p0, Lcom/apicloud/a/i/a/m/b;->c:I

    return-void
.end method

.method private a(III)Z
    .locals 0

    sub-int/2addr p1, p2

    if-ge p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/m/b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(III)Z
    .locals 1

    rem-int v0, p1, p2

    sub-int/2addr p1, v0

    add-int/2addr p1, p2

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    add-float/2addr v0, v1

    :goto_1
    return v0
.end method

.method private static c(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method


# virtual methods
.method a()I
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/b;->c()F

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/m/b;->c:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p0, Lcom/apicloud/a/i/a/m/b;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result v0

    return v0
.end method

.method a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/b;->a:F

    return-void
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/b;->c:I

    return-void
.end method

.method public a(Landroid/graphics/Rect;Landroid/view/View;Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;)V
    .locals 10

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/apicloud/c/a/a/n$b;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$b;->f()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$b;->e()I

    move-result p4

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/j;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/r/l;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/l;->b()I

    move-result v0

    invoke-virtual {p3}, Lcom/apicloud/c/a/a/j;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object p3

    check-cast p3, Lcom/apicloud/a/i/a/r/l;

    invoke-virtual {p3}, Lcom/apicloud/a/i/a/r/l;->c()I

    move-result p3

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/n$b;->g()I

    move-result p2

    iget-object v1, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    float-to-int v1, v1

    iget-object v3, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    if-eqz v3, :cond_2

    iget v3, v3, Landroid/graphics/RectF;->left:F

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    float-to-int v3, v3

    iget-object v4, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    if-eqz v4, :cond_3

    iget v4, v4, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_3
    move v4, v2

    :goto_2
    float-to-int v4, v4

    iget-object v5, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    if-eqz v5, :cond_4

    iget v2, v5, Landroid/graphics/RectF;->top:F

    :cond_4
    float-to-int v2, v2

    iget v5, p0, Lcom/apicloud/a/i/a/m/b;->c:I

    iget v6, p0, Lcom/apicloud/a/i/a/m/b;->b:F

    float-to-int v6, v6

    iget v7, p0, Lcom/apicloud/a/i/a/m/b;->a:F

    float-to-int v7, v7

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/b;->b()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_a

    if-gtz v3, :cond_6

    if-lez v4, :cond_5

    goto :goto_3

    :cond_5
    mul-int v3, p2, v6

    div-int/2addr v3, v5

    iput v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v6

    div-int/2addr p2, v5

    sub-int/2addr v6, p2

    iput v6, p1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_6
    :goto_3
    mul-int v3, p2, v6

    div-int/2addr v3, v5

    sub-int v3, v6, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v6

    div-int/2addr p2, v5

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_4
    invoke-direct {p0, p4, v0, v5}, Lcom/apicloud/a/i/a/m/b;->a(III)Z

    move-result p2

    if-eqz p2, :cond_8

    if-lez v2, :cond_7

    goto :goto_5

    :cond_7
    move v2, v9

    :goto_5
    int-to-float p2, v2

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_8
    int-to-float p2, v7

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-direct {p0, p4, v5, p3}, Lcom/apicloud/a/i/a/m/b;->b(III)Z

    move-result p2

    if-eqz p2, :cond_10

    if-lez v1, :cond_9

    goto :goto_6

    :cond_9
    move v1, v9

    :goto_6
    int-to-float p2, v1

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_b

    :cond_a
    if-gtz v2, :cond_c

    if-lez v1, :cond_b

    goto :goto_7

    :cond_b
    mul-int v1, p2, v7

    div-int/2addr v1, v5

    iput v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v7

    div-int/2addr p2, v5

    sub-int/2addr v7, p2

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_c
    :goto_7
    mul-int v1, p2, v7

    div-int/2addr v1, v5

    sub-int v1, v7, v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v7

    div-int/2addr p2, v5

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_8
    invoke-direct {p0, p4, v0, v5}, Lcom/apicloud/a/i/a/m/b;->a(III)Z

    move-result p2

    if-eqz p2, :cond_e

    if-lez v3, :cond_d

    goto :goto_9

    :cond_d
    move v3, v9

    :goto_9
    int-to-float p2, v3

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_e
    int-to-float p2, v6

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v0

    invoke-direct {p0, p4, v5, p3}, Lcom/apicloud/a/i/a/m/b;->b(III)Z

    move-result p2

    if-eqz p2, :cond_10

    if-lez v4, :cond_f

    goto :goto_a

    :cond_f
    move v4, v9

    :goto_a
    int-to-float p2, v4

    invoke-static {p2}, Lcom/apicloud/a/i/a/m/b;->c(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_10
    :goto_b
    return-void
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/b;->d:Landroid/graphics/RectF;

    return-void
.end method

.method b(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/b;->b:F

    return-void
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/b;->e:I

    return-void
.end method
