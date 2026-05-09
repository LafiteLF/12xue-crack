.class public Lcom/deepe/c/c/ab;
.super Ljava/lang/Object;


# instance fields
.field private a:[F

.field private b:[F

.field private c:Landroid/graphics/Path;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/deepe/c/c/ab;->a:[F

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/ab;->c:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/c/ab;->d:Z

    iput-boolean v0, p0, Lcom/deepe/c/c/ab;->e:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(Landroid/graphics/RectF;)[F
    .locals 4

    iget-boolean v0, p0, Lcom/deepe/c/c/ab;->e:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/ab;->a:[F

    iput-object p1, p0, Lcom/deepe/c/c/ab;->b:[F

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/ab;->b:[F

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/deepe/c/c/ab;->b:[F

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/deepe/c/c/ab;->a:[F

    array-length v3, v2

    if-lt v1, v3, :cond_2

    iget-object p1, p0, Lcom/deepe/c/c/ab;->b:[F

    return-object p1

    :cond_2
    iget-object v3, p0, Lcom/deepe/c/c/ab;->b:[F

    aget v2, v2, v1

    invoke-static {v0, p1, v2}, Lcom/apicloud/a/i/d/c;->a(FFF)F

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/ab;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v2, 0x2

    aput p2, v0, v2

    const/4 v2, 0x3

    aput p2, v0, v2

    const/4 v2, 0x4

    aput p3, v0, v2

    const/4 v2, 0x5

    aput p3, v0, v2

    const/4 v2, 0x6

    aput p4, v0, v2

    const/4 v2, 0x7

    aput p4, v0, v2

    iput-boolean v1, p0, Lcom/deepe/c/c/ab;->d:Z

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-lez p1, :cond_0

    cmpg-float p1, p2, v0

    if-lez p1, :cond_0

    cmpg-float p1, p3, v0

    if-lez p1, :cond_0

    cmpg-float p1, p4, v0

    if-gtz p1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/deepe/c/c/ab;->e:Z

    :cond_1
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/c/c/ab;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/deepe/c/c/ab;->a(Landroid/graphics/RectF;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/c/ab;->c:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    iget-object v1, p0, Lcom/deepe/c/c/ab;->c:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p2, v0, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object p2, p0, Lcom/deepe/c/c/ab;->c:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    :goto_0
    return-void
.end method
