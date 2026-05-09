.class Lcom/apicloud/FNPhotograph/CameraActivity$15;
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

.field final synthetic val$imagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraActivity;Ljava/lang/String;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 651
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->val$imagePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 652
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->val$imagePath:Ljava/lang/String;

    const-string v2, "takePhoto"

    invoke-virtual {p1, v0, v2, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 658
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity$15;->this$0:Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->access$500(Lcom/apicloud/FNPhotograph/CameraActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
