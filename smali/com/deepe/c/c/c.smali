.class public Lcom/deepe/c/c/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/u;

    invoke-direct {v0, p2, p0, p1}, Lcom/deepe/c/c/u;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/deepe/c/c/m;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_0

    invoke-static {p0, p1}, Lcom/deepe/c/c/a;->a(Lcom/deepe/c/c/m;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/deepe/c/c/aa;->a([BLjava/lang/String;)Lcom/deepe/c/c/aa;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->f()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/deepe/c/c/ac;->b([BLjava/lang/String;)Lcom/deepe/c/c/ac;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/deepe/c/c/c;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_3
    :goto_1
    return-object p2
.end method

.method public static a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    instance-of v0, p0, Lcom/deepe/c/c/u;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepe/c/c/u;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/u;->a(Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;[F)V
    .locals 1

    instance-of v0, p0, Lcom/deepe/c/c/u;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepe/c/c/u;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/u;->a([F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/deepe/c/c/aa;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/graphics/drawable/Drawable;)Z
    .locals 0

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/deepe/c/c/ac;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/deepe/c/c/aa;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/deepe/c/c/aa;

    invoke-virtual {p0}, Lcom/deepe/c/c/aa;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
