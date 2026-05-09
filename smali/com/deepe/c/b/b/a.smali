.class public Lcom/deepe/c/b/b/a;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/b/b/a$a;,
        Lcom/deepe/c/b/b/a$b;,
        Lcom/deepe/c/b/b/a$c;,
        Lcom/deepe/c/b/b/a$d;,
        Lcom/deepe/c/b/b/a$e;,
        Lcom/deepe/c/b/b/a$f;,
        Lcom/deepe/c/b/b/a$g;,
        Lcom/deepe/c/b/b/a$h;
    }
.end annotation


# static fields
.field static final a:Lcom/deepe/c/b/b/a$e;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:I

.field private f:Z

.field private g:Landroid/view/View;

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:I

.field private m:F

.field private n:F

.field private o:Lcom/deepe/c/b/b/a$d;

.field private final p:Lcom/deepe/c/b/n;

.field private q:Z

.field private r:Z

.field private s:Z

.field private final t:Landroid/graphics/Rect;

.field private u:I

.field private final v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepe/c/b/b/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/deepe/c/b/b/a$h;

    invoke-direct {v0}, Lcom/deepe/c/b/b/a$h;-><init>()V

    :goto_0
    sput-object v0, Lcom/deepe/c/b/b/a;->a:Lcom/deepe/c/b/b/a$e;

    goto :goto_1

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/deepe/c/b/b/a$g;

    invoke-direct {v0}, Lcom/deepe/c/b/b/a$g;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/deepe/c/b/b/a$f;

    invoke-direct {v0}, Lcom/deepe/c/b/b/a$f;-><init>()V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    iput p2, p0, Lcom/deepe/c/b/b/a;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/deepe/c/b/b/a;->r:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/deepe/c/b/b/a;->t:Landroid/graphics/Rect;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v0, p3

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/deepe/c/b/b/a;->e:I

    const/high16 v0, 0x40a00000    # 5.0f

    mul-float/2addr v0, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/deepe/c/b/b/a;->u:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/b/a;->setWillNotDraw(Z)V

    new-instance p1, Lcom/deepe/c/b/b/a$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/deepe/c/b/b/a$b;-><init>(Lcom/deepe/c/b/b/a;Lcom/deepe/c/b/b/a$b;)V

    invoke-static {p0, v1, p1}, Lcom/deepe/c/b/n;->a(Landroid/view/ViewGroup;FLcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {p1, p2}, Lcom/deepe/c/b/n;->a(I)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    const/high16 p2, 0x43c80000    # 400.0f

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Lcom/deepe/c/b/n;->a(F)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/b/b/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(F)V
    .locals 8

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/b/a$c;

    iget-boolean v1, v0, Lcom/deepe/c/b/b/a$c;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v1

    :goto_1
    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    if-ne v3, v4, :cond_2

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/deepe/c/b/b/a;->i:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    iget v6, p0, Lcom/deepe/c/b/b/a;->l:I

    int-to-float v7, v6

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput p1, p0, Lcom/deepe/c/b/b/a;->i:F

    sub-float v7, v5, p1

    int-to-float v6, v6

    mul-float/2addr v7, v6

    float-to-int v6, v7

    sub-int/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v0, :cond_3

    iget v4, p0, Lcom/deepe/c/b/b/a;->i:F

    sub-float/2addr v5, v4

    iget v4, p0, Lcom/deepe/c/b/b/a;->c:I

    invoke-direct {p0, v3, v5, v4}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;FI)V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private a(Landroid/view/View;FI)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/b/a$c;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    if-eqz p3, :cond_1

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    iget-object p3, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    :cond_0
    iget-object p3, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    invoke-direct {p0, p1}, Lcom/deepe/c/b/b/a;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    if-eqz p2, :cond_2

    iget-object p2, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    new-instance p2, Lcom/deepe/c/b/b/a$a;

    invoke-direct {p2, p0, p1}, Lcom/deepe/c/b/b/a$a;-><init>(Lcom/deepe/c/b/b/a;Landroid/view/View;)V

    iget-object p1, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, p2}, Lcom/deepe/c/b/m;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/deepe/c/b/b/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/b/b/a;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/b/b/a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/b/b/a;->g(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/b/b/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/b/b/a;->q:Z

    return-void
.end method

.method private a(Landroid/view/View;I)Z
    .locals 1

    iget-boolean p1, p0, Lcom/deepe/c/b/b/a;->r:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/b/a;->a(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/deepe/c/b/b/a;->q:Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/view/View;I)Z
    .locals 0

    iget-boolean p1, p0, Lcom/deepe/c/b/b/a;->r:Z

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/b/a;->a(FI)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepe/c/b/b/a;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/deepe/c/b/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepe/c/b/b/a;->k:Z

    return p0
.end method

.method static synthetic c(Lcom/deepe/c/b/b/a;)Lcom/deepe/c/b/n;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    return-object p0
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr v1, v2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/deepe/c/b/b/a;->j:I

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/deepe/c/b/b/a;->h:F

    iget v1, p0, Lcom/deepe/c/b/b/a;->l:I

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/deepe/c/b/b/a;->a(F)V

    :cond_0
    iget-boolean p1, v0, Lcom/deepe/c/b/b/a$c;->c:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    iget v0, p0, Lcom/deepe/c/b/b/a;->h:F

    iget v1, p0, Lcom/deepe/c/b/b/a;->b:I

    invoke-direct {p0, p1, v0, v1}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;FI)V

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcom/deepe/c/b/b/a;)F
    .locals 0

    iget p0, p0, Lcom/deepe/c/b/b/a;->h:F

    return p0
