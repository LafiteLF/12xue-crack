.class public Lcom/deepe/a/g/a;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/g/a$a;,
        Lcom/deepe/a/g/a$b;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/a/g/a$b;


# direct methods
.method private constructor <init>(Landroid/content/Context;F)V
    .locals 1

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/deepe/a/g/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p2}, Lcom/deepe/a/g/a;->a(F)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;FLcom/deepe/a/g/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/g/a;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result p0

    return p0
.end method

.method static a(F)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {p0}, Lcom/deepe/a/g/a;->b(F)F

    move-result p0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    const/4 v1, 0x3

    aput p0, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    const/4 v1, 0x5

    aput p0, v0, v1

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    new-instance p0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    return-object p0
.end method

.method static synthetic a(ZF)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/a/g/a;->c(ZF)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static a([F)Landroid/graphics/drawable/StateListDrawable;
    .locals 5

    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    new-instance v1, Landroid/graphics/drawable/PaintDrawable;

    const v2, -0x151516

    invoke-direct {v1, v2}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    new-instance p0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10100a7

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    invoke-virtual {p0, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method static a(Landroid/widget/Button;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a;Lcom/deepe/a/g/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a;->a:Lcom/deepe/a/g/a$b;

    return-void
.end method

.method public static b(F)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(F)F

    move-result p0

    return p0
.end method

.method static synthetic b(ZF)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/a/g/a;->d(ZF)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static c()I
    .locals 2

    sget v0, Lcom/apicloud/a/a/d;->c:I

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method static synthetic c(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    invoke-static {p0}, Lcom/deepe/a/g/a;->e(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static c(ZF)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/deepe/a/g/a;->b(F)F

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 p1, 0x8

    new-array p1, p1, [F

    const/4 v1, 0x0

    aput v0, p1, v1

    const/4 v1, 0x1

    aput v0, p1, v1

    const/4 v1, 0x2

    aput v0, p1, v1

    const/4 v1, 0x3

    aput v0, p1, v1

    const/4 v0, 0x4

    aput p0, p1, v0

    const/4 v0, 0x5

    aput p0, p1, v0

    const/4 v0, 0x6

    aput p0, p1, v0

    const/4 v0, 0x7

    aput p0, p1, v0

    invoke-static {p1}, Lcom/deepe/a/g/a;->a([F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static d(ZF)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const/16 p0, 0x8

    new-array p0, p0, [F

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v1, 0x1

    aput v0, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    const/4 v1, 0x3

    aput v0, p0, v1

    const/4 v0, 0x4

    aput p1, p0, v0

    const/4 v0, 0x5

    aput p1, p0, v0

    const/4 v0, 0x6

    aput p1, p0, v0

    const/4 v0, 0x7

    aput p1, p0, v0

    new-instance p1, Landroid/graphics/drawable/PaintDrawable;

    const v0, -0x80809

    invoke-direct {p1, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    return-object p1
.end method

.method static synthetic d(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    invoke-static {p0}, Lcom/deepe/a/g/a;->f(F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/a/g/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/i;->a(Landroid/content/Context;)Lcom/deepe/c/a/i;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/a/g/a;->b()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/a/i;->a(Landroid/view/View;)V

    return-void
.end method

.method private static e(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    invoke-static {p0}, Lcom/deepe/a/g/a;->b(F)F

    move-result p0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x6

    aput p0, v0, v1

    const/4 v1, 0x7

    aput p0, v0, v1

    invoke-static {v0}, Lcom/deepe/a/g/a;->a([F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static f(F)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    invoke-static {p0}, Lcom/deepe/a/g/a;->b(F)F

    move-result p0

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v2, 0x4

    aput p0, v0, v2

    const/4 v2, 0x5

    aput p0, v0, v2

    const/4 p0, 0x6

    aput v1, v0, p0

    const/4 p0, 0x7

    aput v1, v0, p0

    invoke-static {v0}, Lcom/deepe/a/g/a;->a([F)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a;->a:Lcom/deepe/a/g/a$b;

    invoke-virtual {v0}, Lcom/deepe/a/g/a$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a;->a:Lcom/deepe/a/g/a$b;

    invoke-virtual {v0}, Lcom/deepe/a/g/a$b;->c()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a;->a:Lcom/deepe/a/g/a$b;

    invoke-virtual {v0}, Lcom/deepe/a/g/a$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/a/g/a;->d()V

    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
