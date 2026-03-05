.class public Lcom/uzmap/pkg/b/c/a;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/c/a$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/c/a;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/c/a;)I
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    return p0
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 11

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x3fe00000    # 1.75f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x40600000    # 3.5f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/a;->b()Z

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x1e000000

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v4, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    mul-float v7, v0, v5

    invoke-static {p0, v7}, Lcom/deepe/c/b/m;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/uzmap/pkg/b/c/a$a;

    iget v7, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    invoke-direct {v4, p0, v7, v1}, Lcom/uzmap/pkg/b/c/a$a;-><init>(Lcom/uzmap/pkg/b/c/a;II)V

    new-instance v7, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v7, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    iget v8, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    int-to-float v8, v8

    int-to-float v9, v3

    int-to-float v10, v2

    invoke-virtual {v4, v8, v9, v10, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v4, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/uzmap/pkg/b/c/a;->setPadding(IIII)V

    move-object v4, v7

    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const v8, -0x1a1a1b

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    const v7, -0x973671

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/a;->b()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_1

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    mul-float/2addr v0, v5

    invoke-static {p0, v0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;F)V

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/uzmap/pkg/b/c/a$a;

    iget v5, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    invoke-direct {v0, p0, v5, v1}, Lcom/uzmap/pkg/b/c/a$a;-><init>(Lcom/uzmap/pkg/b/c/a;II)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0, v9, v0}, Lcom/uzmap/pkg/b/c/a;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v5, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v3, v2, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v0, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/uzmap/pkg/b/c/a;->setPadding(IIII)V

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v2, v9, [I

    const v3, 0x101009e

    const/4 v5, 0x0

    aput v3, v2, v5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    invoke-virtual {v0, v1, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/c/a;I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    return-void
.end method

.method private b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/uzmap/pkg/b/c/a;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/a;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/a;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/uzmap/pkg/b/c/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/b/c/a;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/c/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
