.class Lcom/deepe/c/b/c/d$2;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/b/c/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/c/d;

.field private final synthetic b:Lcom/deepe/c/b/c/d$a;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/c/d;Lcom/deepe/c/b/c/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iput-object p2, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iget-boolean p2, p2, Lcom/deepe/c/b/c/d;->c:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iget-object v0, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {p2, p1, v0}, Lcom/deepe/c/b/c/d;->b(FLcom/deepe/c/b/c/d$a;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iget-object v0, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/d;->a(Lcom/deepe/c/b/c/d$a;)F

    move-result p2

    iget-object v0, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/d$a;->g()F

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v1}, Lcom/deepe/c/b/c/d$a;->f()F

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v2}, Lcom/deepe/c/b/c/d$a;->k()F

    move-result v2

    iget-object v3, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iget-object v4, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v3, p1, v4}, Lcom/deepe/c/b/c/d;->a(FLcom/deepe/c/b/c/d$a;)V

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    const v5, 0x3f4ccccd    # 0.8f

    if-gtz v4, :cond_1

    div-float v4, p1, v3

    sub-float v6, v5, p2

    sget-object v7, Lcom/deepe/c/b/c/d;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    iget-object v4, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v4, v1}, Lcom/deepe/c/b/c/d$a;->b(F)V

    :cond_1
    cmpl-float v1, p1, v3

    if-lez v1, :cond_2

    sub-float/2addr v5, p2

    sub-float p2, p1, v3

    div-float/2addr p2, v3

    sget-object v1, Lcom/deepe/c/b/c/d;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float/2addr v5, p2

    add-float/2addr v0, v5

    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/d$a;->c(F)V

    :cond_2
    const/high16 p2, 0x3e800000    # 0.25f

    mul-float/2addr p2, p1

    add-float/2addr v2, p2

    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {p2, v2}, Lcom/deepe/c/b/c/d$a;->d(F)V

    const/high16 p2, 0x43580000    # 216.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x44870000    # 1080.0f

    iget-object v0, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    iget v0, v0, Lcom/deepe/c/b/c/d;->b:F

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p1, v0

    iget-object p2, p0, Lcom/deepe/c/b/c/d$2;->a:Lcom/deepe/c/b/c/d;

    invoke-virtual {p2, p1}, Lcom/deepe/c/b/c/d;->c(F)V

    :goto_0
    return-void
.end method
