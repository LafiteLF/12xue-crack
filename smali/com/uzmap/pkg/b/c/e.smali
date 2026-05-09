.class public Lcom/uzmap/pkg/b/c/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/deepe/c/c/s;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/c/p;->b(Lcom/deepe/c/c/s;)Lcom/deepe/c/c/m;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->d()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/c/m;->e()[B

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/c/w;->c([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/c/s;->a(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p0

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/e;->a(Lcom/deepe/c/c/s;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final a(J)V
    .locals 1

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/c/p;->a(J)V

    return-void
.end method
