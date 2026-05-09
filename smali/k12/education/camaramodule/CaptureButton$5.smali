.class Lk12/education/camaramodule/CaptureButton$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/CaptureButton;->startRecordAnimation(FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CaptureButton;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/CaptureButton;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 272
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureButton;->access$300(Lk12/education/camaramodule/CaptureButton;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 273
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureButton;->access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureButton;->access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object p1

    invoke-interface {p1}, Lk12/education/camaramodule/listener/CaptureListener;->recordStart()V

    .line 275
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lk12/education/camaramodule/CaptureButton;->access$302(Lk12/education/camaramodule/CaptureButton;I)I

    .line 276
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$5;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureButton;->access$500(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureButton$RecordCountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method
