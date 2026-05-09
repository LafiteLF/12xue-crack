.class public Lcom/apicloud/a/a/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroid/util/DisplayMetrics;

.field public static final b:F

.field public static final c:I

.field public static final d:I

.field public static final e:F

.field public static final f:F

.field public static g:I

.field static final h:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/a/d;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/apicloud/a/a/d;->b:F

    sget-object v0, Lcom/apicloud/a/a/d;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/apicloud/a/a/d;->c:I

    sget-object v0, Lcom/apicloud/a/a/d;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/apicloud/a/a/d;->d:I

    sget v1, Lcom/apicloud/a/a/d;->c:I

    int-to-float v2, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sput v2, Lcom/apicloud/a/a/d;->e:F

    int-to-float v0, v0

    div-float/2addr v0, v3

    sput v0, Lcom/apicloud/a/a/d;->f:F

    sget v0, Lcom/apicloud/a/a/d;->b:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/apicloud/a/a/d;->g:I

    int-to-float v0, v1

    const v1, 0x443b8000    # 750.0f

    div-float/2addr v0, v1

    sput v0, Lcom/apicloud/a/a/d;->h:F

    return-void
.end method

.method public static a(F)F
    .locals 1

    sget v0, Lcom/apicloud/a/a/d;->b:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/apicloud/a/g/l;)F
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->d()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-static {v0}, Lcom/apicloud/a/a/d;->d(F)F

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-static {v0}, Lcom/apicloud/a/a/d;->c(F)F

    move-result p0

    return p0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    invoke-static {v0}, Lcom/apicloud/a/g/e/f;->b(F)F

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(F)F

    move-result p0

    return p0

    :cond_2
    invoke-static {v0}, Lcom/apicloud/a/a/d;->b(F)F

    move-result p0

    return p0
.end method

.method public static a(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Lcom/apicloud/a/a/d;->b:F

    div-float/2addr p0, v0

    const v0, 0x3efae148    # 0.49f

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static b(F)F
    .locals 1

    sget v0, Lcom/apicloud/a/a/d;->b:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/apicloud/a/g/l;)F
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/g/l;->d()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-static {v0}, Lcom/apicloud/a/a/d;->d(F)F

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/apicloud/a/a/d;->a(F)F

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    invoke-static {v0}, Lcom/apicloud/a/a/d;->c(F)F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    invoke-static {v0}, Lcom/apicloud/a/g/e/f;->b(F)F

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public static b(I)I
    .locals 1

    sget v0, Lcom/apicloud/a/a/d;->b:F

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private static c(F)F
    .locals 1

    sget v0, Lcom/apicloud/a/a/d;->e:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private static d(F)F
    .locals 1

    sget v0, Lcom/apicloud/a/a/d;->f:F

    mul-float/2addr v0, p0

    return v0
.end method
