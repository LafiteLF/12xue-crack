.class Lcom/deepe/c/b/c/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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

    iput-object p1, p0, Lcom/deepe/c/b/c/d$3;->a:Lcom/deepe/c/b/c/d;

    iput-object p2, p0, Lcom/deepe/c/b/c/d$3;->b:Lcom/deepe/c/b/c/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/b/c/d$3;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/d$a;->l()V

    iget-object v0, p0, Lcom/deepe/c/b/c/d$3;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/d$a;->b()V

    iget-object v0, p0, Lcom/deepe/c/b/c/d$3;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {v0}, Lcom/deepe/c/b/c/d$a;->i()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/c/d$a;->b(F)V

    iget-object v0, p0, Lcom/deepe/c/b/c/d$3;->a:Lcom/deepe/c/b/c/d;

    iget-boolean v0, v0, Lcom/deepe/c/b/c/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/c/d$3;->a:Lcom/deepe/c/b/c/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/deepe/c/b/c/d;->c:Z

    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object p1, p0, Lcom/deepe/c/b/c/d$3;->b:Lcom/deepe/c/b/c/d$a;

    invoke-virtual {p1, v1}, Lcom/deepe/c/b/c/d$a;->a(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/c/d$3;->a:Lcom/deepe/c/b/c/d;

    iget v0, p1, Lcom/deepe/c/b/c/d;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    iput v0, p1, Lcom/deepe/c/b/c/d;->b:F

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/c/b/c/d$3;->a:Lcom/deepe/c/b/c/d;

    const/4 v0, 0x0

    iput v0, p1, Lcom/deepe/c/b/c/d;->b:F

    return-void
.end method
