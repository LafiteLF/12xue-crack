.class Lcom/apicloud/FNPhotograph/CameraView$3;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraView;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraView;

.field final synthetic val$_savePath:Ljava/lang/String;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraView;[BLjava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$data:[B

    iput-object p3, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$_savePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$data:[B

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$data:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$302(Lcom/apicloud/FNPhotograph/CameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 288
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$300(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    invoke-static {v1, v2}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$302(Lcom/apicloud/FNPhotograph/CameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 290
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$300(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraView;->convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$302(Lcom/apicloud/FNPhotograph/CameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$300(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v2, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    invoke-static {v1, v2}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->access$302(Lcom/apicloud/FNPhotograph/CameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraView;->access$300(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$_savePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 295
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$_savePath:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->setPictureDegreeZero(Ljava/lang/String;I)V

    .line 297
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraView;->mPicTakenListener:Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v0, v0, Lcom/apicloud/FNPhotograph/CameraView;->mPicTakenListener:Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$3;->val$_savePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;->onPicTaken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
