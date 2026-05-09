.class Lcom/apicloud/FNPhotograph/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

.field final synthetic val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$5;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$5;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$5;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object p1, p1, Lcom/apicloud/FNPhotograph/CameraActivity;->takePhotoBtn:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 272
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$5;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraPreview;->takePhoto()V

    return-void
.end method
