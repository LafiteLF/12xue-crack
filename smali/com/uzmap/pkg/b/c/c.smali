.class public final Lcom/uzmap/pkg/b/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a()I
    .locals 1

    sget v0, Lcom/deepe/c/b/c;->a:I

    return v0
.end method

.method public static a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v0

    iget v0, v0, Lcom/uzmap/pkg/uzcore/z;->b:I

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->a()Lcom/uzmap/pkg/uzcore/z;

    move-result-object v3

    iget v3, v3, Lcom/uzmap/pkg/uzcore/z;->a:I

    invoke-static {}, Lcom/uzmap/pkg/uzcore/z;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v4

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/c/s;->a(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p0

    iput v0, p0, Lcom/deepe/c/c/s;->b:I

    iput v3, p0, Lcom/deepe/c/c/s;->c:I

    iput-boolean v2, p0, Lcom/deepe/c/c/s;->g:Z

    invoke-static {p0}, Lcom/deepe/c/c/p;->b(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/deepe/c/c/ae;

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/w;->c([B)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v0

    :cond_3
    move-object p0, v1

    check-cast p0, Lcom/deepe/c/c/ae;

    const/16 p1, 0x30

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/ae;->setGravity(I)V

    goto :goto_1

    :cond_4
    sget p0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 p1, 0x18

    if-lt p0, p1, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public static a(Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/b;->a(Z)Lcom/uzmap/pkg/b/c/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Z
    .locals 1

    sget v0, Lcom/deepe/c/b/c;->a:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/c/b;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/b/c/b;-><init>(I)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/deepe/c/i/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/uzmap/pkg/b/c/b;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/b/c/b;-><init>(I)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method
