.class Lcom/uzmap/pkg/b/b/g$c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/g$c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/g$c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/g$c;->a(Lcom/uzmap/pkg/b/b/g$c;)Lcom/uzmap/pkg/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/g;->b()V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/g$c;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/g$c;->a(Lcom/uzmap/pkg/b/b/g$c;)Lcom/uzmap/pkg/b/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/g;->dismiss()V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$5;->a:Lcom/uzmap/pkg/b/b/g$c;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/uzmap/pkg/b/b/g$c;->c:Z

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
