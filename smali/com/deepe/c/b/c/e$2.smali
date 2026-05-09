.class Lcom/deepe/c/b/c/e$2;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/b/c/e;


# direct methods
.method constructor <init>(Lcom/deepe/c/b/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget-boolean p2, p2, Lcom/deepe/c/b/c/e;->l:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget p2, p2, Lcom/deepe/c/b/c/e;->i:I

    iget-object v0, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget v0, v0, Lcom/deepe/c/b/c/e;->h:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget p2, p2, Lcom/deepe/c/b/c/e;->i:I

    :goto_0
    iget-object v0, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget v0, v0, Lcom/deepe/c/b/c/e;->f:I

    iget-object v1, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget v1, v1, Lcom/deepe/c/b/c/e;->f:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget-object p2, p2, Lcom/deepe/c/b/c/e;->e:Lcom/deepe/c/b/c/a;

    invoke-virtual {p2}, Lcom/deepe/c/b/c/a;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/e;->b(I)V

    iget-object p2, p0, Lcom/deepe/c/b/c/e$2;->a:Lcom/deepe/c/b/c/e;

    iget-object p2, p2, Lcom/deepe/c/b/c/e;->j:Lcom/deepe/c/b/c/d;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/d;->a(F)V

    return-void
.end method
