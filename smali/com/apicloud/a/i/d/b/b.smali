.class public Lcom/apicloud/a/i/d/b/b;
.super Lcom/apicloud/a/i/d/b/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/d/b/b$a;
    }
.end annotation


# static fields
.field public static final a:I


# instance fields
.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lcom/apicloud/a/i/d/b/b$a;

.field private g:Lcom/apicloud/a/i/d/b/b$a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/apicloud/a/g/b;->b:I

    sput v0, Lcom/apicloud/a/i/d/b/b;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/e;-><init>()V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/b;->h(I)V

    return-void
.end method

.method private h(I)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/b;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    if-ne p1, v1, :cond_0

    const/high16 p1, 0x41000000    # 8.0f

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->b(F)V

    const p1, -0xff9401

    goto :goto_0

    :cond_0
    const/high16 p1, 0x42c80000    # 100.0f

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->b(F)V

    sget p1, Lcom/apicloud/a/i/d/b/b;->a:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->c(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->d(I)V

    const p1, -0x202021

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->b(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/d/b/b;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/apicloud/a/i/d/b/b;->h:Z

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/b;->c:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/apicloud/a/i/d/b/b;->c:I

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/b;->a(FI)V

    return-void

    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/a/i/d/b/b;->a(FI)V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/b;->d:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/d/b/b;->d:I

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/d/b/b;->e:I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/d/b/b;->g(I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/d/b/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->f:Lcom/apicloud/a/i/d/b/b$a;

    iget v2, v0, Lcom/apicloud/a/i/d/b/b$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->f:Lcom/apicloud/a/i/d/b/b$a;

    iget v3, v0, Lcom/apicloud/a/i/d/b/b$a;->b:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->f:Lcom/apicloud/a/i/d/b/b$a;

    iget v4, v0, Lcom/apicloud/a/i/d/b/b$a;->c:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->f:Lcom/apicloud/a/i/d/b/b$a;

    iget v5, v0, Lcom/apicloud/a/i/d/b/b$a;->d:F

    iget-object v6, p0, Lcom/apicloud/a/i/d/b/b;->b:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->g:Lcom/apicloud/a/i/d/b/b$a;

    iget v2, v0, Lcom/apicloud/a/i/d/b/b$a;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->g:Lcom/apicloud/a/i/d/b/b$a;

    iget v3, v0, Lcom/apicloud/a/i/d/b/b$a;->b:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->g:Lcom/apicloud/a/i/d/b/b$a;

    iget v4, v0, Lcom/apicloud/a/i/d/b/b$a;->c:F

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/b;->g:Lcom/apicloud/a/i/d/b/b$a;

    iget v5, v0, Lcom/apicloud/a/i/d/b/b$a;->d:F

    iget-object v6, p0, Lcom/apicloud/a/i/d/b/b;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/apicloud/a/i/d/b/e;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/d/b/b;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v7, v6, v0

    add-int/lit8 v8, v6, -0x5

    div-int/lit8 v9, v8, 0x3

    new-instance v10, Lcom/apicloud/a/i/d/b/b$a;

    int-to-float v2, v7

    int-to-float v3, v6

    add-int v11, v7, v9

    int-to-float v4, v11

    add-int v0, v6, v9

    int-to-float v12, v0

    move-object v0, v10

    move-object v1, p0

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/d/b/b$a;-><init>(Lcom/apicloud/a/i/d/b/b;FFFF)V

    iput-object v10, p0, Lcom/apicloud/a/i/d/b/b;->f:Lcom/apicloud/a/i/d/b/b$a;

    new-instance v10, Lcom/apicloud/a/i/d/b/b$a;

    add-int/lit8 v11, v11, -0x1

    int-to-float v2, v11

    add-int/2addr v7, v8

    int-to-float v4, v7

    neg-int v0, v9

    add-int/2addr v6, v0

    int-to-float v5, v6

    move-object v0, v10

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/a/i/d/b/b$a;-><init>(Lcom/apicloud/a/i/d/b/b;FFFF)V

    iput-object v10, p0, Lcom/apicloud/a/i/d/b/b;->g:Lcom/apicloud/a/i/d/b/b$a;

    :cond_0
    return-void
.end method
