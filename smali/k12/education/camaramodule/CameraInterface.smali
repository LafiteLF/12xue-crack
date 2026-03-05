.class public Lk12/education/camaramodule/CameraInterface;
.super Ljava/lang/Object;
.source "CameraInterface.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk12/education/camaramodule/CameraInterface$FocusCallback;,
        Lk12/education/camaramodule/CameraInterface$TakePictureCallback;,
        Lk12/education/camaramodule/CameraInterface$ErrorCallback;,
        Lk12/education/camaramodule/CameraInterface$StopRecordCallback;,
        Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CJT"

.field public static final TYPE_CAPTURE:I = 0x91

.field public static final TYPE_RECORDER:I = 0x90

.field private static volatile mCameraInterface:Lk12/education/camaramodule/CameraInterface;


# instance fields
.field private CAMERA_FRONT_POSITION:I

.field private CAMERA_POST_POSITION:I

.field private SELECTED_CAMERA:I

.field private angle:I

.field private cameraAngle:I

.field private errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

.field private firstFrame_data:[B

.field handlerTime:I

.field private isPreviewing:Z

.field private isRecorder:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mFlashLamp:Landroid/widget/ImageView;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mParams:Landroid/hardware/Camera$Parameters;

.field private mSwitchView:Landroid/widget/ImageView;

.field private mediaQuality:I

.field private mediaRecorder:Landroid/media/MediaRecorder;

.field private nowAngle:I

.field private nowScaleRate:I

.field private preview_height:I

.field private preview_width:I

.field private recordScleRate:I

.field private rotation:I

.field private saveVideoPath:Ljava/lang/String;

.field private screenProp:F

.field private sensorEventListener:Landroid/hardware/SensorEventListener;

.field private sm:Landroid/hardware/SensorManager;

.field private videoFileAbsPath:Ljava/lang/String;

.field private videoFileName:Ljava/lang/String;

.field private videoFirstFrame:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    .line 69
    iput v1, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    .line 70
    iput v1, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    const/high16 v2, -0x40800000    # -1.0f

    .line 73
    iput v2, p0, Lk12/education/camaramodule/CameraInterface;->screenProp:F

    .line 75
    iput-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    .line 80
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 90
    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    const/16 v2, 0x5a

    .line 91
    iput v2, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    .line 92
    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->rotation:I

    .line 97
    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    .line 98
    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->recordScleRate:I

    const v2, 0x186a00

    .line 101
    iput v2, p0, Lk12/education/camaramodule/CameraInterface;->mediaQuality:I

    .line 102
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 123
    new-instance v1, Lk12/education/camaramodule/CameraInterface$1;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/CameraInterface$1;-><init>(Lk12/education/camaramodule/CameraInterface;)V

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 674
    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->handlerTime:I

    .line 283
    invoke-direct {p0}, Lk12/education/camaramodule/CameraInterface;->findAvailableCameras()V

    .line 284
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    const-string v0, ""

    .line 285
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lk12/education/camaramodule/CameraInterface;I)I
    .locals 0

    .line 52
    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    return p1
.end method

