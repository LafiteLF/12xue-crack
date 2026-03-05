.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->addFlash(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

.field private final synthetic val$flash_state:Landroid/widget/TextView;

.field private final synthetic val$ivFlash:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$ivFlash:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$flash_state:Landroid/widget/TextView;

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$3(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 518
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Z)V

    .line 519
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$ivFlash:Landroid/widget/ImageView;

    const-string v0, "mo_flash_on"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$flash_state:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openLight()V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Z)V

    .line 524
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$ivFlash:Landroid/widget/ImageView;

    const-string v0, "mo_flash_off"

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->val$flash_state:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->offLight()V

    :goto_0
    return-void
.end method
