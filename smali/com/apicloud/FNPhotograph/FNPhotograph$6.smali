.class Lcom/apicloud/FNPhotograph/FNPhotograph$6;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 504
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$500(Lcom/apicloud/FNPhotograph/FNPhotograph;)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getBackCameraId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 505
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getFrontCameraId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$502(Lcom/apicloud/FNPhotograph/FNPhotograph;I)I

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getBackCameraId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$502(Lcom/apicloud/FNPhotograph/FNPhotograph;I)I

    .line 509
    :goto_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$6;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$500(Lcom/apicloud/FNPhotograph/FNPhotograph;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->switchCamera(I)V

    return-void
.end method
