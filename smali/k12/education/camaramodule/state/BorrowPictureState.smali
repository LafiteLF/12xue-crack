.class public Lk12/education/camaramodule/state/BorrowPictureState;
.super Ljava/lang/Object;
.source "BorrowPictureState.java"

# interfaces
.implements Lk12/education/camaramodule/state/State;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private machine:Lk12/education/camaramodule/state/CameraMachine;


# direct methods
.method public constructor <init>(Lk12/education/camaramodule/state/CameraMachine;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BorrowPictureState"

    .line 19
    iput-object v0, p0, Lk12/education/camaramodule/state/BorrowPictureState;->TAG:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    return-void
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 68
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    .line 69
    iget-object p1, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {p1}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lk12/education/camaramodule/view/CameraView;->resetState(I)V

    .line 70
    iget-object p1, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {p1}, Lk12/education/camaramodule/state/CameraMachine;->getPreviewState()Lk12/education/camaramodule/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk12/education/camaramodule/state/CameraMachine;->setState(Lk12/education/camaramodule/state/State;)V

    return-void
.end method

.method public capture()V
    .locals 0

    return-void
.end method

.method public confirm()V
    .locals 2

    .line 75
    iget-object v0, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lk12/education/camaramodule/view/CameraView;->confirmState(I)V

    .line 76
    iget-object v0, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->getPreviewState()Lk12/education/camaramodule/state/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->setState(Lk12/education/camaramodule/state/State;)V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public foucs(FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V
    .locals 0

    return-void
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 0

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 28
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    .line 29
    iget-object p1, p0, Lk12/education/camaramodule/state/BorrowPictureState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {p1}, Lk12/education/camaramodule/state/CameraMachine;->getPreviewState()Lk12/education/camaramodule/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk12/education/camaramodule/state/CameraMachine;->setState(Lk12/education/camaramodule/state/State;)V

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 0

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 0

    return-void
.end method

.method public zoom(FI)V
    .locals 0

    const-string p1, "BorrowPictureState"

    const-string p2, "zoom"

    .line 81
    invoke-static {p1, p2}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
