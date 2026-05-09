.class public Lcom/apicloud/FNPhotograph/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;,
        Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;,
        Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;
    }
.end annotation


# static fields
.field private static final CAMERA_PARAM_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final CAMERA_PARAM_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final CAMERA_PARAM_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static DEBUGGING:Z = true

.field public static DIRECTORY:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "CameraPreviewSample"

.field private static mOnCameraOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;


# instance fields
.field private bmp:Landroid/graphics/Bitmap;

.field private dataFormat:Ljava/text/SimpleDateFormat;

.field isCameraReady:Z

.field protected mActivity:Landroid/app/Activity;

.field private mBackCameraId:I

.field protected mCamera:Landroid/hardware/Camera;

.field private mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

.field private mCameraId:I

.field private mCenterPosX:I

.field private mCenterPosY:I

.field private mFrontCameraId:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mLayoutMode:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

.field private mMediaSaver:Lcom/apicloud/FNPhotograph/MediaSaver;

.field protected mPictureSize:Landroid/hardware/Camera$Size;

.field protected mPictureSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewReadyCallback:Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;

.field protected mPreviewSize:Landroid/hardware/Camera$Size;

.field protected mPreviewSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field protected mSavePath:Ljava/lang/String;

.field private mSurfaceChangedCallDepth:I