.end method

.method static synthetic e(Lcom/deepe/c/b/b/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    return-object p0
.end method

.method static synthetic f(Lcom/deepe/c/b/b/a;)I
    .locals 0

    iget p0, p0, Lcom/deepe/c/b/b/a;->j:I

    return p0
.end method

.method private static f(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/deepe/c/b/b/a;->a:Lcom/deepe/c/b/b/a$e;

    invoke-interface {v0, p0, p1}, Lcom/deepe/c/b/b/a$e;->a(Lcom/deepe/c/b/b/a;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/b/a;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->o:Lcom/deepe/c/b/b/a$d;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/deepe/c/b/b/a;->h:F

    invoke-interface {v0, p1, v1}, Lcom/deepe/c/b/b/a$d;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public a(Lcom/deepe/c/b/b/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/b/a;->o:Lcom/deepe/c/b/b/a$d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/b/b/a;->s:Z

    return-void
.end method

.method a(FI)Z
    .locals 3

    iget-boolean p2, p0, Lcom/deepe/c/b/b/a;->f:Z

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v1

    iget p2, p2, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr v1, p2

    int-to-float p2, v1

    iget v1, p0, Lcom/deepe/c/b/b/a;->j:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    iget-object p2, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    iget-object v1, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2, v1, p1, v2}, Lcom/deepe/c/b/n;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->a()V

    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/b/b/a;->b:I

    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->o:Lcom/deepe/c/b/b/a$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/b/b/a$d;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->o:Lcom/deepe/c/b/b/a$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/b/b/a$d;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/deepe/c/b/b/a$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/n;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v0}, Lcom/deepe/c/b/n;->f()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method d(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-eqz v0, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/deepe/c/b/b/a;->f(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v9

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v12, p0

    if-lt v11, v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v12, v11}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-ne v13, v0, :cond_2

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v3, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v14, v6, :cond_3

    if-lt v15, v8, :cond_3

    if-gt v5, v7, :cond_3

    if-gt v0, v9, :cond_3

    const/4 v0, 0x4

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    goto :goto_1
.end method

.method public d()Z
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepe/c/b/b/a;->h:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/deepe/c/b/b/a;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/deepe/c/b/b/a;->u:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v1, v2, v1

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/deepe/c/b/b/a$c;->b:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/deepe/c/b/b/a;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Lcom/deepe/c/b/b/a;->t:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/deepe/c/b/b/a;->t:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v4

    goto :goto_2

    :cond_2
    iget-boolean v2, v0, Lcom/deepe/c/b/b/a$c;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/deepe/c/b/b/a;->h:F

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    int-to-float p2, p2

    iget-object p4, v0, Lcom/deepe/c/b/b/a$c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, p3, p2, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_0

    :goto_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v4
.end method

.method e(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/b/a$c;

    iget-boolean v1, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Lcom/deepe/c/b/b/a$c;->c:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/deepe/c/b/b/a;->h:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public e_(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/b/b/a;->e:I

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->requestLayout()V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/deepe/c/b/b/a$c;

    invoke-direct {v0}, Lcom/deepe/c/b/b/a$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/b/b/a$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/b/b/a$c;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/deepe/c/b/b/a$c;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/deepe/c/b/b/a$c;

    invoke-direct {v0, p1}, Lcom/deepe/c/b/b/a$c;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public k_()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/b/b/a;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/b/a;->r:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/b/a;->r:Z

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/deepe/c/b/b/a;->v:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/b/a$a;

    invoke-virtual {v2}, Lcom/deepe/c/b/b/a$a;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/deepe/c/b/b/a;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-boolean v2, p0, Lcom/deepe/c/b/b/a;->f:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v2, v5, v6}, Lcom/deepe/c/b/n;->b(Landroid/view/View;II)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/deepe/c/b/b/a;->q:Z

    :cond_1
    iget-boolean v2, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/deepe/c/b/b/a;->k:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v4, p0, Lcom/deepe/c/b/b/a;->m:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/deepe/c/b/b/a;->n:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v4}, Lcom/deepe/c/b/n;->d()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6

    iget-object p1, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {p1}, Lcom/deepe/c/b/n;->e()V

    iput-boolean v3, p0, Lcom/deepe/c/b/b/a;->k:Z

    return v1

    :cond_5
    iput-boolean v1, p0, Lcom/deepe/c/b/b/a;->k:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v0, p0, Lcom/deepe/c/b/b/a;->m:F

    iput v2, p0, Lcom/deepe/c/b/b/a;->n:F

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    iget-object v5, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int v2, v2

    invoke-virtual {v4, v5, v0, v2}, Lcom/deepe/c/b/n;->b(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/b/a;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v2, p1}, Lcom/deepe/c/b/n;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez v0, :cond_7

    return v1

    :cond_7
    return v3

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {p1}, Lcom/deepe/c/b/n;->e()V

    return v1

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v0}, Lcom/deepe/c/b/n;->e()V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    sub-int v1, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingRight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v5

    iget-boolean v6, v0, Lcom/deepe/c/b/b/a;->r:Z

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v6, :cond_0

    iget-boolean v6, v0, Lcom/deepe/c/b/b/a;->q:Z

    if-eqz v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    :goto_0
    iput v6, v0, Lcom/deepe/c/b/b/a;->h:F

    :cond_1
    const/4 v6, 0x0

    move v9, v2

    move v10, v6

    :goto_1
    if-lt v10, v5, :cond_7

    iget-boolean v1, v0, Lcom/deepe/c/b/b/a;->r:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/deepe/c/b/b/a;->l:I

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/deepe/c/b/b/a;->h:F

    invoke-direct {v0, v1}, Lcom/deepe/c/b/b/a;->a(F)V

    :cond_2
    iget-object v1, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/b/b/a$c;

    iget-boolean v1, v1, Lcom/deepe/c/b/b/a$c;->c:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    iget v2, v0, Lcom/deepe/c/b/b/a;->h:F

    iget v3, v0, Lcom/deepe/c/b/b/a;->b:I

    invoke-direct {v0, v1, v2, v3}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;FI)V

    goto :goto_3

    :cond_3
    move v1, v6

    :goto_2
    if-lt v1, v5, :cond_5

    :cond_4
    :goto_3
    iget-object v1, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/b/a;->d(Landroid/view/View;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v1}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, v0, Lcom/deepe/c/b/b/a;->b:I

    invoke-direct {v0, v2, v8, v3}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    iput-boolean v6, v0, Lcom/deepe/c/b/b/a;->r:Z

    return-void

    :cond_7
    invoke-virtual {v0, v10}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    iget-boolean v14, v12, Lcom/deepe/c/b/b/a$c;->b:Z

    if-eqz v14, :cond_a

    iget v14, v12, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    iget v15, v12, Lcom/deepe/c/b/b/a$c;->rightMargin:I

    add-int/2addr v14, v15

    sub-int v15, v1, v3

    iget v6, v0, Lcom/deepe/c/b/b/a;->e:I

    sub-int/2addr v15, v6

    invoke-static {v2, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v6, v9

    sub-int/2addr v6, v14

    iput v6, v0, Lcom/deepe/c/b/b/a;->j:I

    iget v14, v12, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr v14, v9

    add-int/2addr v14, v6

    if-lez v14, :cond_9

    const/4 v14, 0x1

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    :goto_5
    iput-boolean v14, v12, Lcom/deepe/c/b/b/a$c;->c:Z

    int-to-float v6, v6

    iget v14, v0, Lcom/deepe/c/b/b/a;->h:F

    mul-float/2addr v6, v14

    float-to-int v6, v6

    iget v12, v12, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    add-int/2addr v6, v12

    add-int/2addr v9, v6

    goto :goto_6

    :cond_a
    iget-boolean v6, v0, Lcom/deepe/c/b/b/a;->f:Z

    if-eqz v6, :cond_b

    iget v6, v0, Lcom/deepe/c/b/b/a;->l:I

    if-eqz v6, :cond_b

    iget v9, v0, Lcom/deepe/c/b/b/a;->h:F

    sub-float v9, v7, v9

    int-to-float v6, v6

    mul-float/2addr v9, v6

    float-to-int v6, v9

    move v9, v2

    goto :goto_7

    :cond_b
    move v9, v2

    :goto_6
    const/4 v6, 0x0

    :goto_7
    sub-int v6, v9, v6

    add-int/2addr v13, v6

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v4

    invoke-virtual {v11, v6, v4, v13, v12}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_4

    move v2, v5

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v3, :cond_4

    move v4, v5

    move v3, v6

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Height must not be UNSPECIFIED"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_0
    if-eq v3, v6, :cond_6

    if-eq v3, v7, :cond_5

    const/4 v4, 0x0

    const/4 v8, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingTop()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v4, v8

    move v8, v4

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingTop()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v4, v8

    move v8, v4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingLeft()I

    move-result v9

    sub-int v9, v2, v9

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/b/a;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    iput-object v11, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    const/4 v11, 0x0

    move v14, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/16 v15, 0x8

    const/16 v16, 0x1

    const/4 v5, -0x2

    if-lt v12, v10, :cond_19

    if-nez v13, :cond_7

    cmpl-float v3, v14, v11

    if-lez v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-lt v3, v10, :cond_a

    :cond_8
    invoke-virtual {v0, v2, v4}, Lcom/deepe/c/b/b/a;->setMeasuredDimension(II)V

    iput-boolean v13, v0, Lcom/deepe/c/b/b/a;->f:Z

    iget-object v1, v0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v1}, Lcom/deepe/c/b/n;->a()I

    move-result v1

    if-eqz v1, :cond_9

    if-nez v13, :cond_9

    iget-object v1, v0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v1}, Lcom/deepe/c/b/n;->f()V

    :cond_9
    return-void

    :cond_a
    invoke-virtual {v0, v3}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v15, :cond_b

    goto/16 :goto_b

    :cond_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v15, :cond_c

    goto/16 :goto_b

    :cond_c
    iget v1, v7, Lcom/deepe/c/b/b/a$c;->width:I

    if-nez v1, :cond_d

    iget v1, v7, Lcom/deepe/c/b/b/a$c;->a:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_d

    move/from16 v1, v16

    goto :goto_4

    :cond_d
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_e

    const/4 v15, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move/from16 v15, v17

    :goto_5
    if-eqz v13, :cond_13

    iget-object v6, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    if-eq v12, v6, :cond_13

    iget v6, v7, Lcom/deepe/c/b/b/a$c;->width:I

    if-gez v6, :cond_18

    if-gt v15, v2, :cond_f

    iget v6, v7, Lcom/deepe/c/b/b/a$c;->a:F

    cmpl-float v6, v6, v11

    if-lez v6, :cond_18

    :cond_f
    if-eqz v1, :cond_12

    iget v1, v7, Lcom/deepe/c/b/b/a$c;->height:I

    if-ne v1, v5, :cond_10

    const/high16 v1, -0x80000000

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_7

    :cond_10
    iget v1, v7, Lcom/deepe/c/b/b/a$c;->height:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_11

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_7

    :cond_11
    const/high16 v1, 0x40000000    # 2.0f

    iget v6, v7, Lcom/deepe/c/b/b/a$c;->height:I

    goto :goto_6

    :cond_12
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_6
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_7
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_a

    :cond_13
    iget v1, v7, Lcom/deepe/c/b/b/a$c;->a:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_18

    iget v1, v7, Lcom/deepe/c/b/b/a$c;->width:I

    if-nez v1, :cond_16

    iget v1, v7, Lcom/deepe/c/b/b/a$c;->height:I

    if-ne v1, v5, :cond_14

    const/high16 v1, -0x80000000

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_9

    :cond_14
    iget v1, v7, Lcom/deepe/c/b/b/a$c;->height:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_15

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_9

    :cond_15
    const/high16 v1, 0x40000000    # 2.0f

    iget v6, v7, Lcom/deepe/c/b/b/a$c;->height:I

    goto :goto_8

    :cond_16
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :goto_8
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_9
    if-eqz v13, :cond_17

    iget v5, v7, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    iget v7, v7, Lcom/deepe/c/b/b/a$c;->rightMargin:I

    add-int/2addr v5, v7

    sub-int v5, v2, v5

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    if-eq v15, v5, :cond_18

    :goto_a
    invoke-virtual {v12, v7, v6}, Landroid/view/View;->measure(II)V

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v7, Lcom/deepe/c/b/b/a$c;->a:F

    int-to-float v5, v5

    mul-float/2addr v1, v5

    div-float/2addr v1, v14

    float-to-int v1, v1

    add-int/2addr v15, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v15, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v12, v5, v6}, Landroid/view/View;->measure(II)V

    :cond_18
    :goto_b
    add-int/lit8 v3, v3, 0x1

    const/4 v5, -0x2

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/16 v15, 0x8

    goto/16 :goto_3

    :cond_19
    invoke-virtual {v0, v12}, Lcom/deepe/c/b/b/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/b/b/a$c;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1a

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/deepe/c/b/b/a$c;->c:Z

    :goto_c
    const/high16 v7, -0x80000000

    const/4 v15, -0x1

    goto/16 :goto_11

    :cond_1a
    const/4 v6, 0x0

    iget v7, v5, Lcom/deepe/c/b/b/a$c;->a:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_1b

    iget v7, v5, Lcom/deepe/c/b/b/a$c;->a:F

    add-float/2addr v14, v7

    iget v7, v5, Lcom/deepe/c/b/b/a$c;->width:I

    if-nez v7, :cond_1b

    goto :goto_c

    :cond_1b
    iget v7, v5, Lcom/deepe/c/b/b/a$c;->leftMargin:I

    iget v15, v5, Lcom/deepe/c/b/b/a$c;->rightMargin:I

    add-int/2addr v7, v15

    iget v15, v5, Lcom/deepe/c/b/b/a$c;->width:I

    const/4 v6, -0x2

    if-ne v15, v6, :cond_1c

    sub-int v6, v2, v7

    const/high16 v7, -0x80000000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_e

    :cond_1c
    iget v6, v5, Lcom/deepe/c/b/b/a$c;->width:I

    const/4 v15, -0x1

    if-ne v6, v15, :cond_1d

    sub-int v6, v2, v7

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_d

    :cond_1d
    const/high16 v7, 0x40000000    # 2.0f

    iget v6, v5, Lcom/deepe/c/b/b/a$c;->width:I

    :goto_d
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    :goto_e
    iget v15, v5, Lcom/deepe/c/b/b/a$c;->height:I

    const/4 v11, -0x2

    if-ne v15, v11, :cond_1e

    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move v11, v15

    const/4 v15, -0x1

    goto :goto_f

    :cond_1e
    iget v11, v5, Lcom/deepe/c/b/b/a$c;->height:I

    const/4 v15, -0x1

    if-ne v11, v15, :cond_1f

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    goto :goto_f

    :cond_1f
    iget v11, v5, Lcom/deepe/c/b/b/a$c;->height:I

    invoke-static {v11, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :goto_f
    invoke-virtual {v1, v6, v11}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_20

    if-le v11, v4, :cond_20

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_20
    sub-int/2addr v9, v6

    if-gez v9, :cond_21

    move/from16 v6, v16

    goto :goto_10

    :cond_21
    const/4 v6, 0x0

    :goto_10
    iput-boolean v6, v5, Lcom/deepe/c/b/b/a$c;->b:Z

    or-int/2addr v13, v6

    iget-boolean v5, v5, Lcom/deepe/c/b/b/a$c;->b:Z

    if-eqz v5, :cond_22

    iput-object v1, v0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    :cond_22
    :goto_11
    add-int/lit8 v12, v12, 0x1

    move v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepe/c/b/b/a;->r:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-boolean v0, p0, Lcom/deepe/c/b/b/a;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/n;->b(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/b/a;->e(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/deepe/c/b/b/a;->m:F

    sub-float v2, v0, v2

    iget v3, p0, Lcom/deepe/c/b/b/a;->n:F

    sub-float v3, p1, v3

    iget-object v4, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    invoke-virtual {v4}, Lcom/deepe/c/b/n;->d()I

    move-result v4

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    mul-int/2addr v4, v4

    int-to-float v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/deepe/c/b/b/a;->p:Lcom/deepe/c/b/n;

    iget-object v3, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v2, v3, v0, p1}, Lcom/deepe/c/b/n;->b(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/b/b/a;->a(Landroid/view/View;I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput v0, p0, Lcom/deepe/c/b/b/a;->m:F

    iput p1, p0, Lcom/deepe/c/b/b/a;->n:F

    :cond_4
    :goto_0
    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepe/c/b/b/a;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/deepe/c/b/b/a;->f:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/b/b/a;->g:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/deepe/c/b/b/a;->q:Z

    :cond_1
    return-void
.end method
