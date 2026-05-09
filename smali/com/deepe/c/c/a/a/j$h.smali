.class Lcom/deepe/c/c/a/a/j$h;
.super Lcom/deepe/c/c/a/a/j$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:F

.field b:F

.field final c:Landroid/graphics/RectF;

.field final synthetic d:Lcom/deepe/c/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/j;FF)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$h;->d:Lcom/deepe/c/c/a/a/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j$i;-><init>(Lcom/deepe/c/c/a/a/j$i;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    iput p2, p0, Lcom/deepe/c/c/a/a/j$h;->a:F

    iput p3, p0, Lcom/deepe/c/c/a/a/j$h;->b:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$h;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$h;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/deepe/c/c/a/a/j$h;->a:F

    iget v2, p0, Lcom/deepe/c/c/a/a/j$h;->b:F

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/j$h;->a:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$h;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v2

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-static {v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$h;->a:F

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a/k$ax;)Z
    .locals 4

    instance-of v0, p1, Lcom/deepe/c/c/a/a/k$ay;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/deepe/c/c/a/a/k$ay;

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$ax;->u:Lcom/deepe/c/c/a/a/k;

    iget-object v2, v0, Lcom/deepe/c/c/a/a/k$ay;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/deepe/c/c/a/a/k;->a(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$am;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/k$ay;->a:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "TextPath path reference \'%s\' not found"

    invoke-static {v0, p1}, Lcom/deepe/c/c/a/a/j;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_0
    check-cast p1, Lcom/deepe/c/c/a/a/k$v;

    new-instance v0, Lcom/deepe/c/c/a/a/j$c;

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$v;->a:Lcom/deepe/c/c/a/a/k$w;

    invoke-direct {v0, v3}, Lcom/deepe/c/c/a/a/j$c;-><init>(Lcom/deepe/c/c/a/a/k$w;)V

    invoke-virtual {v0}, Lcom/deepe/c/c/a/a/j$c;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v3, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    if-eqz v3, :cond_1

    iget-object p1, p1, Lcom/deepe/c/c/a/a/k$v;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$h;->c:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return v2

    :cond_2
    return v1
.end method
