.class Lk12/education/camaramodule/JCameraView$2$1;
.super Ljava/lang/Object;
.source "JCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/JCameraView$2;->recordShort(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lk12/education/camaramodule/JCameraView$2;

.field final synthetic val$time:J


# direct methods
.method constructor <init>(Lk12/education/camaramodule/JCameraView$2;J)V
    .locals 0

    .line 202
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView$2$1;->this$1:Lk12/education/camaramodule/JCameraView$2;

    iput-wide p2, p0, Lk12/education/camaramodule/JCameraView$2$1;->val$time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 205
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView$2$1;->this$1:Lk12/education/camaramodule/JCameraView$2;

    iget-object v0, v0, Lk12/education/camaramodule/JCameraView$2;->this$0:Lk12/education/camaramodule/JCameraView;

    invoke-static {v0}, Lk12/education/camaramodule/JCameraView;->access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;

    move-result-object v0

    iget-wide v1, p0, Lk12/education/camaramodule/JCameraView$2$1;->val$time:J

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lk12/education/camaramodule/state/CameraMachine;->stopRecord(ZJ)V

    return-void
.end method
