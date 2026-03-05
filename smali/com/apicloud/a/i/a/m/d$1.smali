.class Lcom/apicloud/a/i/a/m/d$1;
.super Lcom/apicloud/c/a/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/m/d;->a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/m/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/m/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/d$1;->a:Lcom/apicloud/a/i/a/m/d;

    invoke-direct {p0, p2}, Lcom/apicloud/c/a/a/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x41f00000    # 30.0f

    div-float/2addr v0, p1

    return v0
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/d$1;->a:Lcom/apicloud/a/i/a/m/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/d;->d(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
