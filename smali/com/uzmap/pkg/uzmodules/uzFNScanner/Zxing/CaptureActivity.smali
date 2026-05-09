.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_CODE:I = 0xea

.field public static RESET_ORIENTATION:Ljava/lang/String; = "reset_orientation"

.field public static mOrientationFlag:Z = true


# instance fields
.field private final FLASH_ID:I

.field private hideLight:Z

.field private isAlbum:Z

.field private isNewUI:Z

.field private mAlbumText:Ljava/lang/String;

.field private mAlbumTextColor:Ljava/lang/String;

.field private mAlbumTextSize:I

.field private mBeepPath:Ljava/lang/String;

.field private mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

.field private mCloseText:Ljava/lang/String;

.field private mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

.field private mHasSurface:Z

.field private mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

.field private mIsOrientation:Z

.field private mIsSaveToAlbum:Z

.field private mLightImage:Landroid/widget/ImageView;

.field private mLightText:Ljava/lang/String;

.field private mLightTextColor:Ljava/lang/String;

.field private mLightTextSize:I

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mParseImgRunable:Ljava/lang/Runnable;

.field private mRlRoot:Landroid/widget/RelativeLayout;

.field private mSaveH:I

.field private mSavePath:Ljava/lang/String;

.field private mSaveW:I

.field private mSelectedImgPath:Ljava/lang/String;

.field private mSwitchLigthFlag:Z

