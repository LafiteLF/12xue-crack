.class Lcom/apicloud/a/i/a/d/a/c$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/d/a/c;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/d/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/c;->c(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/c;->c(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "Camera2"

    const-string v0, "Failed to configure capture session."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "Camera2"

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v1, p1}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/c;->k()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/c;->l()V

    :try_start_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {p1}, Lcom/apicloud/a/i/a/d/a/c;->b(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/a/c;->c(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/c$2;->a:Lcom/apicloud/a/i/a/d/a/c;

    iget-object v2, v2, Lcom/apicloud/a/i/a/d/a/c;->a:Lcom/apicloud/a/i/a/d/a/c$a;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Failed to start camera preview."

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "Failed to start camera preview because it couldn\'t access camera"

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
