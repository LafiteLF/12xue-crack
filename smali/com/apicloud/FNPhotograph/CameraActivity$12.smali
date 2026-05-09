.class Lcom/apicloud/FNPhotograph/CameraActivity$12;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

.field final synthetic val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

.field final synthetic val$currentFlashState:Landroid/widget/ImageView;

.field final synthetic val$settingLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    iput-object p3, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$currentFlashState:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$settingLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 474
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->setFlashMode(Ljava/lang/String;)V

    .line 475
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$currentFlashState:Landroid/widget/ImageView;

    const-string v0, "fnphotograph_flashmode_close"

    .line 476
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 477
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$12;->val$settingLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->animEnterOrQuit(Landroid/view/View;)V

    return-void
.end method
