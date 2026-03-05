.class Lcom/apicloud/a/i/a/d/a/r$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/d/a/r;->a(Lcom/apicloud/a/i/a/d/a/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/r;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/r;->c(Lcom/apicloud/a/i/a/d/a/r;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/r;->c(Lcom/apicloud/a/i/a/d/a/r;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/d/a/r;->a(Lcom/apicloud/a/i/a/d/a/r;Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/d/a/r;->a(Lcom/apicloud/a/i/a/d/a/r;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/a/r;->a(Lcom/apicloud/a/i/a/d/a/r;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/a/r;->b(Lcom/apicloud/a/i/a/d/a/r;)Landroid/media/MediaRecorder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/r$1;->a:Lcom/apicloud/a/i/a/d/a/r;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/d/a/r;->a(Z)V

    return-void
.end method
