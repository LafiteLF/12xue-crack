.class Lk12/education/camaramodule/JCameraView$6;
.super Ljava/lang/Thread;
.source "JCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/JCameraView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
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

    .line 304
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$6;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 307
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView$6;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CameraInterface;->doOpenCamera(Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;)V

    return-void
.end method
