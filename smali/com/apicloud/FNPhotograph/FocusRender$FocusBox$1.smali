.class Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;
.super Ljava/lang/Object;
.source "FocusRender.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->startFocusRender(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->access$102(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;I)I

    .line 236
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->access$200(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$1;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->access$200(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
