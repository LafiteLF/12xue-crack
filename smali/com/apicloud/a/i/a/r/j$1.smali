.class Lcom/apicloud/a/i/a/r/j$1;
.super Lcom/apicloud/c/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/r/j;->a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/j;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/r/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/j$1;->a:Lcom/apicloud/a/i/a/r/j;

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/DisplayMetrics;)F
    .locals 2

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/g;->a(Landroid/util/DisplayMetrics;)F

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/j$1;->a:Lcom/apicloud/a/i/a/r/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/r/j;->a(Lcom/apicloud/a/i/a/r/j;)Lcom/apicloud/a/i/a/r/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/r/n;->p()I

    move-result v0

    div-int/lit16 v0, v0, 0x2710

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/r/j$1;->g:I

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/apicloud/a/i/a/r/j$1;->i:I

    return p1
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/j$1;->a:Lcom/apicloud/a/i/a/r/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/j;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public b(I)I
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/r/j$1;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/apicloud/a/i/a/r/j$1;->h:I

    invoke-super {p0, p1}, Lcom/apicloud/c/a/a/g;->b(I)I

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/a/r/j$1;->g:I

    iget v2, p0, Lcom/apicloud/a/i/a/r/j$1;->h:I

    sub-int v2, v0, v2

    if-le v0, v1, :cond_0

    if-lt v2, v1, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/r/j$1;->i:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    return p1
.end method
