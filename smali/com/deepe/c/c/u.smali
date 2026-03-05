.class public Lcom/deepe/c/c/u;
.super Lcom/deepe/c/c/ae;


# instance fields
.field protected a:Ljava/lang/String;

.field private b:Landroid/graphics/RectF;

.field private c:Lcom/deepe/c/c/ab;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/deepe/c/c/u;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/c/u;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/deepe/c/c/u;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/u;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/u;->c:Lcom/deepe/c/c/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ab;

    invoke-direct {v0}, Lcom/deepe/c/c/ab;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/u;->c:Lcom/deepe/c/c/ab;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/u;->c:Lcom/deepe/c/c/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/deepe/c/c/ab;->a(FFFF)V

    invoke-virtual {p0}, Lcom/deepe/c/c/u;->invalidateSelf()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/c/u;->d:Z

    return-void
.end method

.method public a([F)V
    .locals 4

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget p1, p1, v3

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/deepe/c/c/u;->a(FFFF)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/c/u;->d:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/u;->c:Lcom/deepe/c/c/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/c/u;->b:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/deepe/c/c/u;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/deepe/c/c/u;->b:Landroid/graphics/RectF;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/u;->c:Lcom/deepe/c/c/ab;

    iget-object v1, p0, Lcom/deepe/c/c/u;->b:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1}, Lcom/deepe/c/c/ab;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/c/ae;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/deepe/c/c/ae;->onBoundsChange(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/deepe/c/c/u;->b:Landroid/graphics/RectF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/u;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "image@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "empty img"

    :goto_0
    return-object v0
.end method
