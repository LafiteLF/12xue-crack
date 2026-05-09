.class public Lcom/apicloud/FNPhotograph/FNPhotograph;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "FNPhotograph.java"


# static fields
.field public static DCIM:Ljava/lang/String; = null

.field public static final EVENT_TYPE_CLOSE:Ljava/lang/String; = "close"

.field public static final EVENT_TYPE_SHOW:Ljava/lang/String; = "show"

.field public static final EVENT_TYPE_TAKEPHOTO:Ljava/lang/String; = "takePhoto"

.field private static final TAG:Ljava/lang/String; = "FNPhotograph"

.field public static backCameraRotatedValue:I

.field public static context:Landroid/content/Context;

.field public static frontCameraRotatedValue:I

.field public static isOpen:Z

.field public static uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field private album:Z

.field private cameraMainLayout:Landroid/view/ViewGroup;

.field private cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

.field private currentCameraId:I

.field private customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

.field debug:Z

.field public footerView:Landroid/view/View;

.field private imagePreView:Landroid/view/ViewGroup;

.field private isError:Z

.field private isOpenCameraView:Z

.field private isSettingOpen:Z

.field private isShowAlbum:Z

.field private mBackCameraId:I

.field mFocusX:I

.field mFocusY:I

.field private mFrontCameraId:I

.field private savePath:Ljava/lang/String;

.field private takePhotoBtn:Landroid/widget/ImageView;

.field private usePreview:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->DCIM:Ljava/lang/String;

    const/4 v0, 0x0

    .line 190
    sput-boolean v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 2

    .line 154
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/4 p1, -0x1

    .line 66
    iput p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFrontCameraId:I

    .line 67
    iput p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mBackCameraId:I

    const/4 p1, 0x0

    .line 183
    iput p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->currentCameraId:I

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->debug:Z

    .line 413
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isShowAlbum:Z

    .line 565
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isSettingOpen:Z

    const/4 v0, 0x0

    .line 819
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    .line 1003
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    .line 1005
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    .line 155
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->context:Landroid/content/Context;

    .line 156
    new-instance p1, Lcom/apicloud/FNPhotograph/FNPhotograph$1;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph$1;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/content/Context;I)V

    .line 175
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/apicloud/FNPhotograph/FNPhotograph;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->takePhotoBtn:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->usePreview:Z

    return p0
.end method

.method static synthetic access$300(Lcom/apicloud/FNPhotograph/FNPhotograph;)Landroid/view/ViewGroup;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apicloud/FNPhotograph/FNPhotograph;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->album:Z

    return p0
.end method

