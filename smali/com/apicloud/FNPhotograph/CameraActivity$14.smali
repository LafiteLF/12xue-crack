.class Lcom/apicloud/FNPhotograph/CameraActivity$14;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->switchCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

.field final synthetic val$footerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->val$footerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus()V
    .locals 0

    return-void
.end method

.method public onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-virtual {v0, p2, p1}, Lcom/apicloud/FNPhotograph/CameraActivity;->openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 533
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$14;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iget-object p1, p1, Lcom/apicloud/FNPhotograph/CameraActivity;->takePhotoBtn:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onImageSaved(Ljava/lang/String;)V
    .locals 2

    .line 505
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity$14$1;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity$14;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
