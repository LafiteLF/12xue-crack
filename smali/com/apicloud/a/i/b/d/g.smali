.class public Lcom/apicloud/a/i/b/d/g;
.super Lcom/apicloud/a/i/b/h/a;


# static fields
.field private static final a:[F

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/apicloud/a/i/b/d/g;->a:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/apicloud/a/i/b/d/g;->b:[F

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
        0x3f95c28f    # 1.17f
        0x3f800000    # 1.0f
        0x3f547ae1    # 0.83f
        0x3f2b851f    # 0.67f
    .end array-data

    :array_1
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3f547ae1    # 0.83f
        0x3f800000    # 1.0f
        0x3faa3d71    # 1.33f
        0x3fd5c28f    # 1.67f
        0x40151eb8    # 2.33f
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/b/h/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method protected static a(I)F
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/b/d/g;->a:[F

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p0, v0

    return p0
.end method

.method protected static b(I)F
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/i/b/d/g;->a(I)F

    move-result v0

    sget-object v1, Lcom/apicloud/a/i/b/d/g;->b:[F

    add-int/lit8 p0, p0, -0x1

    aget p0, v1, p0

    mul-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "h"

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/b/h/a;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ag/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ag/a;->setTypeface(Landroid/graphics/Typeface;)V

    return-object p1
.end method
