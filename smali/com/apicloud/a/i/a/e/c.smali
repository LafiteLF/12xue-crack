.class public Lcom/apicloud/a/i/a/e/c;
.super Lcom/apicloud/a/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/f/a<",
        "Lcom/apicloud/a/i/a/e/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/e/b/y;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/a;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/c;Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(IILcom/eclipsesource/v8/V8TypedArray;)Landroid/graphics/Bitmap;
    .locals 9

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, p2, :cond_0

    invoke-virtual {p3}, Lcom/eclipsesource/v8/V8TypedArray;->close()V

    return-object v0

    :cond_0
    move v4, v1

    :goto_1
    if-lt v4, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v3, 0x3

    invoke-virtual {p3, v5}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v5

    invoke-virtual {p3, v3}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p3, v7}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v7

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {p3, v8}, Lcom/eclipsesource/v8/V8TypedArray;->getInteger(I)I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private a(Lcom/apicloud/a/i/a/e/g;IIII)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/c;->b()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->i()Lcom/apicloud/a/c/x;

    move-result-object v0

    mul-int v1, p4, p5

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/x;->a(I)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/g;->a()Lcom/apicloud/a/i/a/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b;->e()Landroid/graphics/Bitmap;

    move-result-object p1

    move v1, p3

    :goto_0
    add-int v2, p5, p3

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    move v2, p2

    :goto_1
    add-int v3, p4, p2

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lcom/eclipsesource/v8/V8ArrayBuffer;->put(B)Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lcom/eclipsesource/v8/V8ArrayBuffer;->put(B)Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {v0, v4}, Lcom/eclipsesource/v8/V8ArrayBuffer;->put(B)Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, Lcom/eclipsesource/v8/V8ArrayBuffer;->put(B)Lcom/eclipsesource/v8/V8ArrayBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private a(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 2

    const-string v0, "text"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "font"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/c;->b()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/apicloud/a/i/a/e/a/f;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/i/a/e/a/f;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/a/e/g;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/e/a/f;)F

    move-result p1

    new-instance p2, Lcom/apicloud/a/i/c/j;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/j;-><init>()V

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "width"

    invoke-virtual {p2, v0, p1}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private a(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/a/e/b/w;->a(Lcom/apicloud/a/d;)Lcom/apicloud/a/i/a/e/b/y;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/c;->a:Lcom/apicloud/a/i/a/e/b/y;

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 7

    const-string v0, "x"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v0, "y"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v0, "width"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, "height"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/i/a/e/g;IIII)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)V
    .locals 10

    const-string v0, "width"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p2, v1}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "x"

    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "y"

    invoke-virtual {p2, v3}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "dirtyX"

    invoke-virtual {p2, v4}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "dirtyY"

    invoke-virtual {p2, v5}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "dirtyWidth"

    invoke-virtual {p2, v6}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "dirtyHeight"

    invoke-virtual {p2, v7}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v4

    int-to-float v9, v5

    add-int/2addr v4, v6

    int-to-float v4, v4

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const-string v3, "data"

    invoke-virtual {p2, v3}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eclipsesource/v8/utils/TypedArray;

    invoke-virtual {p2}, Lcom/eclipsesource/v8/utils/TypedArray;->getV8TypedArray()Lcom/eclipsesource/v8/V8TypedArray;

    move-result-object p2

    invoke-direct {p0, v0, v1, p2}, Lcom/apicloud/a/i/a/e/c;->a(IILcom/eclipsesource/v8/V8TypedArray;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v8, v2}, Lcom/apicloud/a/i/a/e/g;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)V
    .locals 2

    const-class v0, Ljava/lang/Object;

    const-string v1, "actionlist"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/c;->a:Lcom/apicloud/a/i/a/e/b/y;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/apicloud/a/i/a/e/a/e;

    invoke-direct {v1, p2}, Lcom/apicloud/a/i/a/e/a/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/i/a/e/b/y;->a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/g;->f()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/g;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "putImageData"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/c;->c(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_1
    const-string p4, "flush"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/c;->d(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)V

    goto :goto_0

    :sswitch_2
    const-string p4, "init"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "width"

    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/c;Ljava/lang/String;)I

    move-result p2

    const-string p4, "height"

    invoke-direct {p0, p3, p4}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/c;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/apicloud/a/i/a/e/g;->a(II)V

    goto :goto_0

    :sswitch_3
    const-string p4, "getImageData"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/c;->b(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string p4, "measureText"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/i/a/e/g;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    const/4 p1, 0x0

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c188055 -> :sswitch_4
        -0x34f1a711 -> :sswitch_3
        0x316510 -> :sswitch_2
        0x5d03b04 -> :sswitch_1
        0x5e985556 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/g;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/i/a/e/g;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/c;->b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "$graphics"

    return-object v0
.end method

.method public a(Lcom/apicloud/a/i/a/e/g;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/g;->s()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/e/g;
    .locals 0

    const-string p1, "parent"

    invoke-virtual {p2, p1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    if-eqz p1, :cond_0

    new-instance p2, Lcom/apicloud/a/i/a/e/g;

    invoke-direct {p2, p1}, Lcom/apicloud/a/i/a/e/g;-><init>(Lcom/apicloud/a/i/a/e/b;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "GraphicalContext parent is not a Canvas"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/g;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/c;->a(Lcom/apicloud/a/i/a/e/g;)V

    return-void
.end method
