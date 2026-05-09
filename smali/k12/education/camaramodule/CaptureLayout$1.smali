.class Lk12/education/camaramodule/CaptureLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/CaptureLayout;->startTypeBtnAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CaptureLayout;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/CaptureLayout;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lk12/education/camaramodule/CaptureLayout$1;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 131
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$1;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$000(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/TypeButton;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/TypeButton;->setClickable(Z)V

    .line 132
    iget-object p1, p0, Lk12/education/camaramodule/CaptureLayout$1;->this$0:Lk12/education/camaramodule/CaptureLayout;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureLayout;->access$100(Lk12/education/camaramodule/CaptureLayout;)Lk12/education/camaramodule/TypeButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lk12/education/camaramodule/TypeButton;->setClickable(Z)V

    return-void
.end method
