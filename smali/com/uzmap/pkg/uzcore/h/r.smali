.class public Lcom/uzmap/pkg/uzcore/h/r;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/r$a;
    }
.end annotation


# direct methods
.method static a(II)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x101009e

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [I

    const v6, 0x10100a7

    aput v6, v3, v5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    const v6, 0x101009c

    aput v6, v3, v5

    aput-object v3, v1, v2

    new-array v3, v2, [I

    const v6, 0x10100a0

    aput v6, v3, v5

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [I

    const v7, 0x101009d

    aput v7, v3, v5

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v5, [I

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v0, v0, [I

    aput p0, v0, v5

    aput p1, v0, v2

    aput p1, v0, v4

    aput p1, v0, v6

    aput p0, v0, v7

    aput p0, v0, v8

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static a(IIII)Landroid/graphics/drawable/LayerDrawable;
    .locals 7

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    and-int/lit8 p0, p3, 0x7

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    neg-int v1, p2

    move v3, v1

    :goto_0
    and-int/lit8 p3, p3, 0x70

    const/16 v1, 0x30

    if-ne p3, v1, :cond_1

    move v4, p1

    goto :goto_1

    :cond_1
    neg-int v1, p2

    move v4, v1

    :goto_1
    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    move v5, p1

    goto :goto_2

    :cond_2
    neg-int p0, p2

    move v5, p0

    :goto_2
    const/16 p0, 0x50

    if-ne p3, p0, :cond_3

    goto :goto_3

    :cond_3
    neg-int p1, p2

    :goto_3
    move v6, p1

    const/4 v2, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/r;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/r;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x10100a1

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v1, [I

    const v2, 0x101009e

    aput v2, v1, v4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v4, [I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static a(FII)Lcom/deepe/c/c/ad;
    .locals 1

    new-instance v0, Lcom/deepe/c/c/ad;

    int-to-float p1, p1

    div-float/2addr p1, p0

    int-to-float p2, p2

    div-float/2addr p2, p0

    invoke-direct {v0, p1, p2}, Lcom/deepe/c/c/ad;-><init>(FF)V

    return-object v0
.end method

.method static a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/h/r$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/c/s;->a(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p0

    invoke-static {}, Lcom/deepe/c/c/p;->a()Lcom/deepe/c/c/p;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/h/r$1;

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzcore/h/r$1;-><init>(Lcom/uzmap/pkg/uzcore/h/r$a;)V

    invoke-virtual {v0, p0, v1}, Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V

    return-void
.end method

.method static b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/deepe/c/c/ae;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p0
.end method
