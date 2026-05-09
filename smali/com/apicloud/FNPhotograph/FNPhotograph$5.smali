.class Lcom/apicloud/FNPhotograph/FNPhotograph$5;
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

    .line 488
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$5;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$5;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$5;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 492
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$5;->val$cameraView:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraPreview;->takePhoto()V

    return-void
.end method
