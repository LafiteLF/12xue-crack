.class Lcom/apicloud/FNPhotograph/CameraActivity$14$1;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity$14;->onImageSaved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

.field final synthetic val$retPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity$14;Ljava/lang/String;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->val$retPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "thumbnailImage"

    .line 508
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 509
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/CameraActivity$14;->val$footerView:Landroid/view/View;

    .line 510
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 511
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iget-object v1, v1, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->val$retPath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/apicloud/FNPhotograph/CameraActivity;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraActivity;->takePhotoBtn:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->access$200(Lcom/apicloud/FNPhotograph/CameraActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->val$retPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 517
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;->this$1:Lcom/apicloud/FNPhotograph/CameraActivity$14;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
