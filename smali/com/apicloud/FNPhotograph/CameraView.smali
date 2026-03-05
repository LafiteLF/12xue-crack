.class public Lcom/apicloud/FNPhotograph/CameraView;
.super Landroid/widget/RelativeLayout;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;,
        Lcom/apicloud/FNPhotograph/CameraView$QUALITY;
    }
.end annotation


# static fields
.field private static final CAMERA_PARAM_LANDSCAPE:Ljava/lang/String; = "landscape"

.field private static final CAMERA_PARAM_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final CAMERA_PARAM_PORTRAIT:Ljava/lang/String; = "portrait"

.field private static final CAMERA_STATE_BACK:Ljava/lang/String; = "back"

.field private static final CAMERA_STATE_FRONT:Ljava/lang/String; = "front"

.field private static final CAMERA_STATE_UNSPECIFIC:Ljava/lang/String; = "unspecified"

.field public static DIRECTORY:Ljava/lang/String; = null

.field private static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field private static final FOCUS_MODE_CONTINUOUS_PICTURE:Ljava/lang/String; = "continue"

.field private static final FOCUS_MODE_FIXED:Ljava/lang/String; = "locked"

.field private static final TAG:Ljava/lang/String; = "LYH"


# instance fields
.field private angle:I

.field private bmp:Landroid/graphics/Bitmap;

.field cachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private curCameraId:Ljava/lang/String;

.field private dataFormat:Ljava/text/SimpleDateFormat;

.field private mBackCameraId:I

.field private mCamera:Landroid/hardware/Camera;

.field private mContext:Landroid/content/Context;

.field private mFrontCameraId:I

.field private mHeight:I

.field private mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

.field private mOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

.field public mPicTakenListener:Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;

.field private mPictureH:I

.field protected mPictureSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mPictureW:I

.field protected mPreviewSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSaver:Lcom/apicloud/FNPhotograph/MediaSaver;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWidth:I

.field private previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

.field private renderView:Lcom/apicloud/FNPhotograph/FocusRender;

.field private savePath:Ljava/lang/String;

.field public useAdvanceFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 243
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

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraView;->DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;Z)V
    .locals 2

    .line 106
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mFrontCameraId:I

    .line 51
    iput v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    const-string v0, "unspecified"

    .line 63
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    const/4 v0, 0x3

    .line 92
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 241
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->dataFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->bmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 336
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->angle:I

    .line 540
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->useAdvanceFeature:Z

    const/16 v1, 0x780

    .line 546
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureW:I

    const/16 v1, 0x438

    .line 547
    iput v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureH:I

    .line 641
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->savePath:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mContext:Landroid/content/Context;

    .line 108
    iput p2, p0, Lcom/apicloud/FNPhotograph/CameraView;->mWidth:I

    .line 109
    iput p3, p0, Lcom/apicloud/FNPhotograph/CameraView;->mHeight:I

    .line 111
    iput-object p4, p0, Lcom/apicloud/FNPhotograph/CameraView;->mOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

    .line 113
    invoke-virtual {p0, p5}, Lcom/apicloud/FNPhotograph/CameraView;->init(Z)V

    .line 115
    new-instance p1, Lcom/apicloud/FNPhotograph/MediaSaver;

    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/apicloud/FNPhotograph/MediaSaver;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mSaver:Lcom/apicloud/FNPhotograph/MediaSaver;

    .line 118
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->setClickable(Z)V

    .line 119
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    new-instance p2, Lcom/apicloud/FNPhotograph/CameraView$1;

    invoke-direct {p2, p0}, Lcom/apicloud/FNPhotograph/CameraView$1;-><init>(Lcom/apicloud/FNPhotograph/CameraView;)V

    invoke-virtual {p1, p2}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/OnCustomClickListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/apicloud/FNPhotograph/CameraView;)Lcom/apicloud/FNPhotograph/CameraPreviewSurface;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/hardware/Camera;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apicloud/FNPhotograph/CameraView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraView;->bmp:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/apicloud/FNPhotograph/CameraView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->bmp:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 316
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 317
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 319
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 320
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 321
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static generateCustomFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 330
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

    .line 333
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

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/apicloud/FNPhotograph/CameraView;->DIRECTORY:Ljava/lang/String;

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

