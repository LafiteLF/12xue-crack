.class public Lcom/deepe/c/b/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/b/n$a;
    }
.end annotation


# static fields
.field private static final w:Landroid/view/animation/Interpolator;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[F

.field private e:[F

.field private f:[F

.field private g:[F

.field private h:[I

.field private i:[I

.field private j:[I

.field private k:I

.field private l:Landroid/view/VelocityTracker;

.field private final m:F

.field private n:F

.field private o:I

.field private final p:I

.field private q:I

.field private final r:Landroid/widget/OverScroller;

.field private final s:Lcom/deepe/c/b/n$a;

.field private t:Landroid/view/View;

.field private u:Z

.field private final v:Landroid/view/ViewGroup;

.field private final x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepe/c/b/n$1;

    invoke-direct {v0}, Lcom/deepe/c/b/n$1;-><init>()V

    sput-object v0, Lcom/deepe/c/b/n;->w:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepe/c/b/n$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/b/n;->c:I

    new-instance v0, Lcom/deepe/c/b/n$2;

    invoke-direct {v0, p0}, Lcom/deepe/c/b/n$2;-><init>(Lcom/deepe/c/b/n;)V

    iput-object v0, p0, Lcom/deepe/c/b/n;->x:Ljava/lang/Runnable;

    const-string v0, "Parent view may not be null"

    invoke-static {p2, v0}, Lcom/deepe/c/b/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Callback may not be null"

    invoke-static {p3, v0}, Lcom/deepe/c/b/n;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lcom/deepe/c/b/n;->p:I

    iput p3, p0, Lcom/deepe/c/b/n;->o:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/deepe/c/b/n;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/deepe/c/b/n;->m:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/deepe/c/b/n;->n:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lcom/deepe/c/b/n;->w:Landroid/view/animation/Interpolator;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    return-void
.end method

.method private a(FFF)F
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, v0, p2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    cmpl-float p2, v0, p3

    if-lez p2, :cond_2

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-float p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private a(III)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v1, v1

    invoke-direct {p0, v2}, Lcom/deepe/c/b/n;->b(F)F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v1, v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, p3

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    const/high16 p2, 0x43800000    # 256.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    :goto_0
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private a(Landroid/view/View;IIII)I
    .locals 6

    iget v0, p0, Lcom/deepe/c/b/n;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/deepe/c/b/n;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p4, v0, v1}, Lcom/deepe/c/b/n;->b(III)I

    move-result p4

    iget v0, p0, Lcom/deepe/c/b/n;->n:F

    float-to-int v0, v0

    iget v1, p0, Lcom/deepe/c/b/n;->m:F

    float-to-int v1, v1

    invoke-direct {p0, p5, v0, v1}, Lcom/deepe/c/b/n;->b(III)I

    move-result p5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v4, v2, v3

    add-int v5, v0, v1

    if-eqz p4, :cond_0

    int-to-float v0, v2

    int-to-float v2, v4

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float v2, v5

    :goto_0
    div-float/2addr v0, v2

    if-eqz p5, :cond_1

    int-to-float v1, v3

    int-to-float v2, v4

    goto :goto_1

    :cond_1
    int-to-float v1, v1

    int-to-float v2, v5

    :goto_1
    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v2, p1}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p2, p4, v2}, Lcom/deepe/c/b/n;->a(III)I

    move-result p2

    iget-object p4, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {p4, p1}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p3, p5, p1}, Lcom/deepe/c/b/n;->a(III)I

    move-result p1

    int-to-float p2, p2

    mul-float/2addr p2, v0

    int-to-float p1, p1

    mul-float/2addr p1, v1

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public static a(Landroid/view/ViewGroup;FLcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;
    .locals 1

    invoke-static {p0, p2}, Lcom/deepe/c/b/n;->a(Landroid/view/ViewGroup;Lcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;

    move-result-object p0

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/deepe/c/b/n;->b:I

    return-object p0
.end method

.method public static a(Landroid/view/ViewGroup;Lcom/deepe/c/b/n$a;)Lcom/deepe/c/b/n;
    .locals 2

    new-instance v0, Lcom/deepe/c/b/n;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/deepe/c/b/n;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepe/c/b/n$a;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(FF)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/n;->u:Z

    iget-object v1, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v1, v2, p1, p2}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/b/n;->u:Z

    iget p2, p0, Lcom/deepe/c/b/n;->a:I

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->c(I)V

    :cond_0
    return-void
.end method

.method private a(FFI)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/deepe/c/b/n;->f(I)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    iget-object v1, p0, Lcom/deepe/c/b/n;->f:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/deepe/c/b/n;->e:[F

    iget-object v1, p0, Lcom/deepe/c/b/n;->g:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/deepe/c/b/n;->h:[I

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/b/n;->e(II)I

    move-result p1

    aput p1, v0, p3

    iget p1, p0, Lcom/deepe/c/b/n;->k:I

    const/4 p2, 0x1

    shl-int/2addr p2, p3

    or-int/2addr p1, p2

    iput p1, p0, Lcom/deepe/c/b/n;->k:I

    return-void
.end method

.method private a(FFII)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcom/deepe/c/b/n;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lcom/deepe/c/b/n;->q:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/b/n;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lcom/deepe/c/b/n;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {p2, p4}, Lcom/deepe/c/b/n$a;->d(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/n;->j:[I

    aget p2, p1, p3

    or-int/2addr p2, p4

    aput p2, p1, p3

    return v1

    :cond_1
    iget-object p2, p0, Lcom/deepe/c/b/n;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Landroid/view/View;FF)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v1, p1}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v3, p1}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;)I

    move-result p1

    if-lez p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p2, p3

    iget p1, p0, Lcom/deepe/c/b/n;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    if-eqz v1, :cond_6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method private b(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private b(III)I
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p3, :cond_2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int p3, p3

    :goto_0
    return p3

    :cond_2
    return p1
.end method

.method private b(FFI)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/deepe/c/b/n;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/deepe/c/b/n;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/deepe/c/b/n;->a(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/deepe/c/b/n;->a(FFII)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/deepe/c/b/n;->i:[I

    aget p2, p1, p3

    or-int/2addr p2, v0

    aput p2, p1, p3

    iget-object p1, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {p1, v0, p3}, Lcom/deepe/c/b/n$a;->b(II)V

    :cond_4
    return-void
.end method

.method private b(IIII)Z
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr p1, v2

    sub-int/2addr p2, v3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->c(I)V

    return p1

    :cond_0
    iget-object v5, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/deepe/c/b/n;->a(Landroid/view/View;IIII)I

    move-result v6

    iget-object v1, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->c(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private c(IIII)V
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v3, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v2, v3, p1, p3}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;II)I

    move-result p1

    iget-object v2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-static {v2, v3}, Lcom/deepe/c/b/m;->b(Landroid/view/View;I)V

    :cond_0
    move v6, p1

    if-eqz p4, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {p1, v2, p2, p4}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;II)I

    move-result p2

    iget-object p1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    sub-int v2, p2, v1

    invoke-static {p1, v2}, Lcom/deepe/c/b/m;->c(Landroid/view/View;I)V

    :cond_1
    move v7, p2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v8, v6, v0

    sub-int v9, v7, v1

    iget-object v4, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v5, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual/range {v4 .. v9}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/deepe/c/b/n;->g(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/deepe/c/b/n;->f:[F

    aput v3, v5, v2

    iget-object v3, p0, Lcom/deepe/c/b/n;->g:[F

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private e(II)I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/deepe/c/b/n;->o:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/deepe/c/b/n;->o:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/deepe/c/b/n;->o:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object p1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget v1, p0, Lcom/deepe/c/b/n;->o:I

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private e(I)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->e:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->f:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->g:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->h:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->i:[I

    aput v1, v0, p1

    iget-object v0, p0, Lcom/deepe/c/b/n;->j:[I

    aput v1, v0, p1

    iget v0, p0, Lcom/deepe/c/b/n;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/deepe/c/b/n;->k:I

    :cond_1
    :goto_0
    return-void
.end method

.method private f(I)V
    .locals 9

    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [F

    new-array v1, p1, [F

    new-array v2, p1, [F

    new-array v3, p1, [F

    new-array v4, p1, [I

    new-array v5, p1, [I

    new-array p1, p1, [I

    iget-object v6, p0, Lcom/deepe/c/b/n;->d:[F

    if-eqz v6, :cond_1

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->e:[F

    array-length v7, v6

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->f:[F

    array-length v7, v6

    invoke-static {v6, v8, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->g:[F

    array-length v7, v6

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->h:[I

    array-length v7, v6

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->i:[I

    array-length v7, v6

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/deepe/c/b/n;->j:[I

    array-length v7, v6

    invoke-static {v6, v8, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iput-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    iput-object v1, p0, Lcom/deepe/c/b/n;->e:[F

    iput-object v2, p0, Lcom/deepe/c/b/n;->f:[F

    iput-object v3, p0, Lcom/deepe/c/b/n;->g:[F

    iput-object v4, p0, Lcom/deepe/c/b/n;->h:[I

    iput-object v5, p0, Lcom/deepe/c/b/n;->i:[I

    iput-object p1, p0, Lcom/deepe/c/b/n;->j:[I

    :cond_2
    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->e:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->f:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->g:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->h:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->i:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->j:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iput v1, p0, Lcom/deepe/c/b/n;->k:I

    return-void
.end method

.method private g(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->b(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/deepe/c/b/n;->m:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    iget v1, p0, Lcom/deepe/c/b/n;->n:F

    iget v2, p0, Lcom/deepe/c/b/n;->m:F

    invoke-direct {p0, v0, v1, v2}, Lcom/deepe/c/b/n;->a(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    iget v2, p0, Lcom/deepe/c/b/n;->n:F

    iget v3, p0, Lcom/deepe/c/b/n;->m:F

    invoke-direct {p0, v1, v2, v3}, Lcom/deepe/c/b/n;->a(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/b/n;->a(FF)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/n;->a:I

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/b/n;->n:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/b/n;->q:I

    return-void
.end method

.method public a(IIII)V
    .locals 10

    iget-boolean v0, p0, Lcom/deepe/c/b/n;->u:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v5, v0

    move v6, p1

    move v7, p3

    move v8, p2

    move v9, p4

    invoke-virtual/range {v1 .. v9}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->c(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    iput p2, p0, Lcom/deepe/c/b/n;->c:I

    iget-object v0, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/n;->c(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/c/b/n;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/deepe/c/b/n;->b(IIII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/n;->e()V

    :cond_0
    iget-object v4, v0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v4, v0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_f

    if-eq v2, v6, :cond_e

    if-eq v2, v5, :cond_5

    const/4 v7, 0x3

    if-eq v2, v7, :cond_e

    const/4 v7, 0x5

    if-eq v2, v7, :cond_3

    const/4 v5, 0x6

    if-eq v2, v5, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/deepe/c/b/n;->e(I)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-direct {v0, v7, v1, v2}, Lcom/deepe/c/b/n;->a(FFI)V

    iget v3, v0, Lcom/deepe/c/b/n;->a:I

    if-nez v3, :cond_4

    iget-object v1, v0, Lcom/deepe/c/b/n;->h:[I

    aget v1, v1, v2

    iget v3, v0, Lcom/deepe/c/b/n;->q:I

    and-int v5, v1, v3

    if-eqz v5, :cond_11

    iget-object v5, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    and-int/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Lcom/deepe/c/b/n$a;->a(II)V

    goto/16 :goto_3

    :cond_4
    if-ne v3, v5, :cond_11

    float-to-int v3, v7

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    if-ne v1, v3, :cond_11

    invoke-virtual {v0, v1, v2}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    goto/16 :goto_3

    :cond_5
    iget-object v2, v0, Lcom/deepe/c/b/n;->d:[F

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/deepe/c/b/n;->e:[F

    if-nez v2, :cond_6

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_7

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/deepe/c/b/n;->g(I)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    iget-object v9, v0, Lcom/deepe/c/b/n;->d:[F

    aget v9, v9, v5

    sub-float v9, v7, v9

    iget-object v10, v0, Lcom/deepe/c/b/n;->e:[F

    aget v10, v10, v5

    sub-float v10, v8, v10

    float-to-int v7, v7

    float-to-int v8, v8

    invoke-virtual {v0, v7, v8}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {v0, v7, v9, v10}, Lcom/deepe/c/b/n;->a(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    float-to-int v12, v9

    add-int v13, v11, v12

    iget-object v14, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v14, v7, v13, v12}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;II)I

    move-result v12

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v13

    float-to-int v14, v10

    add-int v15, v13, v14

    iget-object v4, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v4, v7, v15, v14}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;II)I

    move-result v4

    iget-object v14, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v14, v7}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;)I

    move-result v14

    iget-object v15, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v15, v7}, Lcom/deepe/c/b/n$a;->b(Landroid/view/View;)I

    move-result v15

    if-eqz v14, :cond_9

    if-lez v14, :cond_a

    if-ne v12, v11, :cond_a

    :cond_9
    if-eqz v15, :cond_c

    if-lez v15, :cond_a

    if-ne v4, v13, :cond_a

    goto :goto_1

    :cond_a
    invoke-direct {v0, v9, v10, v5}, Lcom/deepe/c/b/n;->b(FFI)V

    iget v4, v0, Lcom/deepe/c/b/n;->a:I

    if-ne v4, v6, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v8, :cond_d

    invoke-virtual {v0, v7, v5}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/deepe/c/b/n;->c(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_d
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/n;->e()V

    goto :goto_3

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Lcom/deepe/c/b/n;->a(FFI)V

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    if-ne v2, v3, :cond_10

    iget v3, v0, Lcom/deepe/c/b/n;->a:I

    if-ne v3, v5, :cond_10

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    :cond_10
    iget-object v2, v0, Lcom/deepe/c/b/n;->h:[I

    aget v2, v2, v1

    iget v3, v0, Lcom/deepe/c/b/n;->q:I

    and-int v4, v2, v3

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    and-int/2addr v2, v3

    invoke-virtual {v4, v2, v1}, Lcom/deepe/c/b/n$a;->a(II)V

    :cond_11
    :goto_3
    iget v1, v0, Lcom/deepe/c/b/n;->a:I

    if-ne v1, v6, :cond_12

    return v6

    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public a(Landroid/view/View;II)Z
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepe/c/b/n;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1, p1}, Lcom/deepe/c/b/n;->b(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Lcom/deepe/c/b/n;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    :cond_0
    return p1
.end method

.method public a(Z)Z
    .locals 11

    iget v0, p0, Lcom/deepe/c/b/n;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    iget-object v3, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v3

    iget-object v4, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v10

    iget-object v4, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v8, v3, v4

    iget-object v4, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v9, v10, v4

    if-eqz v8, :cond_0

    iget-object v4, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/deepe/c/b/m;->b(Landroid/view/View;I)V

    :cond_0
    if-eqz v9, :cond_1

    iget-object v4, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-static {v4, v9}, Lcom/deepe/c/b/m;->c(Landroid/view/View;I)V

    :cond_1
    if-nez v8, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v5, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    move v6, v3

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;IIII)V

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v3

    if-ne v10, v3, :cond_4

    iget-object v0, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    move v0, v2

    :cond_4
    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/deepe/c/b/n;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/n;->c(I)V

    :cond_6
    :goto_0
    iget p1, p0, Lcom/deepe/c/b/n;->a:I

    if-ne p1, v1, :cond_7

    const/4 p1, 0x1

    return p1

    :cond_7
    return v2
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/n;->o:I

    return v0
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/b/n;->e()V

    :cond_0
    iget-object v2, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v2, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const/4 v3, 0x1

    if-eq v0, v3, :cond_12

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_9

    const/4 v4, 0x5

    if-eq v0, v4, :cond_7

    const/4 v4, 0x6

    if-eq v0, v4, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/deepe/c/b/n;->a:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/deepe/c/b/n;->c:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    :goto_0
    if-lt v2, v1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/deepe/c/b/n;->c:I

    if-ne v3, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v4, v4

    float-to-int v6, v6

    invoke-virtual {p0, v4, v6}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v4

    iget-object v6, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    if-ne v4, v6, :cond_5

    invoke-virtual {p0, v6, v3}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget p1, p0, Lcom/deepe/c/b/n;->c:I

    :goto_1
    if-ne p1, v5, :cond_6

    invoke-direct {p0}, Lcom/deepe/c/b/n;->h()V

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-direct {p0, v0}, Lcom/deepe/c/b/n;->e(I)V

    goto/16 :goto_8

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v2, p1, v0}, Lcom/deepe/c/b/n;->a(FFI)V

    iget v1, p0, Lcom/deepe/c/b/n;->a:I

    if-nez v1, :cond_8

    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    iget-object p1, p0, Lcom/deepe/c/b/n;->h:[I

    aget p1, p1, v0

    iget v1, p0, Lcom/deepe/c/b/n;->q:I

    and-int v2, p1, v1

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    and-int/2addr p1, v1

    invoke-virtual {v2, p1, v0}, Lcom/deepe/c/b/n$a;->a(II)V

    goto/16 :goto_8

    :cond_8
    float-to-int v1, v2

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/deepe/c/b/n;->c(II)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    goto/16 :goto_8

    :cond_9
    iget p1, p0, Lcom/deepe/c/b/n;->a:I

    if-ne p1, v3, :cond_13

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/deepe/c/b/n;->a(FF)V

    goto/16 :goto_7

    :cond_a
    iget v0, p0, Lcom/deepe/c/b/n;->a:I

    if-ne v0, v3, :cond_d

    iget v0, p0, Lcom/deepe/c/b/n;->c:I

    invoke-direct {p0, v0}, Lcom/deepe/c/b/n;->g(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_8

    :cond_b
    iget v0, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v5, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/deepe/c/b/n;->f:[F

    iget v3, p0, Lcom/deepe/c/b/n;->c:I

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/deepe/c/b/n;->g:[F

    aget v2, v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/deepe/c/b/n;->c(IIII)V

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    :goto_4
    if-lt v2, v0, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/deepe/c/b/n;->g(I)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget-object v6, p0, Lcom/deepe/c/b/n;->d:[F

    aget v6, v6, v1

    sub-float v6, v4, v6

    iget-object v7, p0, Lcom/deepe/c/b/n;->e:[F

    aget v7, v7, v1

    sub-float v7, v5, v7

    invoke-direct {p0, v6, v7, v1}, Lcom/deepe/c/b/n;->b(FFI)V

    iget v8, p0, Lcom/deepe/c/b/n;->a:I

    if-ne v8, v3, :cond_10

    goto :goto_5

    :cond_10
    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, v6, v7}, Lcom/deepe/c/b/n;->a(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0, v4, v1}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_5
    invoke-direct {p0, p1}, Lcom/deepe/c/b/n;->c(Landroid/view/MotionEvent;)V

    goto :goto_8

    :cond_11
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    iget p1, p0, Lcom/deepe/c/b/n;->a:I

    if-ne p1, v3, :cond_13

    invoke-direct {p0}, Lcom/deepe/c/b/n;->h()V

    :cond_13
    :goto_7
    invoke-virtual {p0}, Lcom/deepe/c/b/n;->e()V

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    float-to-int v2, v0

    float-to-int v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/deepe/c/b/n;->d(II)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1}, Lcom/deepe/c/b/n;->a(FFI)V

    invoke-virtual {p0, v2, p1}, Lcom/deepe/c/b/n;->b(Landroid/view/View;I)Z

    iget-object v0, p0, Lcom/deepe/c/b/n;->h:[I

    aget v0, v0, p1

    iget v1, p0, Lcom/deepe/c/b/n;->q:I

    and-int v2, v0, v1

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    and-int/2addr v0, v1

    invoke-virtual {v2, v0, p1}, Lcom/deepe/c/b/n$a;->a(II)V

    :cond_15
    :goto_8
    return-void
.end method

.method public b(I)Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/b/n;->k:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(II)Z
    .locals 7

    invoke-virtual {p0, p2}, Lcom/deepe/c/b/n;->b(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x2

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v3, p0, Lcom/deepe/c/b/n;->d:[F

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/deepe/c/b/n;->e:[F

    if-eqz v4, :cond_9

    iget-object v5, p0, Lcom/deepe/c/b/n;->f:[F

    if-eqz v5, :cond_9

    iget-object v6, p0, Lcom/deepe/c/b/n;->g:[F

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    aget v5, v5, p2

    aget v3, v3, p2

    sub-float/2addr v5, v3

    aget v3, v6, p2

    aget p2, v4, p2

    sub-float/2addr v3, p2

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    mul-float/2addr v5, v5

    mul-float/2addr v3, v3

    add-float/2addr v5, v3

    iget p1, p0, Lcom/deepe/c/b/n;->b:I

    mul-int/2addr p1, p1

    int-to-float p1, p1

    cmpl-float p1, v5, p1

    if-lez p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    if-eqz v0, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    return v2

    :cond_6
    return v1

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/deepe/c/b/n;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    return v2

    :cond_8
    return v1

    :cond_9
    :goto_2
    const-string p1, "ViewDragHelper"

    const-string p2, "Inconsistent pointer event stream: pointer is down, but there is no initial motion recorded. Is something intercepting or modifying events?"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method b(Landroid/view/View;I)Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/deepe/c/b/n;->c:I

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/deepe/c/b/n;->c:I

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/n;->a(Landroid/view/View;I)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/view/View;II)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    if-lt p3, p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-ge p3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    return-object v0
.end method

.method c(I)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/deepe/c/b/n;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lcom/deepe/c/b/n;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/deepe/c/b/n;->a:I

    iget-object v0, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v0, p1}, Lcom/deepe/c/b/n$a;->c(I)V

    iget p1, p0, Lcom/deepe/c/b/n;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c(II)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/deepe/c/b/n;->b(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/n;->b:I

    return v0
.end method

.method public d(II)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/b/n;->v:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    invoke-virtual {v2, v0}, Lcom/deepe/c/b/n$a;->b(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-lt p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p2, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge p2, v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public d(I)Z
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/b/n;->d:[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    array-length v0, v0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/deepe/c/b/n;->b(II)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/b/n;->c:I

    invoke-direct {p0}, Lcom/deepe/c/b/n;->g()V

    iget-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/b/n;->l:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public f()V
    .locals 9

    invoke-virtual {p0}, Lcom/deepe/c/b/n;->e()V

    iget v0, p0, Lcom/deepe/c/b/n;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v5

    iget-object v2, p0, Lcom/deepe/c/b/n;->r:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v6

    iget-object v3, p0, Lcom/deepe/c/b/n;->s:Lcom/deepe/c/b/n$a;

    iget-object v4, p0, Lcom/deepe/c/b/n;->t:Landroid/view/View;

    sub-int v7, v5, v0

    sub-int v8, v6, v1

    invoke-virtual/range {v3 .. v8}, Lcom/deepe/c/b/n$a;->a(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/n;->c(I)V

    return-void
.end method
