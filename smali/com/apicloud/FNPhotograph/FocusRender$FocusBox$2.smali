.class Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;
.super Lcom/apicloud/FNPhotograph/OnAnimationListener;
.source "FocusRender.java"


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

.field final synthetic val$autoHide:I


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;I)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->this$0:Lcom/apicloud/FNPhotograph/FocusRender$FocusBox;

    iput p2, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->val$autoHide:I

    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/OnAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 244
    iget p1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->val$autoHide:I

    if-gez p1, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;

    invoke-direct {v0, p0}, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2$1;-><init>(Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;)V

    iget v1, p0, Lcom/apicloud/FNPhotograph/FocusRender$FocusBox$2;->val$autoHide:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
