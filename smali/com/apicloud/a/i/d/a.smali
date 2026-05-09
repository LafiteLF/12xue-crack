.class public final Lcom/apicloud/a/i/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)Lcom/apicloud/a/i/d/b/i;
    .locals 6

    new-instance v0, Lcom/apicloud/a/i/d/b/b;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/d/b/b;-><init>(I)V

    new-instance v1, Lcom/apicloud/a/i/d/b/b;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/d/b/b;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/apicloud/a/i/d/b/b;->a(Z)V

    const/4 v3, 0x5

    if-ne p0, v3, :cond_0

    const p0, -0xff9401

    invoke-virtual {v1, p0}, Lcom/apicloud/a/i/d/b/b;->d(I)V

    :cond_0
    new-instance p0, Lcom/apicloud/a/i/d/b/i;

    invoke-direct {p0}, Lcom/apicloud/a/i/d/b/i;-><init>()V

    new-array v3, v2, [I

    const v4, -0x10100a0

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-virtual {p0, v3, v0}, Lcom/apicloud/a/i/d/b/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v2, v2, [I

    const v3, 0x10100a0

    aput v3, v2, v5

    invoke-virtual {p0, v2, v1}, Lcom/apicloud/a/i/d/b/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v5, [I

    invoke-virtual {p0, v1, v0}, Lcom/apicloud/a/i/d/b/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/deepe/c/c/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/c;->a(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;[F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/c/c;->a(Landroid/graphics/drawable/Drawable;[F)V

    return-void
.end method

.method public static a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/apicloud/a/i/d/b/a;

    if-nez v0, :cond_1

    :cond_0
    const v0, -0x70708

    invoke-static {v0}, Lcom/apicloud/a/i/d/b/f;->b(I)Lcom/apicloud/a/i/d/b/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x202021

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/d/b/f;->a(FI)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/d/b/f;->b(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/apicloud/a/i/d/b/a;

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/apicloud/a/g/b;->b:I

    invoke-static {v0}, Lcom/apicloud/a/i/d/b/f;->b(I)Lcom/apicloud/a/i/d/b/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x202021

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/d/b/f;->a(FI)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
