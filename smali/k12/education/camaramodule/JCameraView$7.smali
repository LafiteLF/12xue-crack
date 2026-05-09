.class Lk12/education/camaramodule/JCameraView$7;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Lk12/education/camaramodule/CameraInterface$FocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/JCameraView;->setFocusViewWidthAnimation(FF)V
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

    .line 370
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$7;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusSuccess()V
    .locals 2

    .line 373
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$7;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$900(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/FoucsView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/FoucsView;->setVisibility(I)V

    return-void
.end method