.method static synthetic access$500(Lcom/apicloud/FNPhotograph/FNPhotograph;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->currentCameraId:I

    return p0
.end method

.method static synthetic access$502(Lcom/apicloud/FNPhotograph/FNPhotograph;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->currentCameraId:I

    return p1
.end method

.method static synthetic access$600(Lcom/apicloud/FNPhotograph/FNPhotograph;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->openSystemGallery()V

    return-void
.end method

.method static synthetic access$702(Lcom/apicloud/FNPhotograph/FNPhotograph;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    return p1
.end method

.method private findAvailableCameras()V
    .locals 5

    .line 71
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 72
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 74
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 76
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 77
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFrontCameraId:I

    .line 80
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 81
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    iput v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mBackCameraId:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getCamera(I)Landroid/hardware/Camera;
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->findAvailableCameras()V

    .line 143
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 144
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;
    .locals 5

    const-string v0, "fnphotograph_camera_footer_layout"

    .line 474
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 475
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 481
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "takePhotoBtn"

    .line 485
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 486
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->takePhotoBtn:Landroid/widget/ImageView;

    .line 488
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$5;

    invoke-direct {v1, p0, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph$5;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "switchCameraBtn"

    .line 498
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 500
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 501
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$6;

    invoke-direct {v1, p0, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph$6;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    invoke-virtual {p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->getFrontCameraId()I

    move-result p2

    if-gez p2, :cond_0

    const/4 p2, 0x1

    .line 513
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    const-string p1, "thumbnailImage"

    .line 516
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 518
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 520
    invoke-static {}, Lcom/apicloud/FNPhotograph/Storage;->getLatestImage()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 524
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 526
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 528
    new-instance p2, Lcom/apicloud/FNPhotograph/FNPhotograph$7;

    invoke-direct {p2, p0}, Lcom/apicloud/FNPhotograph/FNPhotograph$7;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initHeaderLayout(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "fnphotograph_camera_header_layout"

    .line 572
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 573
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 574
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 576
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 579
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 580
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "flashLightSetting"

    .line 585
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 587
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "flashModeBtn"

    .line 590
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 592
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 593
    new-instance v2, Lcom/apicloud/FNPhotograph/FNPhotograph$8;

    invoke-direct {v2, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$8;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 600
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    const-string p1, "cancelBtn"

    .line 603
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 604
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 605
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$9;

    invoke-direct {v1, p0}, Lcom/apicloud/FNPhotograph/FNPhotograph$9;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->getStatusBarHeight()I

    move-result p1

    .line 615
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 616
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 617
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;
    .locals 5

    .line 428
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 430
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 432
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 436
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 437
    invoke-virtual {p1, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 440
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 443
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 445
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$4;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$4;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;

    invoke-direct {v1}, Lcom/apicloud/FNPhotograph/FocusBoxParams;-><init>()V

    const-string v3, "#F9F900"

    .line 453
    iput-object v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->color:Ljava/lang/String;

    const/16 v3, 0x46

    .line 454
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    const/16 v3, 0x32

    .line 455
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    const/4 v3, 0x2

    .line 456
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->strokeWidth:F

    .line 458
    new-instance v3, Lcom/apicloud/FNPhotograph/FocusRender;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, p1, v1}, Lcom/apicloud/FNPhotograph/FocusRender;-><init>(Landroid/content/Context;Lcom/apicloud/FNPhotograph/CameraPreview;Lcom/apicloud/FNPhotograph/FocusBoxParams;)V

    .line 460
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 462
    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private openSystemGallery()V
    .locals 2

    .line 813
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 815
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 816
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public animEnterOrQuit(Landroid/view/View;)V
    .locals 9

    .line 647
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isSettingOpen:Z

    const-wide/16 v1, 0x12c

    const/16 v3, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "translationX"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    new-array v0, v5, [F

    .line 649
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v8

    aput v4, v0, v7

    .line 648
    invoke-static {p1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 650
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 651
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 652
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$10;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$10;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 658
    iput-boolean v8, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isSettingOpen:Z

    goto :goto_0

    :cond_0
    new-array v0, v5, [F

    aput v4, v0, v8

    .line 661
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v7

    .line 660
    invoke-static {p1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 662
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 663
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 664
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iput-boolean v7, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isSettingOpen:Z

    :goto_0
    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 990
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 992
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 993
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "imagePath"

    .line 994
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 997
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 999
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 130
    :cond_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "supportList"

    .line 132
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V
    .locals 2

    .line 1083
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 1085
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1087
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 1089
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V
    .locals 2

    .line 1285
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 1287
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-ltz p3, :cond_0

    const-string p2, "zoom"

    .line 1289
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1291
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "flashlight"

    .line 1292
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1295
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1297
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public cameraCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V
    .locals 2

    .line 1352
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 1354
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "camera"

    .line 1355
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1357
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 1359
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public clean()V
    .locals 2

    const/4 v0, 0x0

    .line 671
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    .line 672
    sput-boolean v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    .line 673
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    if-eqz v1, :cond_0

    .line 674
    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 675
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->stop()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 677
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    :cond_0
    return-void
.end method

.method public copyImageToFs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 419
    invoke-static {p1, p2}, Lcom/apicloud/FNPhotograph/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public eventCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;II)V
    .locals 2

    .line 1447
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    .line 1449
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1450
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "x"

    .line 1451
    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "y"

    .line 1452
    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p3, "rect"

    .line 1453
    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 1454
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1456
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 3

    const-string v0, "flashOpen"

    .line 685
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "flashClose"

    .line 686
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "flashAuto"

    .line 687
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 689
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 690
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 691
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 693
    new-instance v2, Lcom/apicloud/FNPhotograph/FNPhotograph$11;

    invoke-direct {v2, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/FNPhotograph$11;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    new-instance v0, Lcom/apicloud/FNPhotograph/FNPhotograph$12;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/FNPhotograph$12;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    new-instance v0, Lcom/apicloud/FNPhotograph/FNPhotograph$13;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/FNPhotograph$13;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 637
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

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

.method public imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "okBtn"

    .line 887
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 888
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "repeatBtn"

    .line 890
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 892
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "cancelBtn"

    .line 894
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 895
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 897
    new-instance v3, Lcom/apicloud/FNPhotograph/FNPhotograph$15;

    invoke-direct {v3, p0, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph$15;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    new-instance v0, Lcom/apicloud/FNPhotograph/FNPhotograph$16;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph$16;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    new-instance v0, Lcom/apicloud/FNPhotograph/FNPhotograph$17;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/apicloud/FNPhotograph/FNPhotograph$17;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/ViewGroup;ZLjava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 1430
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    .line 1431
    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$21;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$21;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 1432
    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->setOnCustomClickListener(Lcom/apicloud/FNPhotograph/OnCustomClickListener;)V

    :cond_0
    return-void
.end method

.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 877
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 879
    invoke-static {}, Lcom/apicloud/FNPhotograph/CameraActivity;->finishActivity()V

    const/4 p1, 0x0

    .line 881
    sput-boolean p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    return-void
.end method

.method public jsmethod_closeCameraView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 1461
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    .line 1462
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v1, :cond_0

    .line 1463
    invoke-virtual {v1}, Lcom/apicloud/FNPhotograph/CameraView;->releaseCamera()V

    .line 1464
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1465
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    const/4 v0, 0x1

    .line 1466
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    goto :goto_0

    .line 1468
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :goto_0
    return-void
.end method

.method public jsmethod_getCamera(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 1345
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1346
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getCurrentCamera()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public jsmethod_getFlashlight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 1314
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_2

    .line 1315
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 1316
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 1317
    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :cond_0
    const-string v1, "on"

    .line 1319
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1320
    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :cond_1
    const-string v1, "off"

    .line 1322
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1323
    invoke-virtual {p0, p1, v4, v3, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public jsmethod_getMaxZoom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 1308
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1309
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getMaxZoom()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public jsmethod_getRotateDegree(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "imgPath"

    .line 1473
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1474
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "fs://"

    .line 1477
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1478
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 1483
    :cond_2
    invoke-static {v0}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 1484
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "degree"

    .line 1486
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1488
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public jsmethod_getSupportPictureSize(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v1

    const-string v2, "isFaceFront"

    .line 110
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/List;)V

    .line 122
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public jsmethod_getSupportPreviewSize(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->getCamera(I)Landroid/hardware/Camera;

    move-result-object v1

    const-string v2, "isFaceFront"

    .line 90
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v1, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/List;)V

    .line 102
    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    return-void
.end method

.method public jsmethod_getZoom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 1274
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_1

    .line 1275
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getZoom()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    .line 1279
    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ZILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public jsmethod_hideFocusBox(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1424
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz p1, :cond_0

    .line 1425
    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->hideFocusBox()V

    :cond_0
    return-void
.end method

.method public jsmethod_onResume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1495
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    if-eqz p1, :cond_0

    .line 1496
    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->startPreview()V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "x"

    .line 199
    sget-boolean v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 202
    sput-boolean v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    .line 204
    sput-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    const-string v3, "attachedWindow"

    .line 205
    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/apicloud/FNPhotograph/CameraActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 212
    :cond_1
    sget-object v3, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, "path"

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->savePath:Ljava/lang/String;

    .line 213
    sget-object v3, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, "album"

    invoke-virtual {v3, v4, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->album:Z

    const-string v3, "usePreview"

    .line 215
    invoke-virtual {p1, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->usePreview:Z

    .line 218
    iget-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->album:Z

    if-eqz p1, :cond_2

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Camera"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->savePath:Ljava/lang/String;

    .line 224
    :cond_2
    new-instance p1, Lcom/apicloud/FNPhotograph/FNPhotograph$2;

    invoke-direct {p1, p0}, Lcom/apicloud/FNPhotograph/FNPhotograph$2;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V

    .line 225
    invoke-static {p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setOnCameraFailedListener(Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;)V

    .line 234
    new-instance p1, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x0

    sget-object v6, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->savePath:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;-><init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    .line 237
    sget-object v3, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, "useAdvanceFeature"

    invoke-virtual {v3, v4, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setUseAdvanceFeature(Z)V

    .line 241
    :try_start_0
    sget-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "previewSize"

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 243
    iget-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    aget-object v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object p1, p1, v1

    .line 244
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 243
    invoke-virtual {v3, v4, p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCustomPrevieResolution(II)V

    .line 246
    sget-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "pictureSize"

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    aget-object v3, p1, v2

    .line 249
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 248
    invoke-virtual {v0, v3, p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCustomPictureResolution(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 251
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    :goto_0
    iget-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    if-eqz p1, :cond_3

    .line 255
    iput-boolean v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    return-void

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->getBackCameraId()I

    move-result p1

    iput p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->currentCameraId:I

    .line 260
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 261
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->footerView:Landroid/view/View;

    .line 263
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initHeaderLayout(Landroid/view/ViewGroup;)V

    .line 265
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    new-instance v0, Lcom/apicloud/FNPhotograph/FNPhotograph$3;

    invoke-direct {v0, p0}, Lcom/apicloud/FNPhotograph/FNPhotograph$3;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCameraEventListener(Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;)V

    .line 400
    sget-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v0, "isShowAlbum"

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isShowAlbum:Z

    const-string p1, "thumbnailImage"

    .line 402
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 403
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->footerView:Landroid/view/View;

    .line 404
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 405
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isShowAlbum:Z

    if-nez v0, :cond_4

    const/16 v0, 0x8

    .line 406
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    :cond_4
    sget-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x0

    const-string v1, "show"

    invoke-virtual {p0, p1, v1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public jsmethod_openCameraView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 12

    .line 1010
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1013
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    .line 1015
    new-instance v1, Lcom/apicloud/FNPhotograph/CameraConfig;

    invoke-direct {v1, p1}, Lcom/apicloud/FNPhotograph/CameraConfig;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 1017
    iget-object v2, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->orientation:Ljava/lang/String;

    const-string v3, "portrait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1020
    :cond_1
    iget-object v2, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->orientation:Ljava/lang/String;

    const-string v3, "left"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1021
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1023
    :cond_2
    iget-object v2, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->orientation:Ljava/lang/String;

    const-string v4, "right"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1024
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1026
    :cond_3
    iget-object v2, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->orientation:Ljava/lang/String;

    const-string v4, "upsideDown"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1027
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1030
    :cond_4
    iget-object v2, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->rectW:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v2

    .line 1031
    iget-object v4, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->rectH:Ljava/lang/String;

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssPixel(Ljava/lang/String;)I

    move-result v4

    .line 1033
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1034
    iget v6, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->rectY:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1035
    iget v6, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->rectX:I

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v2, :cond_5

    .line 1038
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/FNPhotograph/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    :cond_5
    move v8, v2

    if-gez v4, :cond_6

    .line 1042
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/FNPhotograph/ViewUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    :cond_6
    move v9, v4

    .line 1045
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v7

    new-instance v10, Lcom/apicloud/FNPhotograph/FNPhotograph$19;

    invoke-direct {v10, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$19;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    iget-boolean v11, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->useFrontCamera:Z

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/apicloud/FNPhotograph/CameraView;-><init>(Landroid/content/Context;IILcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;Z)V

    iput-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    :try_start_0
    const-string v4, "useAdvanceFeature"

    .line 1064
    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/apicloud/FNPhotograph/CameraView;->setUseAdvanceFeature(Z)V

    const-string v2, "pictureSize"

    .line 1066
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "x"

    .line 1067
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1068
    iget-object v4, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    aget-object v6, v2, v3

    .line 1069
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1068
    invoke-virtual {v4, v6, v2}, Lcom/apicloud/FNPhotograph/CameraView;->setCustomPictureResolution(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1071
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1073
    :goto_0
    iget-boolean v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    if-eqz v2, :cond_7

    .line 1074
    iput-boolean v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isError:Z

    return-void

    .line 1077
    :cond_7
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    iget-object v3, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->fixedOn:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/apicloud/FNPhotograph/CameraConfig;->fixed:Z

    invoke-virtual {p0, v2, v5, v3, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    .line 1079
    invoke-virtual {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method

.method public jsmethod_setCamera(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_1

    const-string v0, "camera"

    const-string v1, "back"

    .line 1364
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "front"

    .line 1365
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1366
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->setFrontCamera()V

    goto :goto_0

    .line 1368
    :cond_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->setBackCamera()V

    :cond_1
    :goto_0
    return-void
.end method

.method public jsmethod_setFlashlight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 1329
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_2

    const-string v0, "off"

    const-string v1, "flashlight"

    .line 1330
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "auto"

    .line 1331
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    .line 1333
    invoke-virtual {v2, v1}, Lcom/apicloud/FNPhotograph/CameraView;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    const-string v1, "on"

    .line 1335
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v2, v1}, Lcom/apicloud/FNPhotograph/CameraView;->setFlashMode(Ljava/lang/String;)V

    .line 1338
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1339
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1, v0}, Lcom/apicloud/FNPhotograph/CameraView;->setFlashMode(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public jsmethod_setFocusBox(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 1401
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_1

    const-string v0, "box"

    .line 1402
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1403
    new-instance v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;

    invoke-direct {v1}, Lcom/apicloud/FNPhotograph/FocusBoxParams;-><init>()V

    if-eqz v0, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-string v4, "width"

    .line 1406
    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->strokeWidth:F

    const-string v2, "color"

    const-string v3, "#ADFF2F"

    .line 1408
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->color:Ljava/lang/String;

    const/16 v2, 0x50

    const-string v3, "maxSize"

    .line 1410
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1409
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    const/16 v2, 0x3c

    const-string v3, "minSize"

    .line 1412
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 1411
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    iput v0, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    :cond_0
    const-string v0, "icon"

    .line 1414
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    iput-object v0, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusPath:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "autoHide"

    .line 1416
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->autoHide:I

    const/4 v0, 0x1

    const-string v2, "animation"

    .line 1417
    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->animation:Z

    .line 1418
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1, v1}, Lcom/apicloud/FNPhotograph/CameraView;->addFocusBox(Lcom/apicloud/FNPhotograph/FocusBoxParams;)V

    .line 1419
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->getRenderView()Lcom/apicloud/FNPhotograph/FocusRender;

    move-result-object p1

    iget v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFocusX:I

    iget v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFocusY:I

    invoke-virtual {p1, v0, v1}, Lcom/apicloud/FNPhotograph/FocusRender;->firstFocus(II)V

    :cond_1
    return-void
.end method

.method public jsmethod_setFocusMode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    const-string v0, "focusMode"

    const-string v1, "continue"

    .line 1375
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1376
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v0, p1}, Lcom/apicloud/FNPhotograph/CameraView;->setFocusMode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public jsmethod_setFocusRegion(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    .line 1384
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    const-string v0, "region"

    .line 1385
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "x"

    .line 1387
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "y"

    .line 1388
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1390
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFocusX:I

    .line 1391
    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->mFocusY:I

    const-string v2, "w"

    .line 1393
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "h"

    .line 1394
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1395
    iget-object v3, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/apicloud/FNPhotograph/CameraView;->setFocusRegion(IIII)V

    :cond_0
    return-void
.end method

.method public jsmethod_setRect(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 9

    const-string v0, "rect"

    .line 1230
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1231
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_2

    .line 1233
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v1, "h"

    const-string v2, "w"

    const-string v3, "y"

    const-string v4, "x"

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    .line 1235
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1237
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1238
    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v5

    .line 1237
    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1239
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1240
    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v6

    .line 1239
    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 1241
    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1242
    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v7

    .line 1241
    invoke-virtual {p1, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 1243
    iget v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1244
    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v8

    .line 1243
    invoke-virtual {p1, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 1246
    invoke-static {v5}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1247
    invoke-static {v6}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1248
    invoke-static {v7}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1249
    invoke-static {v8}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    iput v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    .line 1254
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/CameraView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 1256
    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1257
    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 1258
    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1259
    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v5

    .line 1258
    invoke-virtual {p1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1260
    iget v5, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 1261
    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->pixToDip(I)I

    move-result v5

    .line 1260
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1263
    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 1264
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 1265
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 1266
    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 1268
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public jsmethod_setZoom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 1301
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const-string v1, "zoom"

    .line 1302
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1303
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v0, p1}, Lcom/apicloud/FNPhotograph/CameraView;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public jsmethod_startPreview(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1093
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz p1, :cond_0

    .line 1094
    invoke-virtual {p1}, Lcom/apicloud/FNPhotograph/CameraView;->startPreView()V

    :cond_0
    return-void
.end method

.method public jsmethod_takePhoto(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 11

    const-string v0, "medium"

    const-string v1, "quality"

    .line 1100
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    .line 1101
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    .line 1102
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "qualityValue"

    const/16 v5, 0x64

    .line 1104
    invoke-virtual {p1, v4, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 1108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    const-string v5, "fs://"

    .line 1109
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1110
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v5, "jpg"

    .line 1113
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v7, ".jpg"

    if-eqz v5, :cond_1

    const-string v5, "png"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1114
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1117
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1122
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1123
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1129
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, ".png"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1131
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1133
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v7, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_0

    :cond_4
    move-object v5, v6

    .line 1138
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    if-eqz v2, :cond_a

    const-string v2, "low"

    .line 1140
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1141
    sget-object v2, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->LOW:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    goto :goto_1

    :cond_6
    move-object v2, v6

    .line 1143
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1144
    sget-object v2, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->MEDIUM:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    :cond_7
    const-string v0, "high"

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1147
    sget-object v2, Lcom/apicloud/FNPhotograph/CameraView$QUALITY;->HIGH:Lcom/apicloud/FNPhotograph/CameraView$QUALITY;

    .line 1149
    :cond_8
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$20;

    invoke-direct {v1, p0, p1, v3}, Lcom/apicloud/FNPhotograph/FNPhotograph$20;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    .line 1150
    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/CameraView;->setOnPictureTakenListener(Lcom/apicloud/FNPhotograph/CameraView$OnPictureTakenListener;)V

    if-eqz v5, :cond_9

    .line 1204
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v4}, Lcom/apicloud/FNPhotograph/CameraView;->takePhoto(Ljava/lang/String;Lcom/apicloud/FNPhotograph/CameraView$QUALITY;I)V

    goto :goto_2

    .line 1207
    :cond_9
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->customCameraView:Lcom/apicloud/FNPhotograph/CameraView;

    invoke-virtual {p1, v6, v2, v4}, Lcom/apicloud/FNPhotograph/CameraView;->takePhoto(Ljava/lang/String;Lcom/apicloud/FNPhotograph/CameraView$QUALITY;I)V

    :cond_a
    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 959
    iget p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->currentCameraId:I

    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->switchCamera(I)V

    if-eqz p3, :cond_0

    .line 961
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 962
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/apicloud/FNPhotograph/FNPhotograph$18;

    invoke-direct {p2, p0, p3}, Lcom/apicloud/FNPhotograph/FNPhotograph$18;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/content/Intent;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    const/4 v0, 0x0

    .line 807
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpenCameraView:Z

    .line 808
    sput-boolean v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    .line 809
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->clean()V

    return-void
.end method

.method public openImagePreView(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 822
    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 5

    .line 828
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 832
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 837
    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 838
    iput-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    :cond_2
    const-string v0, "fnphotograph_imagepreview_layout"

    .line 843
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 845
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, -0x1

    .line 852
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 854
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "previewImage"

    .line 856
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 857
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    .line 858
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 861
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 864
    :cond_4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v2, :cond_5

    .line 865
    new-instance p2, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 867
    :cond_5
    new-instance p2, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 871
    :goto_0
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 873
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, p1, p3}, Lcom/apicloud/FNPhotograph/FNPhotograph;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;Z)V

    return-void
.end method

.method public picTakenCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
    .locals 2

    .line 1219
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imagePath"

    .line 1221
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1223
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p2, 0x0

    .line 1225
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public scanDirAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1213
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1214
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1215
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public switchCamera(I)V
    .locals 7

    .line 731
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->clean()V

    .line 732
    new-instance v6, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->context()Landroid/content/Context;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    sget-object v3, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    iget-object v5, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->savePath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;-><init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;ZLjava/lang/String;)V

    iput-object v6, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    .line 734
    invoke-direct {p0, v6}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 735
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;

    move-result-object p1

    .line 736
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/apicloud/FNPhotograph/FNPhotograph;->initHeaderLayout(Landroid/view/ViewGroup;)V

    .line 738
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isShowAlbum:Z

    if-nez v0, :cond_0

    const-string v0, "thumbnailImage"

    .line 740
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 742
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    .line 743
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    new-instance v1, Lcom/apicloud/FNPhotograph/FNPhotograph$14;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/FNPhotograph$14;-><init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCameraEventListener(Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;)V

    return-void
.end method

.method public updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 546
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    .line 547
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 549
    :try_start_0
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v0, 0x64

    .line 551
    invoke-static {p2, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 559
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 561
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateThumbnail()V
    .locals 2

    const-string v0, "thumbnailImage"

    .line 974
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph;->footerView:Landroid/view/View;

    .line 976
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 978
    invoke-static {}, Lcom/apicloud/FNPhotograph/Storage;->getLatestImage()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 984
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
