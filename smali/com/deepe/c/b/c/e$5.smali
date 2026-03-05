.class Lcom/deepe/c/b/c/e$5;
.super Landroid/view/animation/Animation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/b/c/e;->a(Landroid/view/animation/Animation$AnimationListener;)V
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

    iput-object p1, p0, Lcom/deepe/c/b/c/e$5;->a:Lcom/deepe/c/b/c/e;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Lcom/deepe/c/b/c/e$5;->a:Lcom/deepe/c/b/c/e;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/deepe/c/b/c/e;->a(F)V

    return-void
.end method
