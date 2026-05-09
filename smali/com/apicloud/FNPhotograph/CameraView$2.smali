.class Lcom/apicloud/FNPhotograph/CameraView$2;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraView;->init(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraView;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$2;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$2;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$200(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/hardware/Camera;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$2;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/CameraView;->access$200(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$2;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method
