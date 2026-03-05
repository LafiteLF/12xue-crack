.class Lcom/apicloud/a/i/a/d/a/c$3;
.super Lcom/apicloud/a/i/a/d/a/c$a;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/d/a/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/c;->b(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/c$3;->a(I)V

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/c;->c(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v1}, Lcom/apicloud/a/i/a/d/a/c;->b(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/c;->b(Lcom/apicloud/a/i/a/d/a/c;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Camera2"

    const-string v2, "Failed to run precapture sequence."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$3;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/d/a/c;->n()V

    return-void
.end method
