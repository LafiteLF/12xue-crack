.class Lcom/apicloud/FNPhotograph/FNPhotograph$3;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus()V
    .locals 2

    const-string v0, "FNPhotograph"

    const-string v1, "camera autofocus"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 391
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p1, v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 396
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-static {p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public onImageSaved(Ljava/lang/String;)V
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xDebug"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$3$1;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
