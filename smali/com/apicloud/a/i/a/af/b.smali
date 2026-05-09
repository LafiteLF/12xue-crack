.class public Lcom/apicloud/a/i/a/af/b;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/af/d;",
        ">",
        "Lcom/apicloud/a/i/d<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private A(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const v0, 0x7f040008

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/af/d;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/g/c/a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/apicloud/a/g/c/a;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/apicloud/a/g/c/a;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/af/d;->setTag(ILjava/lang/Object;)V

    :cond_1
    const-string v0, "color"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/g/b;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/apicloud/a/g/c/a;->b(I)V

    :cond_2
    const-string v0, "fontSize"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/apicloud/a/g/m;->c(Ljava/lang/String;)Lcom/apicloud/a/g/l;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/g/l;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/apicloud/a/g/c/a;->a(I)V

    :cond_3
    invoke-virtual {v1}, Lcom/apicloud/a/g/c/a;->a()Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->c()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->a()I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const-string v1, "left"

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    and-int/lit8 v0, p1, 0x5

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    const-string p1, "right"

    return-object p1

    :cond_1
    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const-string p1, "center"

    return-object p1

    :cond_2
    return-object v1
.end method

.method private d(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "textDecoration"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x45d81614

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const v1, -0x3d363934

    if-eq v0, v1, :cond_2

    const p1, 0x1f9462c8

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "overline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    const-string v0, "underline"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->e()Landroid/graphics/Paint;

    move-result-object p2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->e()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_4
    const-string v0, "line-through"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->e()Landroid/graphics/Paint;

    move-result-object p2

    const/16 v0, 0x10

    goto :goto_0
.end method

.method private e(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "direction"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1a3ea

    if-eq v0, v1, :cond_4

    const v1, 0x1ba6a

    if-eq v0, v1, :cond_2

    const v1, 0x740c90fb

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "inherit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->setTextDirection(I)V

    return-void

    :cond_2
    const-string v0, "rtl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->setTextDirection(I)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(I)V

    return-void

    :cond_4
    const-string v0, "ltr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_0
    return-void

    :cond_5
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->setTextDirection(I)V

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(I)V

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->b()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "fontVariant"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df94319

    const/16 v2, 0x15

    if-eq v0, v1, :cond_2

    const v1, 0x468813e7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "small-caps"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    const-string p2, "smcp"

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_4

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/af/d;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private h(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "letterSpacing"

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/af/b;->a(Lcom/apicloud/a/c;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/af/d;->d()F

    move-result v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(F)V

    return-void
.end method

.method private i(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private j(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "lineHeight"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/af/b;->b(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;)V

    return-void
.end method

.method private k(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "textOverflow"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x352a9fef    # -6991880.5f

    if-eq v0, v1, :cond_3

    const v1, 0x2ea350

    if-eq v0, v1, :cond_2

    const v1, 0xb3f60d1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "ellipsis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :cond_2
    const-string p1, "clip"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_3
    const-string p1, "string"

    goto :goto_0

    :goto_1
    return-void
.end method

.method private l(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private m(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 3

    const-string v0, "wordBreak"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7132502d

    const/16 v2, 0x17

    if-eq v0, v1, :cond_4

    const v1, -0x3df94319

    if-eq v0, v1, :cond_2

    const v1, -0x37330a7

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "keep-all"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_6

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string p1, "normal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_1

    :cond_4
    const-string v0, "break-all"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v2, :cond_6

    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->b(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private n(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "whiteSpace"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "nowrap"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(Z)V

    return-void
.end method

.method private o(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "placeholder"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f040008

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/af/d;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/g/c/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/apicloud/a/g/c/a;

    invoke-direct {v1, p2}, Lcom/apicloud/a/g/c/a;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/a/i/a/af/d;->setTag(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2}, Lcom/apicloud/a/g/c/a;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/apicloud/a/g/c/a;->a()Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "placeholder-style"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/af/b;->A(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void
.end method

.method private q(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "placeholder-class"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/apicloud/a/i/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/af/b;->a()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/af/b;->A(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void
.end method

.method private r(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private s(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private t(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 6

    const-string v0, "textShadow"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/apicloud/a/g/b;->a:I

    array-length v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_1

    aget-object v2, p2, v5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v5

    aget-object v2, p2, v4

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v2

    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v4

    aget-object p2, p2, v3

    :goto_0
    invoke-static {p2, v0}, Lcom/apicloud/a/g/b;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    array-length v2, p2

    if-le v2, v1, :cond_3

    aget-object v2, p2, v5

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v5

    aget-object v2, p2, v4

    invoke-virtual {p0, v2}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v2

    aget-object p2, p2, v1

    invoke-static {p2}, Lcom/apicloud/a/g/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/af/b;->b(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    int-to-float p2, v4

    int-to-float v1, v5

    int-to-float v2, v2

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/apicloud/a/i/a/af/d;->a(FFFI)V

    return-void
.end method

.method private u(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private v(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private w(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private x(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private y(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private z(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/af/d;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/af/b;->a(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "placeholder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->c(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_1
    const-string v0, "maxLines"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->e(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "value"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_3
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->b(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->a(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "lineHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->f(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_6
    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/af/b;->d(Lcom/apicloud/a/i/a/af/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x3f826a28 -> :sswitch_6
        -0x1ebe99c5 -> :sswitch_5
        0x36452d -> :sswitch_4
        0x5a72f63 -> :sswitch_3
        0x6ac9171 -> :sswitch_2
        0x174277fb -> :sswitch_1
        0x23a88573 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/af/d;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/af/b;->a(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, p2}, Lcom/apicloud/a/i/a/af/b;->a(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;Lcom/apicloud/a/c;)V

    goto :goto_0
.end method

.method public a(Lcom/apicloud/a/i/a/af/d;Ljava/lang/String;Lcom/apicloud/a/c;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "letterSpacing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->h(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "placeholder-style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->p(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "placeholder-class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->q(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "fontVariant"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->g(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "textShadow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->t(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "userSelect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->z(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_6
    const-string v0, "textIndent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->i(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_7
    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->w(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_8
    const-string v0, "wordBreak"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->m(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_9
    const-string v0, "placeholder"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->o(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_a
    const-string v0, "markupEnabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->x(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_b
    const-string v0, "maxLines"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->y(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_c
    const-string v0, "fontSize"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->u(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_d
    const-string v0, "textOverflow"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->k(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_e
    const-string v0, "whiteSpace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->n(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_f
    const-string v0, "color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->v(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_10
    const-string v0, "text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->c(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_11
    const-string v0, "lineHeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_11

    goto :goto_0

    :cond_11
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->j(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_12
    const-string v0, "fontWeight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    goto :goto_0

    :cond_12
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->r(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_13
    const-string v0, "textDecoration"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_0

    :cond_13
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->d(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_14
    const-string v0, "direction"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_0

    :cond_14
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->e(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_15
    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_0

    :cond_15
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->b(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_16
    const-string v0, "fontFamily"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16

    goto :goto_0

    :cond_16
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->f(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_17
    const-string v0, "fontStyle"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_17

    goto :goto_0

    :cond_17
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->s(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_18
    const-string v0, "unicodeBidi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_0

    :cond_18
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/a/af/b;->l(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f9ea477 -> :sswitch_18
        -0x5c71855e -> :sswitch_17
        -0x48ff636d -> :sswitch_16
        -0x3f826a28 -> :sswitch_15
        -0x395ff881 -> :sswitch_14
        -0x3468fa43 -> :sswitch_13
        -0x2bc67c59 -> :sswitch_12
        -0x1ebe99c5 -> :sswitch_11
        0x36452d -> :sswitch_10
        0x5a72f63 -> :sswitch_f
        0xebe665d -> :sswitch_e
        0xf94e04f -> :sswitch_d
        0x15caa0f0 -> :sswitch_c
        0x174277fb -> :sswitch_b
        0x19b5cff9 -> :sswitch_a
        0x23a88573 -> :sswitch_9
        0x33747815 -> :sswitch_8
        0x38b73479 -> :sswitch_7
        0x5cf5cc39 -> :sswitch_6
        0x5e0fc8a7 -> :sswitch_5
        0x6db054ad -> :sswitch_4
        0x77bcf536 -> :sswitch_3
        0x784d209e -> :sswitch_2
        0x793294d7 -> :sswitch_1
        0x7dd4813d -> :sswitch_0
    .end sparse-switch
.end method

.method protected b(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "textAlign"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x514d33ab

    if-eq v0, v1, :cond_4

    const v1, 0x32a007

    if-eq v0, v1, :cond_2

    const v1, 0x677c21c

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "right"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x5

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(I)V

    return-void

    :cond_2
    const-string v0, "left"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    goto :goto_0

    :cond_4
    const-string v0, "center"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_1
    return-void

    :cond_5
    const/4 p2, 0x1

    goto :goto_0
.end method

.method protected c(Lcom/apicloud/a/i/a/af/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "text"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/af/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
