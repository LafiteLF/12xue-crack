.class public Lk12/education/camaramodule/state/CameraMachine;
.super Ljava/lang/Object;
.source "CameraMachine.java"

# interfaces
.implements Lk12/education/camaramodule/state/State;


# instance fields
.field private borrowPictureState:Lk12/education/camaramodule/state/State;

.field private borrowVideoState:Lk12/education/camaramodule/state/State;

.field private context:Landroid/content/Context;

.field private previewState:Lk12/education/camaramodule/state/State;

.field private state:Lk12/education/camaramodule/state/State;

.field private view:Lk12/education/camaramodule/view/CameraView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk12/education/camaramodule/view/CameraView;Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->context:Landroid/content/Context;

    .line 33
    new-instance p1, Lk12/education/camaramodule/state/PreviewState;

    invoke-direct {p1, p0}, Lk12/education/camaramodule/state/PreviewState;-><init>(Lk12/education/camaramodule/state/CameraMachine;)V

    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->previewState:Lk12/education/camaramodule/state/State;

    .line 34
    new-instance p1, Lk12/education/camaramodule/state/BorrowPictureState;

    invoke-direct {p1, p0}, Lk12/education/camaramodule/state/BorrowPictureState;-><init>(Lk12/education/camaramodule/state/CameraMachine;)V

    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->borrowPictureState:Lk12/education/camaramodule/state/State;

    .line 35
    new-instance p1, Lk12/education/camaramodule/state/BorrowVideoState;

    invoke-direct {p1, p0}, Lk12/education/camaramodule/state/BorrowVideoState;-><init>(Lk12/education/camaramodule/state/CameraMachine;)V

    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->borrowVideoState:Lk12/education/camaramodule/state/State;

    .line 37
    iget-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->previewState:Lk12/education/camaramodule/state/State;

    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    .line 39
    iput-object p2, p0, Lk12/education/camaramodule/state/CameraMachine;->view:Lk12/education/camaramodule/view/CameraView;

    return-void
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 111
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/state/State;->cancle(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public capture()V
    .locals 1

    .line 96
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0}, Lk12/education/camaramodule/state/State;->capture()V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 116
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0}, Lk12/education/camaramodule/state/State;->confirm()V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1}, Lk12/education/camaramodule/state/State;->flash(Ljava/lang/String;)V

    return-void
.end method

.method public foucs(FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2, p3}, Lk12/education/camaramodule/state/State;->foucs(FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V

    return-void
.end method

.method getBorrowPictureState()Lk12/education/camaramodule/state/State;
    .locals 1

    .line 56
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->borrowPictureState:Lk12/education/camaramodule/state/State;

    return-object v0
.end method

.method getBorrowVideoState()Lk12/education/camaramodule/state/State;
    .locals 1

    .line 61
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->borrowVideoState:Lk12/education/camaramodule/state/State;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 47
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->context:Landroid/content/Context;

    return-object v0
.end method

.method getPreviewState()Lk12/education/camaramodule/state/State;
    .locals 1

    .line 66
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->previewState:Lk12/education/camaramodule/state/State;

    return-object v0
.end method

.method public getState()Lk12/education/camaramodule/state/State;
    .locals 1

    .line 131
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    return-object v0
.end method

.method public getView()Lk12/education/camaramodule/view/CameraView;
    .locals 1

    .line 43
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->view:Lk12/education/camaramodule/view/CameraView;

    return-object v0
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 1

    .line 101
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/state/State;->record(Landroid/view/Surface;F)V

    return-void
.end method

.method public restart()V
    .locals 1

    .line 91
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0}, Lk12/education/camaramodule/state/State;->restart()V

    return-void
.end method

.method public setState(Lk12/education/camaramodule/state/State;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 71
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/state/State;->start(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 76
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0}, Lk12/education/camaramodule/state/State;->stop()V

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 1

    .line 106
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2, p3}, Lk12/education/camaramodule/state/State;->stopRecord(ZJ)V

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 86
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/state/State;->swtich(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public zoom(FI)V
    .locals 1

    .line 122
    iget-object v0, p0, Lk12/education/camaramodule/state/CameraMachine;->state:Lk12/education/camaramodule/state/State;

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/state/State;->zoom(FI)V

    return-void
.end method
