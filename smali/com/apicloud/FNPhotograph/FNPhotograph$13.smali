.class Lcom/apicloud/FNPhotograph/FNPhotograph$13;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

.field final synthetic val$currentFlashState:Landroid/widget/ImageView;

.field final synthetic val$settingLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    iput-object p3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$currentFlashState:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$settingLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 720
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    const-string v0, "auto"

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->setFlashMode(Ljava/lang/String;)V

    .line 721
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$currentFlashState:Landroid/widget/ImageView;

    const-string v0, "fnphotograph_flashmode_auto"

    .line 722
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    .line 721
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 723
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;->val$settingLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->animEnterOrQuit(Landroid/view/View;)V

    return-void
.end method
