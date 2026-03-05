.class Lk12/education/camaramodule/JCameraView$3;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lk12/education/camaramodule/listener/TypeListener;


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

    .line 229
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$3;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 232
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$3;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView$3;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v1}, Lk12/education/camaramodule/JCameraView;->access$000(Lk12/education/camaramodule/JCameraView;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lk12/education/camaramodule/JCameraView$3;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v2}, Lk12/education/camaramodule/JCameraView;->access$100(Lk12/education/camaramodule/JCameraView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lk12/education/camaramodule/state/CameraMachine;->cancle(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public confirm()V
    .locals 1

    .line 237
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$3;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    invoke-virtual {v0}, Lk12/education/camaramodule/state/CameraMachine;->confirm()V

    return-void
.end method