.field protected mSurfaceConfiguring:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraPreview;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;)V
    .locals 3

    .line 119
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    const/4 v1, -0x1

    .line 57
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosX:I

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewReadyCallback:Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;

    .line 63
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mMediaSaver:Lcom/apicloud/FNPhotograph/MediaSaver;

    .line 65
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mFrontCameraId:I

    .line 66
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mBackCameraId:I

    .line 116
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->isCameraReady:Z

    .line 561
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->dataFormat:Ljava/text/SimpleDateFormat;

    .line 565
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->bmp:Landroid/graphics/Bitmap;

    .line 120
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mActivity:Landroid/app/Activity;

    .line 121
    iput-object p3, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mLayoutMode:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    .line 122
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    .line 123
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 124
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p3, 0x3

    invoke-interface {p1, p3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 126
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->findAvailableCameras()V

    .line 128
    invoke-virtual {p0, p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->openCamera(I)V

    .line 130
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    .line 136
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSizeList:Ljava/util/List;

    .line 138
    new-instance p1, Lcom/apicloud/FNPhotograph/MediaSaver;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/apicloud/FNPhotograph/MediaSaver;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mMediaSaver:Lcom/apicloud/FNPhotograph/MediaSaver;

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->bmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$002(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$100(Lcom/apicloud/FNPhotograph/CameraPreview;)Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    return-object p0
.end method

.method public static convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 548
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 550
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 551
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 552
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private doSurfaceChanged(II)V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 221
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 222
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->isPortrait()Z

    move-result v1

    .line 226
    iget-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    const/4 v3, 0x1

    const-string v4, "CameraPreviewSample"

    if-nez v2, :cond_1

    .line 227
    invoke-virtual {p0, v1, p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->determinePreviewSize(ZII)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 228
    invoke-virtual {p0, v2}, Lcom/apicloud/FNPhotograph/CameraPreview;->determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 229
    sget-boolean v6, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Desired Preview Size - w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 231
    iput-object v5, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 232
    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->adjustSurfaceLayoutSize(Landroid/hardware/Camera$Size;ZII)Z

    move-result v2

    iput-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    if-eqz v2, :cond_1

    .line 239
    iget v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    if-gt v2, v3, :cond_1

    return-void

    .line 244
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to start preview: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 254
    iput-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 257
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 258
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_0

    .line 260
    :cond_2
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mActivity:Landroid/app/Activity;

    const-string p2, "Can\'t start preview"

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "Gave up starting preview"

    .line 261
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewReadyCallback:Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;

    if-eqz p1, :cond_3

    .line 266
    invoke-interface {p1}, Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;->onPreviewReady()V

    :cond_3
    return-void
.end method

.method private findAvailableCameras()V
    .locals 5

    .line 87
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 88
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 90
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 92
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 93
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mFrontCameraId:I

    .line 96
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 97
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mBackCameraId:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static generateCustomFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 537
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ".jpg"

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    .line 540
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/apicloud/FNPhotograph/CameraPreview;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setOnCameraFailedListener(Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;)V
    .locals 0

    .line 144
    sput-object p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mOnCameraOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

    return-void
.end method


# virtual methods
.method protected adjustSurfaceLayoutSize(Landroid/hardware/Camera$Size;ZII)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 352
    iget p2, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float p2, p2

    .line 353
    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 355
    :cond_0
    iget p2, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float p2, p2

    .line 356
    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    :goto_0
    int-to-float p1, p1

    int-to-float p4, p4

    div-float/2addr p4, p2

    int-to-float p3, p3

    div-float/2addr p3, p1

    .line 362
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mLayoutMode:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    sget-object v1, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    if-ne v0, v1, :cond_1

    cmpg-float v0, p4, p3

    if-gez v0, :cond_2

    goto :goto_1

    :cond_1
    cmpg-float v0, p4, p3

    if-gez v0, :cond_3

    :cond_2
    move p4, p3

    .line 377
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float/2addr p2, p4

    float-to-int p2, p2

    mul-float/2addr p1, p4

    float-to-int p1, p1

    .line 381
    sget-boolean v0, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz v0, :cond_4

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preview Layout Size - w: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraPreviewSample"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scale factor: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_4
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getWidth()I

    move-result p4

    if-ne p1, p4, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getHeight()I

    move-result p4

    if-eq p2, p4, :cond_5

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    goto :goto_3

    .line 388
    :cond_6
    :goto_2
    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 389
    iput p1, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 390
    iget p4, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosX:I

    if-ltz p4, :cond_7

    .line 391
    iget p4, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosY:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p4, p2

    iput p4, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 392
    iget p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosX:I

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 394
    :cond_7
    invoke-virtual {p0, p3}, Lcom/apicloud/FNPhotograph/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    :goto_3
    return p1
.end method

.method public autoFocus()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method protected configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 3

    .line 413
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const-string v0, "orientation"

    if-eqz p2, :cond_0

    const-string p2, "portrait"

    .line 415
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p2, "landscape"

    .line 417
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :cond_1
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 422
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    const/16 v0, 0x5a

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_4

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xb4

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 439
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 473
    :goto_1
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 475
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p2, v0}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 477
    sget-boolean p2, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz p2, :cond_6

    .line 478
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Preview Actual Size - w: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "CameraPreviewSample"

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture Actual Size - w: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_6
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method protected determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 6

    .line 325
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 326
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 331
    :cond_1
    sget-boolean v0, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz v0, :cond_2

    const-string v0, "CameraPreviewSample"

    const-string v1, "Same picture size not found."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_2
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 337
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 338
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 339
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gez v5, :cond_3

    move-object v2, v3

    move p1, v4

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method protected determinePreviewSize(ZII)Landroid/hardware/Camera$Size;
    .locals 7

    if-eqz p1, :cond_0

    move v6, p3

    move p3, p2

    move p2, v6

    .line 292
    :cond_0
    sget-boolean p1, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz p1, :cond_2

    const-string p1, "CameraPreviewSample"

    const-string v0, "Listing all supported preview sizes"

    .line 293
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ", h: "

    const-string v3, "  w: "

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "Listing all supported picture sizes"

    .line 297
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 p3, 0x0

    .line 309
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 310
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    .line 311
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gez v3, :cond_3

    move-object p3, v1

    move p2, v2

    goto :goto_2

    .line 318
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cameraWidth: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cameraHeight: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "debug"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public getBackCameraId()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mBackCameraId:I

    return v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mFrontCameraId:I

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method public getSupportPictureSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSizeList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportPreviewSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSizeList:Ljava/util/List;

    return-object v0
.end method

.method public isFrontCamera()Z
    .locals 2

    .line 721
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraId:I

    iget v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mFrontCameraId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    .line 526
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    if-eqz p1, :cond_0

    .line 527
    invoke-interface {p1}, Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;->onAutoFocus()V

    :cond_0
    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 3

    .line 573
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->dataFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 577
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSavePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "IMG_"

    if-nez v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSavePath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->generateCustomFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 583
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/apicloud/FNPhotograph/CameraPreview;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 585
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 588
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 593
    :cond_2
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    if-eqz v0, :cond_4

    .line 594
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x2

    .line 595
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v1, 0x0

    .line 596
    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 599
    sget v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->frontCameraRotatedValue:I

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 600
    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 602
    :cond_3
    sget v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->backCameraRotatedValue:I

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotateBitmapByDegree(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    .line 605
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    invoke-interface {v1, v0, p2}, Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;->onBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 617
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apicloud/FNPhotograph/CameraPreview$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreview$1;-><init>(Lcom/apicloud/FNPhotograph/CameraPreview;[BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 639
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 653
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->startPreview()V

    const/4 p1, 0x1

    .line 654
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->isCameraReady:Z

    return-void
.end method

.method public openCamera(I)V
    .locals 3

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 150
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 151
    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraId:I

    goto :goto_0

    .line 153
    :cond_0
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraId:I

    goto :goto_0

    .line 156
    :cond_1
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraId:I

    .line 160
    :goto_0
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    .line 161
    iget p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraId:I

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    goto :goto_1

    .line 163
    :cond_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 166
    :catch_0
    sget-object p1, Lcom/apicloud/FNPhotograph/CameraPreview;->mOnCameraOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

    if-eqz p1, :cond_3

    .line 167
    invoke-interface {p1}, Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;->openFailed()V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCameraEventListener(Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCameraEventListener:Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;

    return-void
.end method

.method public setCenterPosition(II)V
    .locals 0

    .line 407
    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosX:I

    .line 408
    iput p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCenterPosY:I

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 678
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 679
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 680
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public setOnPreviewReady(Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewReadyCallback:Lcom/apicloud/FNPhotograph/CameraPreview$PreviewReadyCallback;

    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method public setPreviewSize(III)V
    .locals 5

    .line 693
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 695
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 696
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->isPortrait()Z

    move-result v0

    .line 701
    invoke-virtual {p0, v0, p2, p3}, Lcom/apicloud/FNPhotograph/CameraPreview;->determinePreviewSize(ZII)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 702
    invoke-virtual {p0, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 703
    sget-boolean v3, Lcom/apicloud/FNPhotograph/CameraPreview;->DEBUGGING:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Preview Size - w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraPreviewSample"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iput-object v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 705
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 706
    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/apicloud/FNPhotograph/CameraPreview;->adjustSurfaceLayoutSize(Landroid/hardware/Camera$Size;ZII)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 708
    iput-boolean p3, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    return-void

    .line 711
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 713
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 715
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to satart preview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x0

    .line 717
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceConfiguring:Z

    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 494
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 196
    iget p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    .line 197
    invoke-direct {p0, p3, p4}, Lcom/apicloud/FNPhotograph/CameraPreview;->doSurfaceChanged(II)V

    .line 198
    iget p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mSurfaceChangedCallDepth:I

    const-string p1, "debug"

    const-string p2, "surfaceChange ... "

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/CameraPreview;->openCamera(I)V

    .line 187
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 486
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->stop()V

    return-void
.end method

.method public switchCamera(I)V
    .locals 2

    .line 685
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 686
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 687
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraPreview;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 688
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/apicloud/FNPhotograph/CameraPreview;->setPreviewSize(III)V

    :cond_0
    return-void
.end method

.method public takePhoto()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->isCameraReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/CameraPreview;->isCameraReady:Z

    const/4 v1, 0x0

    .line 214
    invoke-virtual {v0, v1, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    :cond_0
    return-void
.end method
