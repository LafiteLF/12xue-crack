.class Lcom/apicloud/FNPhotograph/CameraActivity$17;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraActivity;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$17;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 675
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$17;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 676
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$17;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->access$500(Lcom/apicloud/FNPhotograph/CameraActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
