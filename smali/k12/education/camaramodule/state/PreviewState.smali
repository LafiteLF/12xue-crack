.class Lk12/education/camaramodule/state/PreviewState;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lk12/education/camaramodule/state/State;


# static fields
.field public static final TAG:Ljava/lang/String; = "PreviewState"


# instance fields
.field private machine:Lk12/education/camaramodule/state/CameraMachine;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/state/CameraMachine;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lk12/education/camaramodule/state/PreviewState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    return-void
.end method

.method static synthetic access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;
    .locals 0

    .line 19
    iget-object p0, p0, Lk12/education/camaramodule/state/PreviewState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    return-object p0
.end method


# virtual methods
.method public cancle(Landroid/view/SurfaceHolder;F)V
    .locals 0

    const-string p1, "\u6d4f\u89c8\u72b6\u6001\u4e0b,\u6ca1\u6709 cancle \u4e8b\u4ef6"

    .line 91
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public capture()V
    .locals 2

    .line 59
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    new-instance v1, Lk12/education/camaramodule/state/PreviewState$1;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/state/PreviewState$1;-><init>(Lk12/education/camaramodule/state/PreviewState;)V

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CameraInterface;->takePicture(Lk12/education/camaramodule/CameraInterface$TakePictureCallback;)V

    return-void
.end method

.method public confirm()V
    .locals 1

    const-string v0, "\u6d4f\u89c8\u72b6\u6001\u4e0b,\u6ca1\u6709 confirm \u4e8b\u4ef6"

    .line 96
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method public flash(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CameraInterface;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public foucs(FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V
    .locals 2

    const-string v0, "preview state foucs"

    .line 41
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lk12/education/camaramodule/state/PreviewState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/view/CameraView;->handlerFoucs(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/state/PreviewState;->machine:Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {v1}, Lk12/education/camaramodule/state/CameraMachine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lk12/education/camaramodule/CameraInterface;->handleFocus(Landroid/content/Context;FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V

    :cond_0
    return-void
.end method

.method public record(Landroid/view/Surface;F)V
    .locals 2

    .line 71
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lk12/education/camaramodule/CameraInterface;->startRecord(Landroid/view/Surface;FLk12/education/camaramodule/CameraInterface$ErrorCallback;)V

    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public start(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 30
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 35
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0}, Lk12/education/camaramodule/CameraInterface;->doStopPreview()V

    return-void
.end method

.method public stopRecord(ZJ)V
    .locals 0

    .line 76
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object p2

    new-instance p3, Lk12/education/camaramodule/state/PreviewState$2;

    invoke-direct {p3, p0, p1}, Lk12/education/camaramodule/state/PreviewState$2;-><init>(Lk12/education/camaramodule/state/PreviewState;Z)V

    invoke-virtual {p2, p1, p3}, Lk12/education/camaramodule/CameraInterface;->stopRecord(ZLk12/education/camaramodule/CameraInterface$StopRecordCallback;)V

    return-void
.end method

.method public swtich(Landroid/view/SurfaceHolder;F)V
    .locals 1

    .line 49
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->switchCamera(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public zoom(FI)V
    .locals 2

    const-string v0, "PreviewState"

    const-string v1, "zoom"

    .line 101
    invoke-static {v0, v1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->setZoom(FI)V

    return-void
.end method
