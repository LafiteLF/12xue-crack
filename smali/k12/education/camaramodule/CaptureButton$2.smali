.class Lk12/education/camaramodule/CaptureButton$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CaptureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/CaptureButton;->startCaptureAnimation(F)V
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

    .line 232
    iput-object p1, p0, Lk12/education/camaramodule/CaptureButton$2;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 235
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 237
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$2;->this$0:Lk12/education/camaramodule/CaptureButton;

    invoke-static {p1}, Lk12/education/camaramodule/CaptureButton;->access$200(Lk12/education/camaramodule/CaptureButton;)Lk12/education/camaramodule/listener/CaptureListener;

    move-result-object p1

    invoke-interface {p1}, Lk12/education/camaramodule/listener/CaptureListener;->takePictures()V

    .line 238
    iget-object p1, p0, Lk12/education/camaramodule/CaptureButton$2;->this$0:Lk12/education/camaramodule/CaptureButton;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lk12/education/camaramodule/CaptureButton;->access$302(Lk12/education/camaramodule/CaptureButton;I)I

    return-void
.end method
