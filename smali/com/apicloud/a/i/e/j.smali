.class public Lcom/apicloud/a/i/e/j;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f040015

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static b(Landroid/view/View;)Ljava/lang/Object;
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result v1

    invoke-static {v0}, Lcom/apicloud/a/g/h;->b(I)I

    move-result v0

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p0, 0x0

    aget p0, v2, p0

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {p0}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p0

    invoke-static {v2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result v2

    add-int v3, p0, v1

    add-int v4, v2, v0

    new-instance v5, Lcom/apicloud/a/i/c/j;

    invoke-direct {v5}, Lcom/apicloud/a/i/c/j;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v5, v7, v6}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "y"

    invoke-virtual {v5, v7, v6}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v6, "left"

    invoke-virtual {v5, v6, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "top"

    invoke-virtual {v5, v2, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "right"

    invoke-virtual {v5, v2, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "bottom"

    invoke-virtual {v5, v2, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "width"

    invoke-virtual {v5, v1, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "height"

    invoke-virtual {v5, v0, p0}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5
.end method
