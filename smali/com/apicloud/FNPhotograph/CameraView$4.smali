.class Lcom/apicloud/FNPhotograph/CameraView$4;
.super Ljava/lang/Object;
.source "CameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/CameraView;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/apicloud/FNPhotograph/CameraView$QUALITY;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/CameraView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isPng:Z

.field final synthetic val$orientation:I

.field final synthetic val$quality:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

.field final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/CameraView;ILandroid/graphics/Bitmap;Ljava/lang/String;ZLcom/apicloud/FNPhotograph/CameraView$QUALITY;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->this$0:Lcom/apicloud/FNPhotograph/CameraView;

    iput p2, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$orientation:I

    iput-object p3, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$savePath:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$isPng:Z

    iput-object p6, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$quality:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 457
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 458
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$orientation:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 459
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$savePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 462
    iget-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$isPng:Z

    if-eqz v2, :cond_0

    .line 463
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$quality:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    iget v3, v3, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->qualityValue:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_0

    .line 465
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v3, p0, Lcom/apicloud/FNPhotograph/CameraView$4;->val$quality:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    iget v3, v3, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->qualityValue:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 467
    :goto_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 469
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
