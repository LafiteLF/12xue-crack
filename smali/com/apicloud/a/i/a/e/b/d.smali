.class Lcom/apicloud/a/i/a/e/b/d;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/d;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
        0x42s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/d;->a:[C

    const-string v1, "arc"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/apicloud/a/i/a/e/b/x;FFFFFZ)V
    .locals 2

    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p7

    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float p7, p7, v0

    if-nez p7, :cond_1

    const/4 p5, 0x0

    cmpl-float p5, p6, p5

    if-lez p5, :cond_0

    sget-object p5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    goto :goto_0

    :cond_0
    sget-object p5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    :goto_0
    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->b()Lcom/apicloud/a/i/a/e/b/aa;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/apicloud/a/i/a/e/b/aa;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_1
    new-instance p7, Landroid/graphics/RectF;

    sub-float v0, p2, p4

    sub-float v1, p3, p4

    add-float/2addr p2, p4

    add-float/2addr p3, p4

    invoke-direct {p7, v0, v1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->b()Lcom/apicloud/a/i/a/e/b/aa;

    move-result-object p1

    invoke-interface {p1, p7, p5, p6}, Lcom/apicloud/a/i/a/e/b/aa;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_1
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 9

    sget-object v0, Lcom/apicloud/a/i/a/e/b/d;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/d;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 v0, 0x4

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v1

    float-to-double v6, v0

    invoke-static {v6, v7}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v6

    float-to-double v0, v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v0

    const/4 v1, 0x6

    invoke-interface {p2, v1}, Lcom/apicloud/a/i/a/e/a/d;->d(I)Z

    move-result v8

    invoke-static {v6, v0, v8}, Lcom/apicloud/a/i/a/e/b/ad;->a(FFZ)F

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/apicloud/a/i/a/e/b/d;->a(Lcom/apicloud/a/i/a/e/b/x;FFFFFZ)V

    return-void
.end method
