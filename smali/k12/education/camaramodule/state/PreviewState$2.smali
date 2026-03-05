.class Lk12/education/camaramodule/state/PreviewState$2;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lk12/education/camaramodule/CameraInterface$StopRecordCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/state/PreviewState;->stopRecord(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/state/PreviewState;

.field final synthetic val$isShort:Z


# direct methods
.method constructor <init>(Lk12/education/camaramodule/state/PreviewState;Z)V
    .locals 0

    .line 76
    iput-object p1, p0, Lk12/education/camaramodule/state/PreviewState$2;->this$0:Lk12/education/camaramodule/state/PreviewState;

    iput-boolean p2, p0, Lk12/education/camaramodule/state/PreviewState$2;->val$isShort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 79
    iget-boolean v0, p0, Lk12/education/camaramodule/state/PreviewState$2;->val$isShort:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lk12/education/camaramodule/state/PreviewState$2;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {p1}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p1

    invoke-virtual {p1}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object p1

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lk12/education/camaramodule/view/CameraView;->resetState(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/state/PreviewState$2;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {v0}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lk12/education/camaramodule/view/CameraView;->playVideo(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lk12/education/camaramodule/state/PreviewState$2;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {p1}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p1

    iget-object p2, p0, Lk12/education/camaramodule/state/PreviewState$2;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {p2}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p2

    invoke-virtual {p2}, Lk12/education/camaramodule/state/CameraMachine;->getBorrowVideoState()Lk12/education/camaramodule/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk12/education/camaramodule/state/CameraMachine;->setState(Lk12/education/camaramodule/state/State;)V

    :goto_0
    return-void
.end method