.method static synthetic access$100(Lk12/education/camaramodule/CameraInterface;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lk12/education/camaramodule/CameraInterface;->rotationAnimation()V

    return-void
.end method

.method static synthetic access$200(Lk12/education/camaramodule/CameraInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    return p0
.end method

.method static synthetic access$300(Lk12/education/camaramodule/CameraInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    return p0
.end method

.method static synthetic access$400(Lk12/education/camaramodule/CameraInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lk12/education/camaramodule/CameraInterface;->nowAngle:I

    return p0
.end method

.method static synthetic access$500(Lk12/education/camaramodule/CameraInterface;)I
    .locals 0

    .line 52
    iget p0, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    return p0
.end method

.method private static calculateTapArea(FFFLandroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    const/high16 v0, 0x43960000    # 300.0f

    mul-float/2addr p2, v0

    .line 719
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    move-result p2

    .line 720
    invoke-static {p3}, Lk12/education/camaramodule/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x44fa0000    # 2000.0f

    mul-float/2addr p0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float/2addr p0, v1

    float-to-int p0, p0

    .line 721
    invoke-static {p3}, Lk12/education/camaramodule/util/ScreenUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p1, p3

    mul-float/2addr p1, v0

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 722
    div-int/lit8 p3, p2, 0x2

    sub-int/2addr p0, p3

    const/16 v0, 0x3e8

    const/16 v1, -0x3e8

    invoke-static {p0, v1, v0}, Lk12/education/camaramodule/CameraInterface;->clamp(III)I

    move-result p0

    sub-int/2addr p1, p3

    .line 723
    invoke-static {p1, v1, v0}, Lk12/education/camaramodule/CameraInterface;->clamp(III)I

    move-result p1

    .line 724
    new-instance p3, Landroid/graphics/RectF;

    int-to-float v0, p0

    int-to-float v1, p1

    add-int/2addr p0, p2

    int-to-float p0, p0

    add-int/2addr p1, p2

    int-to-float p1, p1

    invoke-direct {p3, v0, v1, p0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 725
    new-instance p0, Landroid/graphics/Rect;

    iget p1, p3, Landroid/graphics/RectF;->left:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget v0, p3, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method public static destroyCameraInterface()V
    .locals 1

    .line 59
    sget-object v0, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    sput-object v0, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;

    :cond_0
    return-void
.end method

.method private findAvailableCameras()V
    .locals 5

    .line 659
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 660
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 662
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 663
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    goto :goto_1

    .line 668
    :cond_1
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lk12/education/camaramodule/CameraInterface;
    .locals 2

    const-class v0, Lk12/education/camaramodule/CameraInterface;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;

    if-nez v1, :cond_1

    .line 107
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 108
    :try_start_1
    sget-object v1, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lk12/education/camaramodule/CameraInterface;

    invoke-direct {v1}, Lk12/education/camaramodule/CameraInterface;-><init>()V

    sput-object v1, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;

    .line 110
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v1, Lk12/education/camaramodule/CameraInterface;->mCameraInterface:Lk12/education/camaramodule/CameraInterface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized openCamera(I)V
    .locals 1

    monitor-enter p0

    .line 313
    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 315
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    if-eqz p1, :cond_0

    .line 317
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    invoke-interface {p1}, Lk12/education/camaramodule/listener/ErrorListener;->onError()V

    .line 321
    :cond_0
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 323
    :try_start_2
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    .line 325
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "CJT"

    const-string v0, "enable shutter sound faild"

    .line 326
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private rotationAnimation()V
    .locals 9

    .line 139
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mSwitchView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->rotation:I

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    if-eq v0, v1, :cond_d

    const/16 v2, -0x5a

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    const/4 v6, 0x0

    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_1

    move v2, v6

    move v4, v2

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_4

    :cond_2
    move v2, v5

    :cond_3
    :goto_0
    move v4, v6

    goto :goto_3

    :cond_4
    move v2, v5

    goto :goto_3

    :cond_5
    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_6

    move v3, v6

    goto :goto_1

    :cond_6
    move v3, v5

    :cond_7
    :goto_1
    move v2, v4

    move v4, v3

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_9

    goto :goto_0

    :cond_9
    const/16 v0, -0xb4

    move v4, v0

    goto :goto_3

    :cond_a
    if-eq v1, v5, :cond_c

    if-eq v1, v3, :cond_b

    move v2, v6

    goto :goto_2

    :cond_b
    move v2, v5

    :cond_c
    :goto_2
    move v4, v2

    move v2, v6

    .line 191
    :goto_3
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mSwitchView:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v3, v1, [F

    int-to-float v2, v2

    aput v2, v3, v6

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    const-string v7, "rotation"

    invoke-static {v0, v7, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 192
    iget-object v3, p0, Lk12/education/camaramodule/CameraInterface;->mFlashLamp:Landroid/widget/ImageView;

    new-array v8, v1, [F

    aput v2, v8, v6

    aput v4, v8, v5

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 193
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v6

    aput-object v2, v1, v5

    .line 194
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x1f4

    .line 195
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 196
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 197
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->rotation:I

    :cond_d
    return-void
.end method

.method private setFlashModel()V
    .locals 2

    .line 306
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    .line 307
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method doDestroyCamera()V
    .locals 3

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    .line 428
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const-string v2, "CJT"

    if-eqz v1, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 431
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mSwitchView:Landroid/widget/ImageView;

    .line 432
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mFlashLamp:Landroid/widget/ImageView;

    .line 433
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 435
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 436
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    .line 437
    iput-boolean v1, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    .line 438
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 439
    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const-string v0, "=== Destroy Camera ==="

    .line 441
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 443
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "=== Camera  Null==="

    .line 446
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method doOpenCamera(Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;)V
    .locals 2

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 294
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    invoke-static {v0}, Lk12/education/camaramodule/util/CheckPermission;->isCameraUseable(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lk12/education/camaramodule/listener/ErrorListener;->onError()V

    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 300
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v0}, Lk12/education/camaramodule/CameraInterface;->openCamera(I)V

    .line 302
    :cond_1
    invoke-interface {p1}, Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;->cameraHasOpened()V

    return-void
.end method

.method public doStartPreview(Landroid/view/SurfaceHolder;F)V
    .locals 5

    const-string v0, "auto"

    .line 356
    iget-boolean v1, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    if-eqz v1, :cond_0

    const-string v1, "doStartPreview isPreviewing"

    .line 357
    invoke-static {v1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 359
    :cond_0
    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->screenProp:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 360
    iput p2, p0, Lk12/education/camaramodule/CameraInterface;->screenProp:F

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 365
    :cond_2
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mHolder:Landroid/view/SurfaceHolder;

    .line 366
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_5

    .line 368
    :try_start_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 369
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object v1

    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 370
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    const/16 v3, 0x3e8

    .line 369
    invoke-virtual {v1, v2, v3, p2}, Lk12/education/camaramodule/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 371
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object v2

    iget-object v3, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 372
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x4b0

    .line 371
    invoke-virtual {v2, v3, v4, p2}, Lk12/education/camaramodule/util/CameraParamUtil;->getPictureSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 374
    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 376
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p0, Lk12/education/camaramodule/CameraInterface;->preview_width:I

    .line 377
    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lk12/education/camaramodule/CameraInterface;->preview_height:I

    .line 379
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v2, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 381
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object p2

    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 382
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 381
    invoke-virtual {p2, v1, v0}, Lk12/education/camaramodule/util/CameraParamUtil;->isSupportedFocusMode(Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 384
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 386
    :cond_3
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object p2

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {p2, v0, v1}, Lk12/education/camaramodule/util/CameraParamUtil;->isSupportedPictureFormats(Ljava/util/List;I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 388
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 389
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 391
    :cond_4
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 392
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    iput-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 393
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 394
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 395
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 396
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    const-string p1, "CJT"

    const-string p2, "=== Start Preview ==="

    .line 398
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public doStopPreview()V
    .locals 2

    .line 409
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 411
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 412
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 414
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    const-string v0, "CJT"

    const-string v1, "=== Stop Preview ==="

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public handleFocus(Landroid/content/Context;FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V
    .locals 10

    .line 677
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 681
    invoke-static {p2, p3, v1, p1}, Lk12/education/camaramodule/CameraInterface;->calculateTapArea(FFFLandroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 682
    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 683
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    const-string v7, "CJT"

    if-lez v2, :cond_1

    .line 684
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v3, Landroid/hardware/Camera$Area;

    const/16 v8, 0x320

    invoke-direct {v3, v1, v8}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 692
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string v1, "auto"

    .line 694
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 696
    iget-object v8, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    new-instance v9, Lk12/education/camaramodule/CameraInterface$3;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lk12/education/camaramodule/CameraInterface$3;-><init>(Lk12/education/camaramodule/CameraInterface;Ljava/lang/String;Lk12/education/camaramodule/CameraInterface$FocusCallback;Landroid/content/Context;FF)V

    invoke-virtual {v8, v9}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "autoFocus failer"

    .line 712
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "focus areas not supported"

    .line 688
    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-interface {p4}, Lk12/education/camaramodule/CameraInterface$FocusCallback;->focusSuccess()V

    return-void
.end method

.method isPreview(Z)V
    .locals 0

    .line 778
    iput-boolean p1, p0, Lk12/education/camaramodule/CameraInterface;->isPreviewing:Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->firstFrame_data:[B

    return-void
.end method

.method registerSensorManager(Landroid/content/Context;)V
    .locals 3

    .line 763
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 764
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 766
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method setErrorLinsenter(Lk12/education/camaramodule/listener/ErrorListener;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 270
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method setMediaQuality(I)V
    .locals 0

    .line 260
    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->mediaQuality:I

    return-void
.end method

.method setSaveVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 203
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 206
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method public setSwitchView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 115
    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mSwitchView:Landroid/widget/ImageView;

    .line 116
    iput-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mFlashLamp:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 118
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    invoke-virtual {p2, p1, v0}, Lk12/education/camaramodule/util/CameraParamUtil;->getCameraDisplayOrientation(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    :cond_0
    return-void
.end method

.method public setZoom(FI)V
    .locals 2

    .line 212
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_1

    .line 216
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 218
    :cond_1
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x90

    if-eq p2, v0, :cond_8

    const/16 v0, 0x91

    if-eq p2, v0, :cond_3

    goto/16 :goto_1

    .line 238
    :cond_3
    iget-boolean p2, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    if-eqz p2, :cond_4

    return-void

    :cond_4
    const/high16 p2, 0x42480000    # 50.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 243
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 244
    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    add-int/2addr p2, p1

    iput p2, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    if-gez p2, :cond_5

    const/4 p1, 0x0

    .line 246
    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    goto :goto_0

    .line 247
    :cond_5
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    if-le p2, p1, :cond_6

    .line 248
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p1

    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    .line 250
    :cond_6
    :goto_0
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 251
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 253
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setZoom = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 224
    :cond_8
    iget-boolean p2, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_a

    const/high16 p2, 0x42200000    # 40.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    .line 230
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result p2

    if-gt p1, p2, :cond_a

    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->nowScaleRate:I

    if-lt p1, p2, :cond_a

    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->recordScleRate:I

    if-eq p2, p1, :cond_a

    .line 231
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 232
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 233
    iput p1, p0, Lk12/education/camaramodule/CameraInterface;->recordScleRate:I

    :cond_a
    :goto_1
    return-void
.end method

.method public startRecord(Landroid/view/Surface;FLk12/education/camaramodule/CameraInterface$ErrorCallback;)V
    .locals 11

    .line 495
    iget-object p3, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 496
    iget p3, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    const/16 v0, 0x5a

    add-int/2addr p3, v0

    rem-int/lit16 p3, p3, 0x168

    .line 498
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 499
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 500
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    .line 501
    new-instance v10, Landroid/graphics/YuvImage;

    iget-object v4, p0, Lk12/education/camaramodule/CameraInterface;->firstFrame_data:[B

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v5

    const/4 v8, 0x0

    move-object v3, v10

    move v6, v2

    move v7, v9

    invoke-direct/range {v3 .. v8}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 502
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x32

    invoke-virtual {v10, v3, v2, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 504
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 505
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 506
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 507
    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    iget v2, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    if-ne v1, v2, :cond_0

    int-to-float v1, p3

    .line 508
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 509
    :cond_0
    iget v2, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x43870000    # 270.0f

    .line 510
    invoke-virtual {v7, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 512
    :cond_1
    :goto_0
    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 513
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    .line 512
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    .line 515
    iget-boolean v1, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    if-eqz v1, :cond_2

    return-void

    .line 518
    :cond_2
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_3

    .line 519
    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v1}, Lk12/education/camaramodule/CameraInterface;->openCamera(I)V

    .line 521
    :cond_3
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_4

    .line 522
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 524
    :cond_4
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_5

    .line 525
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    .line 527
    :cond_5
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "continuous-video"

    .line 528
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 529
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 531
    :cond_6
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 532
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->unlock()V

    .line 533
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 534
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 535
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 537
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 539
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 540
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 541
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 545
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    const/16 v3, 0x258

    if-nez v1, :cond_7

    .line 546
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object v1

    iget-object v4, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p2}, Lk12/education/camaramodule/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    goto :goto_1

    .line 549
    :cond_7
    invoke-static {}, Lk12/education/camaramodule/util/CameraParamUtil;->getInstance()Lk12/education/camaramodule/util/CameraParamUtil;

    move-result-object v1

    iget-object v4, p0, Lk12/education/camaramodule/CameraInterface;->mParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4, v3, p2}, Lk12/education/camaramodule/util/CameraParamUtil;->getPreviewSize(Ljava/util/List;IF)Landroid/hardware/Camera$Size;

    move-result-object p2

    .line 552
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVideoSize    width = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "height = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CJT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    if-ne v1, v4, :cond_8

    .line 554
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->preview_width:I

    iget v4, p0, Lk12/education/camaramodule/CameraInterface;->preview_height:I

    invoke-virtual {p2, v1, v4}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_2

    .line 556
    :cond_8
    iget-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget v4, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v4, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 565
    :goto_2
    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    if-ne p2, v1, :cond_e

    .line 567
    iget p2, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    const/16 v1, 0x10e

    if-ne p2, v1, :cond_b

    if-nez p3, :cond_9

    .line 570
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const/16 p3, 0xb4

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_9
    if-ne p3, v1, :cond_a

    .line 572
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 574
    :cond_a
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_b
    if-ne p3, v0, :cond_c

    .line 578
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    :cond_c
    if-ne p3, v1, :cond_d

    .line 580
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 582
    :cond_d
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_3

    .line 586
    :cond_e
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 590
    :goto_3
    invoke-static {}, Lk12/education/camaramodule/util/DeviceUtil;->isHuaWeiRongyao()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 591
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    const p3, 0x61a80

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_4

    .line 593
    :cond_f
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    iget p3, p0, Lk12/education/camaramodule/CameraInterface;->mediaQuality:I

    invoke-virtual {p2, p3}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 595
    :goto_4
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "video_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ".mp4"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->videoFileName:Ljava/lang/String;

    .line 598
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 599
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    .line 601
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->videoFileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->videoFileAbsPath:Ljava/lang/String;

    .line 602
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 604
    :try_start_0
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 605
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 606
    iput-boolean v2, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    const-string p1, "startRecord RuntimeException"

    .line 620
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "startRecord IOException"

    .line 615
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    if-eqz p1, :cond_11

    .line 617
    invoke-interface {p1}, Lk12/education/camaramodule/listener/ErrorListener;->onError()V

    goto :goto_5

    :catch_2
    move-exception p1

    .line 608
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string p1, "startRecord IllegalStateException"

    .line 609
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    if-eqz p1, :cond_11

    .line 611
    invoke-interface {p1}, Lk12/education/camaramodule/listener/ErrorListener;->onError()V

    :cond_11
    :goto_5
    return-void
.end method

.method public stopRecord(ZLk12/education/camaramodule/CameraInterface$StopRecordCallback;)V
    .locals 3

    .line 626
    iget-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    if-nez v0, :cond_0

    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 630
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 631
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 632
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    const/4 v0, 0x0

    .line 634
    :try_start_0
    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    iget-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 641
    :goto_0
    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 643
    :cond_1
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 644
    iput-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 636
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 637
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 638
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_0

    :goto_1
    if-eqz p1, :cond_3

    .line 647
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->videoFileAbsPath:Ljava/lang/String;

    invoke-static {p1}, Lk12/education/camaramodule/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 648
    invoke-interface {p2, v1, v1}, Lk12/education/camaramodule/CameraInterface$StopRecordCallback;->recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    .line 652
    :cond_3
    invoke-virtual {p0}, Lk12/education/camaramodule/CameraInterface;->doStopPreview()V

    .line 653
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->saveVideoPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->videoFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 654
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->videoFirstFrame:Landroid/graphics/Bitmap;

    invoke-interface {p2, p1, v0}, Lk12/education/camaramodule/CameraInterface$StopRecordCallback;->recordResult(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 640
    :goto_2
    iget-object p2, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_4

    .line 641
    invoke-virtual {p2}, Landroid/media/MediaRecorder;->release()V

    .line 643
    :cond_4
    iput-object v1, p0, Lk12/education/camaramodule/CameraInterface;->mediaRecorder:Landroid/media/MediaRecorder;

    .line 644
    iput-boolean v0, p0, Lk12/education/camaramodule/CameraInterface;->isRecorder:Z

    .line 645
    throw p1

    :cond_5
    :goto_3
    return-void
.end method

.method public declared-synchronized switchCamera(Landroid/view/SurfaceHolder;F)V
    .locals 2

    monitor-enter p0

    .line 332
    :try_start_0
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    if-ne v0, v1, :cond_0

    .line 333
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_FRONT_POSITION:I

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    goto :goto_0

    .line 335
    :cond_0
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->CAMERA_POST_POSITION:I

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    .line 337
    :goto_0
    invoke-virtual {p0}, Lk12/education/camaramodule/CameraInterface;->doDestroyCamera()V

    const-string v0, "open start"

    .line 338
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 339
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->SELECTED_CAMERA:I

    invoke-direct {p0, v0}, Lk12/education/camaramodule/CameraInterface;->openCamera(I)V

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 343
    :try_start_1
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 345
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    const-string v0, "open end"

    .line 348
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lk12/education/camaramodule/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public takePicture(Lk12/education/camaramodule/CameraInterface$TakePictureCallback;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    iget v0, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 464
    :cond_1
    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->nowAngle:I

    goto :goto_0

    .line 461
    :cond_2
    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lk12/education/camaramodule/CameraInterface;->nowAngle:I

    .line 468
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->angle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lk12/education/camaramodule/CameraInterface;->cameraAngle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk12/education/camaramodule/CameraInterface;->nowAngle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CJT"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lk12/education/camaramodule/CameraInterface$2;

    invoke-direct {v1, p0, p1}, Lk12/education/camaramodule/CameraInterface$2;-><init>(Lk12/education/camaramodule/CameraInterface;Lk12/education/camaramodule/CameraInterface$TakePictureCallback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method unregisterSensorManager(Landroid/content/Context;)V
    .locals 1

    .line 771
    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "sensor"

    .line 772
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    .line 774
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/CameraInterface;->sm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lk12/education/camaramodule/CameraInterface;->sensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
