.class final Lcom/deepe/a/g/a/f;
.super Ljava/lang/Object;


# direct methods
.method static a(II)Landroid/content/res/ColorStateList;
    .locals 9

    const/4 v0, 0x6

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v5, [I

    const v6, 0x101009e

    aput v6, v3, v4

    aput-object v3, v1, v2

    new-array v3, v5, [I

    const v6, 0x101009c

    aput v6, v3, v4

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v5, [I

    const v7, 0x101009d

    aput v7, v3, v4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    new-array v3, v4, [I

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-array v0, v0, [I

    aput p1, v0, v4

    aput p1, v0, v5

    aput p0, v0, v2

    aput p1, v0, v6

    aput p0, v0, v7

    aput p0, v0, v8

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method static a([FI)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, v0, v1

    aget v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    aget v1, p0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    aget v1, p0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    aget v1, p0, v3

    const/4 v4, 0x4

    aput v1, v0, v4

    aget v1, p0, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    aget v1, p0, v2

    const/4 v3, 0x6

    aput v1, v0, v3

    aget p0, p0, v2

    const/4 v1, 0x7

    aput p0, v0, v1

    new-instance p0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    return-object p0
.end method

.method static a([FII)Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aput v2, v0, v1

    aget v2, p0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    aget v2, p0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    aget v2, p0, v3

    const/4 v5, 0x3

    aput v2, v0, v5

    aget v2, p0, v4

    const/4 v6, 0x4

    aput v2, v0, v6

    aget v2, p0, v4

    const/4 v4, 0x5

    aput v2, v0, v4

    aget v2, p0, v5

    const/4 v4, 0x6

    aput v2, v0, v4

    aget p0, p0, v5

    const/4 v2, 0x7

    aput p0, v0, v2

    new-instance p0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    new-instance p1, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v0, v3, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array p1, v1, [I

    invoke-virtual {p2, p1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
