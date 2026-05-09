.class Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;
.super Ljava/lang/Object;
.source "FocusRender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;->this$1:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;->this$1:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->isClear:Z

    .line 252
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;->this$1:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;->access$200(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
