.class Lcom/apicloud/FNPhotograph/CameraView$1$1;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraView$1;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/FNPhotograph/CameraView$1;

.field final synthetic val$event:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraView$1;Landroid/view/MotionEvent;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->this$1:Lcom/apicloud/FNPhotograph/CameraView$1;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->this$1:Lcom/apicloud/FNPhotograph/CameraView$1;

    iget-boolean v0, v0, Lcom/apicloud/FNPhotograph/CameraView$1;->isDoubleClick:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->this$1:Lcom/apicloud/FNPhotograph/CameraView$1;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraView$1;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraView;->access$000(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraView$1$1;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/apicloud/FNPhotograph/OnCustomClickListener;->onClick(II)V

    const-string v0, "LYH"

    const-string v1, "== click =="

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
