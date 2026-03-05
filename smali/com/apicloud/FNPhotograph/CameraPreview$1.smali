.class Lcom/apicloud/FNPhotograph/CameraPreview$1;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraPreview;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

.field final synthetic val$_savePath:Ljava/lang/String;

.field final synthetic val$arg0:[B


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraPreview;[BLjava/lang/String;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$arg0:[B

    iput-object p3, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$_savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 621
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$arg0:[B

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$arg0:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$002(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 622
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$000(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    invoke-static {v1, v2}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$002(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 624
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$000(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$002(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$000(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    invoke-static {v1, v2}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$002(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$000(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget-object v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, "qualityValue"

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$_savePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 630
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$_savePath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->setPictureDegreeZero(Ljava/lang/String;I)V

    .line 632
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$100(Lcom/apicloud/FNPhotograph/CameraPreview;)Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->this$0:Lcom/apicloud/FNPhotograph/CameraPreview;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->access$100(Lcom/apicloud/FNPhotograph/CameraPreview;)Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview$1;->val$_savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;->onImageSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 636
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
