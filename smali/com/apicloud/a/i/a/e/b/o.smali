.class final Lcom/apicloud/a/i/a/e/b/o;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/o;->a:[C

    return-void

    :array_0
    .array-data 2
        0x3fs
        0x44s
        0x44s
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

    sget-object v0, Lcom/apicloud/a/i/a/e/b/o;->a:[C

    const-string v1, "ellipse"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 9

    sget-object v0, Lcom/apicloud/a/i/a/e/b/o;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/o;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    const/4 v4, 0x5

    invoke-interface {p2, v4}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 v5, 0x6

    invoke-interface {p2, v5}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 v6, 0x7

    invoke-interface {p2, v6}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    const/16 v7, 0x8

    invoke-interface {p2, v7}, Lcom/apicloud/a/i/a/e/a/d;->d(I)Z

    move-result p2

    float-to-double v7, v4

    invoke-static {v7, v8}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v4

    float-to-double v7, v5

    invoke-static {v7, v8}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v5

    float-to-double v6, v6

    invoke-static {v6, v7}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result v6

    invoke-static {v5, v6, p2}, Lcom/apicloud/a/i/a/e/b/ad;->a(FFZ)F

    move-result p2

    sub-float/2addr v4, p2

    new-instance p2, Landroid/graphics/RectF;

    sub-float v6, v0, v2

    sub-float v7, v1, v3

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-direct {p2, v6, v7, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->b()Lcom/apicloud/a/i/a/e/b/aa;

    move-result-object p1

    invoke-interface {p1, p2, v5, v4}, Lcom/apicloud/a/i/a/e/b/aa;->arcTo(Landroid/graphics/RectF;FF)V

    return-void
.end method