.field private mViewfinderView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    .line 75
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mIsOrientation:Z

    .line 87
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->hideLight:Z

    .line 322
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mParseImgRunable:Ljava/lang/Runnable;

    const v0, 0x110011

    .line 479
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->FLASH_ID:I

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSelectedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->callBack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    return-void
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Lcom/google/zxing/Result;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->backPreAct(Lcom/google/zxing/Result;)V

    return-void
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    return p0
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    return-void
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mCloseText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$7(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic access$8(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    return p0
.end method

.method static synthetic access$9(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V
    .locals 0

    .line 391
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->chargeScreenAngle()V

    return-void
.end method

.method private addFlash(Landroid/graphics/Rect;)V
    .locals 6

    .line 481
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 483
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 484
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 485
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 486
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 491
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    .line 492
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xe

    .line 493
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x5

    .line 494
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 495
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightTextColor:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightTextSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x110011

    .line 499
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setId(I)V

    .line 500
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 502
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 503
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v5

    invoke-static {v4}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v4

    invoke-direct {v3, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 504
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 505
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v2, 0x3

    .line 506
    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 507
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "mo_flash_off"

    .line 508
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 511
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mRlRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 513
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;

    invoke-direct {v0, p0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private backBtnId()I
    .locals 1

    const-string v0, "mo_fnscanner_back"

    .line 439
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private backPreAct(Lcom/google/zxing/Result;)V
    .locals 2

    .line 283
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 285
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 286
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V

    return-void
.end method

.method private callBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 418
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 420
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    const-string p1, "content"

    .line 422
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 423
    :cond_0
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private chargeScreenAngle()V
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getDisplayRotation()I

    move-result v0

    .line 393
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->setScreemOrientation(I)V

    return-void
.end method

.method private finderViewId()I
    .locals 1

    const-string v0, "mo_fnscanner_viewfinder_view"

    .line 435
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getLayoutId()I
    .locals 1

    const-string v0, "activity_scanner"

    .line 430
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOrientationFlag()Z
    .locals 1

    .line 137
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationFlag:Z

    return v0
.end method

.method private handleDecodeFinish(Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/Result;)V
    .locals 2

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "savePath"

    .line 273
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "albumPath"

    .line 275
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    :cond_1
    invoke-virtual {p3}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "result"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 277
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 279
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    .line 143
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "window"

    .line 367
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 368
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 369
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;IIZ)V

    .line 370
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->chargeScreenAngle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    if-nez p1, :cond_0

    .line 387
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    :cond_0
    return-void

    .line 373
    :catch_0
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_1

    .line 374
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "eventType"

    const-string v2, "cameraError"

    .line 376
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    .line 378
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 380
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private initOnResume()V
    .locals 1

    .line 348
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initSurface()V

    .line 349
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->initBeep()V

    return-void
.end method

.method private initOrientation()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getDisplayRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 156
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 159
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 150
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 153
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientation:I

    :goto_0
    return-void
.end method

.method private initParams()V
    .locals 4

    .line 194
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "soundPath"

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mBeepPath:Ljava/lang/String;

    .line 196
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mBeepPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    const/4 v1, 0x0

    const-string v2, "isSaveToAlbum"

    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mIsSaveToAlbum:Z

    const-string v2, "savePath"

    .line 198
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSavePath:Ljava/lang/String;

    const/16 v2, 0xc8

    const-string v3, "saveW"

    .line 199
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSaveW:I

    const-string v3, "saveH"

    .line 200
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSaveH:I

    const-string v2, "autorotation"

    .line 201
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mIsOrientation:Z

    const-string v2, "albumText"

    .line 203
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumText:Ljava/lang/String;

    const-string v2, "isAlbum"

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isAlbum:Z

    const/16 v2, 0x10

    const-string v3, "albumTextSize"

    .line 205
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumTextSize:I

    const-string v3, "albumTextColor"

    .line 206
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumTextColor:Ljava/lang/String;

    const-string v3, "lightText"

    .line 208
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightText:Ljava/lang/String;

    const-string v3, "closeText"

    .line 209
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mCloseText:Ljava/lang/String;

    const-string v3, "lightTextSize"

    .line 211
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightTextSize:I

    const-string v2, "lightTextColor"

    .line 212
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightTextColor:Ljava/lang/String;

    const-string v2, "isLight"

    .line 214
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->hideLight:Z

    return-void
.end method

.method private initSelectedImgPath(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "_data"

    .line 290
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 296
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSelectedImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 298
    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSelectedImgPath:Ljava/lang/String;

    .line 302
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private initSurface()V
    .locals 2

    .line 354
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->preViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 355
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 356
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 357
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 360
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    return-void
.end method

.method private initView(Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finderViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mViewfinderView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

    .line 165
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;->setLineColor(Ljava/lang/String;)V

    const-string p1, "rl_root"

    .line 166
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mRlRoot:Landroid/widget/RelativeLayout;

    .line 167
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->backBtnId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isNewUI:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 169
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->selectImgBtnId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 170
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isAlbum:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 175
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mAlbumTextColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->parseCssColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->selectImgBtnId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 179
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isAlbum:Z

    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    :cond_2
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->switchLightBtnId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightImage:Landroid/widget/ImageView;

    .line 187
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->hideLight:Z

    if-eqz p1, :cond_3

    .line 189
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightImage:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private parseImg()V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mParseImgRunable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private preViewId()I
    .locals 1

    const-string v0, "mo_fnscanner_preview_view"

    .line 451
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private selectImg()V
    .locals 3

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "image/*"

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "\u9009\u62e9\u4e8c\u7ef4\u7801\u56fe\u7247"

    .line 239
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xea

    .line 240
    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private selectImgBtnId()I
    .locals 1

    const-string v0, "mo_fnscanner_photo"

    .line 443
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setOrientation()V
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 127
    sput-boolean v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationFlag:Z

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 130
    sput-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationFlag:Z

    :cond_1
    move v1, v2

    .line 133
    :goto_0
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->RESET_ORIENTATION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private final startOrientationChangeListener()V
    .locals 1

    .line 582
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 610
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private switchLight()V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    .line 246
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openLight()V

    .line 247
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightImage:Landroid/widget/ImageView;

    const-string v1, "mo_light_light"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSwitchLigthFlag:Z

    .line 250
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->offLight()V

    .line 251
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mLightImage:Landroid/widget/ImageView;

    const-string v1, "mo_light"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResDrawableID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private switchLightBtnId()I
    .locals 1

    const-string v0, "mo_fnscanner_light"

    .line 447
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDisplayRotation()I
    .locals 2

    .line 564
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0xb4

    return v0

    :cond_1
    const/16 v0, 0x10e

    return v0

    :cond_2
    const/16 v0, 0x5a

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mViewfinderView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u6700\u5148\u7ed3\u679c\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FNScanner"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "points = \uff1a"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->playBeepSoundAndVibrate()V

    .line 261
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSavePath:Ljava/lang/String;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSaveW:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSaveH:I

    .line 262
    iget-boolean v4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mIsSaveToAlbum:Z

    const/4 v5, 0x0

    move-object v6, p0

    .line 261
    invoke-static/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->scanResult2img(Ljava/lang/String;Ljava/lang/String;IIZZLandroid/content/Context;)Ljava/lang/String;

    .line 263
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 264
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mSavePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 266
    :goto_0
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    invoke-direct {p0, p2, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->handleDecodeFinish(Ljava/lang/String;Ljava/lang/String;Lcom/google/zxing/Result;)V

    return-void
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 547
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return v0

    .line 550
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 307
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0xea

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initSelectedImgPath(Landroid/content/Intent;)V

    .line 312
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->parseImg()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    const-string v0, "cancel"

    const/4 v1, 0x0

    .line 560
    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->callBack(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->backBtnId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string p1, "cancel"

    .line 220
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->callBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->selectImgBtnId()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-string p1, "selectImage"

    .line 223
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->callBack(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->selectImg()V

    goto :goto_0

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->switchLightBtnId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->switchLight()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getDisplayRotation()I

    move-result p1

    .line 94
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNewUI"

    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isNewUI:Z

    const-string v1, "lineColor"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isNewUI:Z

    const/16 v2, 0x5a

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const-string p1, "activity_land_scanner"

    .line 101
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const-string p1, "activity_open_scanner"

    .line 105
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setContentView(I)V

    goto :goto_0

    :cond_2
    const-string p1, "activity_open_land_scanner"

    .line 107
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setContentView(I)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->init()V

    .line 112
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initParams()V

    .line 113
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initView(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initOrientation()V

    .line 117
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->startOrientationChangeListener()V

    .line 118
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;->shutdown()V

    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 399
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->quitSynchronously()V

    const/4 v0, 0x0

    .line 401
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    .line 403
    :cond_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    if-nez v0, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->preViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 405
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 406
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 408
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->closeDriver()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 337
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setOrientation()V

    .line 338
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mIsOrientation:Z

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 340
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setRequestedOrientation(I)V

    .line 343
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 344
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initOnResume()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 462
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    .line 463
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 464
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->isNewUI:Z

    if-eqz p1, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getDisplayRotation()I

    move-result p1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 468
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_0

    .line 470
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getLandFramingRect()Landroid/graphics/Rect;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 472
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->hideLight:Z

    if-nez v0, :cond_1

    .line 473
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->addFlash(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 534
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mHasSurface:Z

    return-void
.end method
