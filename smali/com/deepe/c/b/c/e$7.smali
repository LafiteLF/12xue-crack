.class Lcom/deepe/c/b/c/e$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/b/c/e;->d(F)V
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

    iput-object p1, p0, Lcom/deepe/c/b/c/e$7;->a:Lcom/deepe/c/b/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/c/b/c/e$7;->a:Lcom/deepe/c/b/c/e;

    iget-boolean p1, p1, Lcom/deepe/c/b/c/e;->d:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/c/e$7;->a:Lcom/deepe/c/b/c/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/deepe/c/b/c/e;->a(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
