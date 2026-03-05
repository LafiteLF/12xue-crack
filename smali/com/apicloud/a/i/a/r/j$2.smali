.class Lcom/apicloud/a/i/a/r/j$2;
.super Lcom/apicloud/c/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/r/j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/r/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/r/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/r/j$2;->a:Lcom/apicloud/a/i/a/r/j;

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/j$2;->a:Lcom/apicloud/a/i/a/r/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/r/j;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
