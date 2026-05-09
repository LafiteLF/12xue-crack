.class final Lcom/apicloud/a/i/a/e/b/bf;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/bf;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bf;->a:[C

    const-string v1, "strokeRect"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bf;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/bf;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->m()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

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

    move-result p2

    add-float/2addr v2, v0

    add-float/2addr p2, v1

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/apicloud/a/i/a/e/b/x;->a(FFFF)V

    return-void
.end method