.method private getCorrectOrientation()I
    .locals 5

    .line 497
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 498
    iget v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 499
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0x10e

    goto :goto_0

    :cond_1
    const/16 v3, 0xb4

    goto :goto_0

    :cond_2
    const/16 v3, 0x5a

    .line 517
    :cond_3
    :goto_0
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v2, :cond_4

    .line 518
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v3

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 519
    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    .line 521
    :cond_4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v3

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    :goto_1
    return v0
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 3

    .line 396
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 397
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-eq p0, p1, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :cond_2
    const/16 v1, 0x5a

    .line 416
    :cond_3
    :goto_0
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p0, p1, :cond_4

    .line 417
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 418
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    .line 420
    :cond_4
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    .line 422
    :goto_1
    invoke-virtual {p2, p0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private setDisplayOrientation()V
    .locals 2

    .line 581
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getCorrectOrientation()I

    move-result v0

    .line 582
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private setPreviewSize()V
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 567
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->isPortrait()Z

    move-result v1

    iget v2, p0, Lcom/apicloud/FNPhotograph/CameraView;->mWidth:I

    iget v3, p0, Lcom/apicloud/FNPhotograph/CameraView;->mHeight:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/apicloud/FNPhotograph/CameraView;->determinePreviewSize(ZII)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 570
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 571
    iget-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraView;->useAdvanceFeature:Z

    if-eqz v2, :cond_0

    .line 572
    iget v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureW:I

    iget v2, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureH:I

    invoke-virtual {p0, v1, v2}, Lcom/apicloud/FNPhotograph/CameraView;->matchPictureSize(II)Landroid/hardware/Camera$Size;

    move-result-object v1

    goto :goto_0

    .line 574
    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 576
    :goto_0
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v1}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 577
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method public addFocusBox(Lcom/apicloud/FNPhotograph/FocusBoxParams;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 435
    invoke-virtual {v0, p1}, Lcom/apicloud/FNPhotograph/FocusRender;->setVisibility(I)V

    return-void

    .line 438
    :cond_1
    new-instance v0, Lcom/apicloud/FNPhotograph/FocusRender;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/apicloud/FNPhotograph/FocusRender;-><init>(Landroid/content/Context;Lcom/apicloud/FNPhotograph/CameraView;Lcom/apicloud/FNPhotograph/FocusBoxParams;)V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    const/4 v0, -0x1

    .line 440
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 441
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    iget p1, p1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->autoHide:I

    invoke-virtual {v0, p1}, Lcom/apicloud/FNPhotograph/FocusRender;->setAutoHide(I)V

    return-void
.end method

.method public autoFocus()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_0
    return-void
.end method

.method protected configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2

    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    const-string v0, "orientation"

    if-eqz p2, :cond_0

    const-string p2, "portrait"

    .line 344
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string p2, "landscape"

    .line 346
    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 350
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 p2, 0x5a

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0xb4

    goto :goto_0

    :cond_3
    const/16 p2, 0x10e

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    .line 368
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :goto_1
    return-void
.end method

.method protected determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;
    .locals 6

    .line 802
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 803
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 809
    :cond_1
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v0, v0

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 812
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 813
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v4, v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 814
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v5, v4, p1

    if-gez v5, :cond_2

    move-object v2, v3

    move p1, v4

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method protected determinePreviewSize(ZII)Landroid/hardware/Camera$Size;
    .locals 5

    if-eqz p1, :cond_0

    move v4, p3

    move p3, p2

    move p2, v4

    :cond_0
    int-to-float p1, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    const p2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 p3, 0x0

    .line 777
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPreviewSizeList:Ljava/util/List;

    new-instance v1, Lcom/apicloud/FNPhotograph/CameraView$5;

    invoke-direct {v1, p0}, Lcom/apicloud/FNPhotograph/CameraView$5;-><init>(Lcom/apicloud/FNPhotograph/CameraView;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 786
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 788
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, p1, v2

    .line 789
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v3, v2, p2

    if-gtz v3, :cond_1

    move-object p3, v1

    move p2, v2

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public findAvailableCameras()V
    .locals 6

    .line 477
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 478
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "xDebug"

    if-ge v2, v1, :cond_2

    .line 480
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 481
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "info camera facing : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 484
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/CameraView;->mFrontCameraId:I

    .line 487
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 488
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 492
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFrontCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mFrontCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBackCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public generalFilePath()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddhhmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBackCameraId()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    return v0
.end method

.method public getCurrentCamera()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .line 708
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v1, "fixed"

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "locked"

    return-object v0

    :cond_1
    const-string v1, "continuous-picture"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "continue"

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mFrontCameraId:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getRenderView()Lcom/apicloud/FNPhotograph/FocusRender;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 835
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 837
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getZoom()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hideFocusBox()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 447
    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/FocusRender;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public init(Z)V
    .locals 2

    .line 162
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    .line 163
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 164
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 167
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    invoke-virtual {v1, v0}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/CameraView;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->findAvailableCameras()V

    if-eqz p1, :cond_0

    .line 175
    :try_start_0
    iget p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mFrontCameraId:I

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    const-string p1, "front"

    .line 176
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    goto :goto_0

    .line 178
    :cond_0
    iget p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mBackCameraId:I

    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    const-string p1, "back"

    .line 179
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

    if-eqz p1, :cond_1

    .line 184
    invoke-interface {p1}, Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;->openFailed()V

    .line 188
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPreviewSizeList:Ljava/util/List;

    .line 189
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    .line 201
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->isPortrait()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/CameraView;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 203
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->previews:Lcom/apicloud/FNPhotograph/CameraPreviewSurface;

    new-instance v0, Lcom/apicloud/FNPhotograph/CameraView$2;

    invoke-direct {v0, p0}, Lcom/apicloud/FNPhotograph/CameraView$2;-><init>(Lcom/apicloud/FNPhotograph/CameraView;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraPreviewSurface;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isFrontCamera()Z
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    const-string v1, "front"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPortrait()Z
    .locals 2

    .line 751
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

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

.method public matchPictureSize(II)Landroid/hardware/Camera$Size;
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 556
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne p1, v2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne p2, v2, :cond_0

    return-object v1

    .line 560
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    return-void
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 4

    .line 248
    invoke-virtual {p2}, Landroid/hardware/Camera;->stopPreview()V

    .line 263
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->dataFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->savePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "IMG_"

    if-nez v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->savePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apicloud/FNPhotograph/CameraView;->generateCustomFilepath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/CameraView;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/apicloud/FNPhotograph/CameraView;->DIRECTORY:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 277
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 279
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 283
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/apicloud/FNPhotograph/CameraView$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/apicloud/FNPhotograph/CameraView$3;-><init>(Lcom/apicloud/FNPhotograph/CameraView;[BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 306
    invoke-virtual {p2}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public releaseCamera()V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 604
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 605
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/apicloud/FNPhotograph/CameraView$QUALITY;IZ)V
    .locals 9

    .line 453
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->cachedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/apicloud/FNPhotograph/CameraView$4;

    move-object v1, v8

    move-object v2, p0

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/apicloud/FNPhotograph/CameraView$4;-><init>(Lcom/apicloud/FNPhotograph/CameraView;ILandroid/graphics/Bitmap;Ljava/lang/String;ZLcom/apicloud/FNPhotograph/CameraView$QUALITY;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setBackCamera()V
    .locals 1

    const-string v0, "back"

    .line 233
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getBackCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/CameraView;->switchCamera(I)V

    return-void
.end method

.method public setCustomPictureResolution(II)V
    .locals 0

    .line 550
    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureW:I

    .line 551
    iput p2, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureH:I

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 589
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 693
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "auto"

    .line 694
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    const-string v1, "locked"

    .line 697
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fixed"

    .line 698
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1
    const-string v1, "continue"

    .line 700
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "continuous-picture"

    .line 701
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 703
    :cond_2
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    return-void
.end method

.method public setFocusRegion(IIII)V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    .line 657
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 658
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 659
    new-instance p1, Landroid/hardware/Camera$Area;

    const/16 p2, 0x258

    invoke-direct {p1, v2, p2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const-string p1, "auto"

    .line 663
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 664
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 665
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, p0}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_1
    return-void
.end method

.method public setFrontCamera()V
    .locals 1

    const-string v0, "front"

    .line 228
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->curCameraId:Ljava/lang/String;

    .line 229
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getFrontCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/CameraView;->switchCamera(I)V

    return-void
.end method

.method public setOnCameraFailedListener(Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mOpenFailedListener:Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;

    return-void
.end method

.method public setOnCustomClickListener(Lcom/apicloud/FNPhotograph/OnCustomClickListener;)V
    .locals 1

    .line 86
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mOnCustomClickListener:Lcom/apicloud/FNPhotograph/OnCustomClickListener;

    .line 87
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->renderView:Lcom/apicloud/FNPhotograph/FocusRender;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1}, Lcom/apicloud/FNPhotograph/FocusRender;->setOnCustomClickListener(Lcom/apicloud/FNPhotograph/OnCustomClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnPictureTakenListener(Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;)V
    .locals 0

    .line 830
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPicTakenListener:Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;

    return-void
.end method

.method public setUseAdvanceFeature(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->useAdvanceFeature:Z

    return-void
.end method

.method public setZoom(I)V
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 623
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void
.end method

.method public startPreView()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 532
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/CameraView;->setPreviewSize()V

    .line 533
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/CameraView;->setDisplayOrientation()V

    .line 534
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 536
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopPreView()V
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 682
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->startPreView()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 725
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->releaseCamera()V

    return-void
.end method

.method public switchCamera(I)V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 731
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 733
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 734
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    goto :goto_0

    .line 736
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :goto_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->isPortrait()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/CameraView;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 744
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPreviewSizeList:Ljava/util/List;

    .line 745
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mPictureSizeList:Ljava/util/List;

    .line 746
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->startPreView()V

    goto :goto_1

    .line 739
    :catch_0
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "\u6444\u50cf\u5934\u5207\u6362\u5931\u8d25"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized takePhoto(Ljava/lang/String;Lcom/apicloud/FNPhotograph/CameraView$QUALITY;I)V
    .locals 0

    monitor-enter p0

    .line 644
    :try_start_0
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->savePath:Ljava/lang/String;

    .line 645
    invoke-static {p3}, Lcom/apicloud/FNPhotograph/Storage;->setStorageImageQuality(I)V

    .line 646
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    .line 647
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/CameraView;->mCamera:Landroid/hardware/Camera;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
