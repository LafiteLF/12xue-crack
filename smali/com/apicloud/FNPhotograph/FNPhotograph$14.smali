.class Lcom/apicloud/FNPhotograph/FNPhotograph$14;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->switchCamera(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$footerView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V
    .locals 0

    .line 746
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->val$footerView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus()V
    .locals 2

    const-string v0, "FNPhotograph"

    const-string v1, "camera autofocus"

    .line 794
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 800
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onImageSaved(Ljava/lang/String;)V
    .locals 4

    const-string v0, "thumbnailImage"

    .line 752
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 753
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->val$footerView:Landroid/view/View;

    .line 754
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 755
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {v1, v0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    const-string v0, "xDebug"

    const-string v1, "save start .... "

    .line 769
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 772
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$300(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    sget-object v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "takePhoto"

    invoke-virtual {v1, v2, v3, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_1
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$400(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "save to album"

    .line 781
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 784
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 787
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$14;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
