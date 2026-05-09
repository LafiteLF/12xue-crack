.class Lcom/deepe/c/c/a/a/j$d;
.super Lcom/deepe/c/c/a/a/j$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/a/a/j;

.field private final e:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/j;Landroid/graphics/Path;FF)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-direct {p0, p1, p3, p4}, Lcom/deepe/c/c/a/a/j$e;-><init>(Lcom/deepe/c/c/a/a/j;FF)V

    iput-object p2, p0, Lcom/deepe/c/c/a/a/j$d;->e:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/deepe/c/c/a/a/j;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v0

    iget-object v0, v0, Lcom/deepe/c/c/a/a/j$g;->a:Lcom/deepe/c/c/a/a/o;

    iget-object v0, v0, Lcom/deepe/c/c/a/a/o;->ab:Lcom/deepe/c/c/a/a/k$p;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-virtual {v0, v1}, Lcom/deepe/c/c/a/a/k$p;->c(Lcom/deepe/c/c/a/a/j;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->b:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/j;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j$d;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/deepe/c/c/a/a/j$d;->b:F

    sub-float v5, v1, v0

    iget v6, p0, Lcom/deepe/c/c/a/a/j$d;->c:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-object v7, v1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-boolean v1, v1, Lcom/deepe/c/c/a/a/j$g;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->c(Lcom/deepe/c/c/a/a/j;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v4, p0, Lcom/deepe/c/c/a/a/j$d;->e:Landroid/graphics/Path;

    iget v1, p0, Lcom/deepe/c/c/a/a/j$d;->b:F

    sub-float v5, v1, v0

    iget v6, p0, Lcom/deepe/c/c/a/a/j$d;->c:F

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v0

    iget-object v7, v0, Lcom/deepe/c/c/a/a/j$g;->h:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    :cond_2
    iget v0, p0, Lcom/deepe/c/c/a/a/j$d;->b:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$d;->a:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v2

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-static {v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$d;->b:F

    return-void
.end method
