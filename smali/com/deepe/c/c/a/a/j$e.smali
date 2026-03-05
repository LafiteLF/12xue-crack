.class Lcom/deepe/c/c/a/a/j$e;
.super Lcom/deepe/c/c/a/a/j$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field b:F

.field c:F

.field final synthetic d:Lcom/deepe/c/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/j;FF)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j$i;-><init>(Lcom/deepe/c/c/a/a/j$i;)V

    iput p2, p0, Lcom/deepe/c/c/a/a/j$e;->b:F

    iput p3, p0, Lcom/deepe/c/c/a/a/j$e;->c:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TextSequence render"

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v0

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/j;)Landroid/graphics/Canvas;

    move-result-object v1

    iget v2, p0, Lcom/deepe/c/c/a/a/j$e;->b:F

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/deepe/c/c/a/a/j$e;->c:F

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v4}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v4

    iget-object v4, v4, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/j;)Landroid/graphics/Canvas;

    move-result-object v1

    iget v2, p0, Lcom/deepe/c/c/a/a/j$e;->b:F

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/deepe/c/c/a/a/j$e;->c:F

    iget-object v3, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v3}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v3

    iget-object v3, v3, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/deepe/c/c/a/a/j$e;->b:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$e;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v2

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-static {v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$e;->b:F

    return-void
.end method
