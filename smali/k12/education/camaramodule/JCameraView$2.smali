.class Lk12/education/camaramodule/JCameraView$2;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lk12/education/camaramodule/listener/CaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/JCameraView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/JCameraView;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/JCameraView;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recordEnd(J)V
    .locals 2

    .line 212
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lk12/education/camaramodule/state/CameraMachine;->stopRecord(ZJ)V

    return-void
.end method

.method public recordError()V
    .locals 1

    .line 223
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$600(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$600(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ErrorListener;

    move-result-object v0

    invoke-interface {v0}, Lk12/education/camaramodule/listener/ErrorListener;->AudioPermissionError()V

    :cond_0
    return-void
.end method

.method public recordShort(J)V
    .locals 4

    .line 199
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$500(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/CaptureLayout;

    move-result-object v0

    const-string v1, "\u5f55\u5236\u65f6\u95f4\u8fc7\u77ed"

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureLayout;->setTextWithAnimation(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$300(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$400(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    new-instance v1, Lk12/education/camaramodule/JCameraView$2$1;

    invoke-direct {v1, p0, p1, p2}, Lk12/education/camaramodule/JCameraView$2$1;-><init>(Lk12/education/camaramodule/JCameraView$2;J)V

    const-wide/16 v2, 0x5dc

    sub-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lk12/education/camaramodule/JCameraView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public recordStart()V
    .locals 3

    .line 192
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$300(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$400(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v1}, Lk12/education/camaramodule/JCameraView;->access$000(Lk12/education/camaramodule/JCameraView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v2}, Lk12/education/camaramodule/JCameraView;->access$100(Lk12/education/camaramodule/JCameraView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lk12/education/camaramodule/state/CameraMachine;->record(Landroid/view/Surface;F)V

    return-void
.end method

.method public recordZoom(F)V
    .locals 2

    const-string v0, "recordZoom"

    .line 217
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    const/16 v1, 0x90

    invoke-virtual {v0, p1, v1}, Lk12/education/camaramodule/state/CameraMachine;->zoom(FI)V

    return-void
.end method

.method public takePictures()V
    .locals 2

    .line 185
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$300(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$400(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->capture()V

    return-void
.end method
