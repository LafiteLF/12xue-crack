.class Lk12/education/camaramodule/state/PreviewState$1;
.super Ljava/lang/Object;
.source "PreviewState.java"

# interfaces
.implements Lk12/education/camaramodule/CameraInterface$TakePictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/state/PreviewState;->capture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/state/PreviewState;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/state/PreviewState;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lk12/education/camaramodule/state/PreviewState$1;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public captureResult(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lk12/education/camaramodule/state/PreviewState$1;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {v0}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->getView()Lk12/education/camaramodule/view/CameraView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lk12/education/camaramodule/view/CameraView;->showPicture(Landroid/graphics/Bitmap;Z)V

    .line 63
    iget-object p1, p0, Lk12/education/camaramodule/state/PreviewState$1;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {p1}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p1

    iget-object p2, p0, Lk12/education/camaramodule/state/PreviewState$1;->this$0:Lk12/education/camaramodule/state/PreviewState;

    invoke-static {p2}, Lk12/education/camaramodule/state/PreviewState;->access$000(Lk12/education/camaramodule/state/PreviewState;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p2

    invoke-virtual {p2}, Lk12/education/camaramodule/state/CameraMachine;->getBorrowPictureState()Lk12/education/camaramodule/state/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk12/education/camaramodule/state/CameraMachine;->setState(Lk12/education/camaramodule/state/State;)V

    const-string p1, "capture"

    .line 64
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method
