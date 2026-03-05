.class public Lcom/apicloud/a/i/a/v/a;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/reflect/Field;

.field static b:Ljava/lang/reflect/Field;


# direct methods
.method public static a(III)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Lcom/apicloud/a/i/d/b/h;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/d/b/h;-><init>(I)V

    new-instance p0, Lcom/apicloud/a/i/d/b/h;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d/b/h;-><init>(I)V

    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance p0, Lcom/apicloud/a/i/d/b/h;

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/d/b/h;-><init>(I)V

    new-instance p2, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {p2, p0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-array p0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    aput-object p1, p0, v2

    const/4 p1, 0x2

    aput-object p2, p0, p1

    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x1020000

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p0, 0x102000d

    invoke-virtual {p2, v2, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p0, 0x102000f

    invoke-virtual {p2, p1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    return-object p0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/a/v/g;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/v/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez v0, :cond_3

    new-instance v0, Lcom/apicloud/a/i/a/v/f;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/v/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    instance-of p1, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez p1, :cond_1

    new-instance p1, Lcom/apicloud/a/i/a/v/g;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/v/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez p1, :cond_3

    new-instance p1, Lcom/apicloud/a/i/a/v/f;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/v/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    return-object p0

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_2

    instance-of p1, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez p1, :cond_1

    new-instance p1, Lcom/apicloud/a/i/a/v/g;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/v/g;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_1
    return-object p0

    :cond_2
    instance-of p1, p0, Lcom/apicloud/a/i/a/v/e;

    if-nez p1, :cond_3

    new-instance p1, Lcom/apicloud/a/i/a/v/f;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/v/f;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p1

    :cond_3
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    :try_start_0
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/widget/ProgressBar;I)V
    .locals 2

    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static a(Landroid/widget/ProgressBar;II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, p1}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/apicloud/a/i/a/v/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x1020000

    if-eq p2, v0, :cond_4

    const v0, 0x102000d

    if-eq p2, v0, :cond_3

    const v0, 0x102000f

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_4
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static a(Landroid/widget/ProgressBar;Ljava/lang/Integer;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/apicloud/a/i/a/v/a;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-string v0, "mMaxHeight"

    invoke-static {v0}, Lcom/apicloud/a/i/a/v/a;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/v/a;->a:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/v/a;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    const-string v0, "mMinHeight"

    invoke-static {v0}, Lcom/apicloud/a/i/a/v/a;->a(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/v/a;->b:Ljava/lang/reflect/Field;

    :cond_1
    sget-object v0, Lcom/apicloud/a/i/a/v/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/apicloud/a/i/a/v/a;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/apicloud/a/i/a/v/a;->b:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static a()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b(Landroid/widget/ProgressBar;II)V
    .locals 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result p2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, v6

    move v3, p1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
