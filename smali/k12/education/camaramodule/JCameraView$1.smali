.class Lk12/education/camaramodule/JCameraView$1;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 175
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$1;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView$1;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {p1}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object p1

    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$1;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$000(Lk12/education/camaramodule/JCameraView;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView$1;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v1}, Lk12/education/camaramodule/JCameraView;->access$100(Lk12/education/camaramodule/JCameraView;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->swtich(Landroid/view/SurfaceHolder;F)V

    return-void
.end method
