.class Lcom/deepe/c/b/c/e$8;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/b/c/e;->c(ILandroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/deepe/c/b/c/e$8;->a:Lcom/deepe/c/b/c/e;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lcom/deepe/c/b/c/e$8;->a:Lcom/deepe/c/b/c/e;

    iget p2, p2, Lcom/deepe/c/b/c/e;->g:F

    iget-object v0, p0, Lcom/deepe/c/b/c/e$8;->a:Lcom/deepe/c/b/c/e;

    iget v0, v0, Lcom/deepe/c/b/c/e;->g:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/deepe/c/b/c/e$8;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {v0, p2}, Lcom/deepe/c/b/c/e;->a(F)V

    iget-object p2, p0, Lcom/deepe/c/b/c/e$8;->a:Lcom/deepe/c/b/c/e;

    invoke-virtual {p2, p1}, Lcom/deepe/c/b/c/e;->b(F)V

    return-void
.end method
