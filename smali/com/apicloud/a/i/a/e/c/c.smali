.class final Lcom/apicloud/a/i/a/e/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field final a:Lcom/apicloud/a/i/a/e/c/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/e/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 5

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v0, p3, p2}, Lcom/apicloud/a/i/a/e/c/d;->a(II)Landroid/util/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/c/d;->a()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/c/d;->b()Lcom/apicloud/a/i/a/e/c/d$a;

    move-result-object v1

    sget-object v2, Lcom/apicloud/a/i/a/e/c/d$a;->d:Lcom/apicloud/a/i/a/e/c/d$a;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/c/d;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float p3, p3

    mul-float/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p2, p2

    mul-float/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    iget p2, v1, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p3, v1, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    mul-float/2addr p3, v3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {v1, p2, p3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    return-void

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/c/d;->a()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_2

    iget-object p2, p0, Lcom/apicloud/a/i/a/e/c/c;->a:Lcom/apicloud/a/i/a/e/c/d;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/c/d;->b()Lcom/apicloud/a/i/a/e/c/d$a;

    move-result-object p2

    sget-object p3, Lcom/apicloud/a/i/a/e/c/d$a;->d:Lcom/apicloud/a/i/a/e/c/d$a;

    if-eq p2, p3, :cond_2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_2
    return-void
.end method
