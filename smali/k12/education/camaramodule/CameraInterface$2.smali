.class Lk12/education/camaramodule/CameraInterface$2;
.super Ljava/lang/Object;
.source "CameraInterface.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk12/education/camaramodule/CameraInterface;->takePicture(Lk12/education/camaramodule/CameraInterface$TakePictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lk12/education/camaramodule/CameraInterface;

.field final synthetic val$callback:Lk12/education/camaramodule/CameraInterface$TakePictureCallback;


# direct methods
.method constructor <init>(Lk12/education/camaramodule/CameraInterface;Lk12/education/camaramodule/CameraInterface$TakePictureCallback;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    iput-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->val$callback:Lk12/education/camaramodule/CameraInterface$TakePictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 8

    .line 472
    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 473
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 474
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p1}, Lk12/education/camaramodule/CameraInterface;->access$200(Lk12/education/camaramodule/CameraInterface;)I

    move-result p1

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p2}, Lk12/education/camaramodule/CameraInterface;->access$300(Lk12/education/camaramodule/CameraInterface;)I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 475
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p1}, Lk12/education/camaramodule/CameraInterface;->access$400(Lk12/education/camaramodule/CameraInterface;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p1}, Lk12/education/camaramodule/CameraInterface;->access$200(Lk12/education/camaramodule/CameraInterface;)I

    move-result p1

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p2}, Lk12/education/camaramodule/CameraInterface;->access$500(Lk12/education/camaramodule/CameraInterface;)I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 477
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p1}, Lk12/education/camaramodule/CameraInterface;->access$400(Lk12/education/camaramodule/CameraInterface;)I

    move-result p1

    rsub-int p1, p1, 0x168

    int-to-float p1, p1

    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    .line 478
    invoke-virtual {v6, p1, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 481
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 482
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->val$callback:Lk12/education/camaramodule/CameraInterface$TakePictureCallback;

    if-eqz p2, :cond_4

    .line 483
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p2}, Lk12/education/camaramodule/CameraInterface;->access$400(Lk12/education/camaramodule/CameraInterface;)I

    move-result p2

    const/16 v1, 0x5a

    if-eq p2, v1, :cond_3

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->this$0:Lk12/education/camaramodule/CameraInterface;

    invoke-static {p2}, Lk12/education/camaramodule/CameraInterface;->access$400(Lk12/education/camaramodule/CameraInterface;)I

    move-result p2

    const/16 v1, 0x10e

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 486
    :cond_2
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->val$callback:Lk12/education/camaramodule/CameraInterface$TakePictureCallback;

    invoke-interface {p2, p1, v0}, Lk12/education/camaramodule/CameraInterface$TakePictureCallback;->captureResult(Landroid/graphics/Bitmap;Z)V

    goto :goto_2

    .line 484
    :cond_3
    :goto_1
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface$2;->val$callback:Lk12/education/camaramodule/CameraInterface$TakePictureCallback;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lk12/education/camaramodule/CameraInterface$TakePictureCallback;->captureResult(Landroid/graphics/Bitmap;Z)V

    :cond_4
    :goto_2
    return-void
.end method
