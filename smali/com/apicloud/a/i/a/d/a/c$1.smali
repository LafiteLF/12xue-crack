.class Lcom/apicloud/a/i/a/d/a/c$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    iget-object p1, p1, Lcom/apicloud/a/i/a/d/a/c;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/d/a/f$a;->b()V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/d/a/c;->a(Lcom/apicloud/a/i/a/d/a/c;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    iget-object p1, p1, Lcom/apicloud/a/i/a/d/a/c;->b:Lcom/apicloud/a/i/a/d/a/f$a;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/d/a/f$a;->a()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/c$1;->a:Lcom/apicloud/a/i/a/d/a/c;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/a/c;->c()V

    return-void
.end method
