.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzFNScanner.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field public static autoZoom:Z = false

.field public static autoZoomView:Z = false

.field public static isWindow:Z = false

.field public static mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public final DECODE_CODE:I

.field public final OPEN_CODE:I

.field private mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

.field private mCamera:Landroid/hardware/Camera;

.field private mCaptureView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

.field private mIsOrientation:Z

.field private mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mParseImgRunable:Ljava/lang/Runnable;

.field private mSelectedImgPath:Ljava/lang/String;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/16 p1, 0x64

    .line 52
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->OPEN_CODE:I

    const/16 p1, 0x12c

    .line 53
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->DECODE_CODE:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    .line 63
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mIsOrientation:Z

    .line 477
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mParseImgRunable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSelectedImgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    return-object p0
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;ZLjava/lang/String;)V
    .locals 0

    .line 529
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->decodeCallBack(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Landroid/view/OrientationEventListener;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-object p0
.end method

.method static synthetic access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    return p0
.end method

.method static synthetic access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V
    .locals 0

    .line 691
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->chargeScreenAngle()V

    return-void
.end method

.method static synthetic access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    return-void
.end method

.method private callBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 230
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    const-string v2, "show"

    .line 232
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private captureViewLayout(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 5

    .line 380
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->x(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->y(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v1

    .line 382
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, p1, v4, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result p1

    .line 384
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 385
    invoke-virtual {v3, v0, v1, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v3
.end method

.method private chargeScreenAngle()V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->getDisplayRotation()I

    move-result v0

    .line 693
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 694
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->setScreemOrientation(I)V

    :cond_0
    return-void
.end method

.method private decode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->decodePath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->selectImgFromSystem()V

    goto :goto_0

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->decodeImg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private decodeCallBack(ZLjava/lang/String;)V
    .locals 2

    .line 530
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 532
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p1, "content"

    .line 534
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSelectedImgPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "albumPath"

    .line 537
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSelectedImgPath:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    :cond_1
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 541
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private decodeImg(Ljava/lang/String;)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->getWidgetInfo()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private destroyCamera()V
    .locals 1

    .line 616
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 618
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 619
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method private encode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->encodeContent(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->isBar(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v6

    .line 318
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveToAlbum(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v5

    .line 319
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgW(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v3

    .line 322
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgH(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v4

    .line 324
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v7

    .line 323
    invoke-static/range {v1 .. v7}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->scanResult2img(Ljava/lang/String;Ljava/lang/String;IIZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 547
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imgPath"

    .line 549
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "albumPath"

    .line 551
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "status"

    const/4 p3, 0x1

    .line 552
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 p2, 0x0

    .line 553
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 555
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initCaptureView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 366
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->getDisplayRotation()I

    move-result v2

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCaptureView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    .line 367
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCaptureView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->setCaptureView(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V

    return-void
.end method

.method private initIntentParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Intent;)V
    .locals 7

    .line 410
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->sound(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveToAlbum(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v1

    .line 413
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "autorotation"

    const/4 v4, 0x0

    .line 414
    invoke-virtual {p1, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 415
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 416
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgW(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v5

    .line 417
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v6, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgH(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result p1

    const-string v6, "soundPath"

    .line 418
    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "isSaveToAlbum"

    .line 419
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "savePath"

    .line 420
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "saveW"

    .line 421
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "saveH"

    .line 422
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private initOrientation()V
    .locals 2

    .line 624
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->getDisplayRotation()I

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

    .line 633
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 636
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 627
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 630
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientation:I

    :goto_0
    return-void
.end method

.method private initParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 7

    .line 427
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->sound(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveToAlbum(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v6

    .line 430
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgPath(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 432
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgW(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v3

    .line 433
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->saveImgH(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v4

    .line 435
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->initParams(Ljava/lang/String;IILjava/lang/String;Z)V

    return-void
.end method

.method private initSelectedImgPath(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "_data"

    .line 459
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 460
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 462
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 465
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSelectedImgPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/Utils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSelectedImgPath:Ljava/lang/String;

    .line 470
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private lightStatus(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z
    .locals 2

    const-string v0, "status"

    const-string v1, "off"

    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    .line 264
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private lightSwitch(Z)V
    .locals 1

    .line 294
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 296
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openLight()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->offLight()V

    goto :goto_0

    .line 300
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_2

    .line 301
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 302
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    .line 304
    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->stopCamera()V

    .line 305
    new-instance p1, Landroid/view/SurfaceView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    .line 306
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 307
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 308
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 309
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 311
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private lightSwitchLower21(Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 274
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    .line 276
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const-string v0, "torch"

    .line 279
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openLight()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    if-nez p1, :cond_3

    .line 285
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const-string v0, "off"

    .line 286
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->offLight()V

    :goto_0
    return-void
.end method

.method private onDecodeParseResult(Landroid/content/Intent;)V
    .locals 0

    .line 454
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initSelectedImgPath(Landroid/content/Intent;)V

    .line 455
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->parseImg()V

    return-void
.end method

.method private onOpenParseResult(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "ISO-8859-1"

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "result"

    .line 494
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Tim"

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u626b\u63cf\u7ed3\u679c\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "savePath"

    .line 496
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "albumPath"

    .line 497
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    .line 499
    invoke-virtual {v3, v1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "success"

    if-eqz v3, :cond_0

    .line 501
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "GB2312"

    invoke-direct {v3, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 503
    invoke-direct {p0, v3, v4, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->openCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_0
    invoke-direct {p0, v1, v4, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->openCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 509
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private openCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 515
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 517
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "imgPath"

    .line 519
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p4, :cond_1

    const-string p2, "albumPath"

    .line 521
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p2, "content"

    .line 522
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 525
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private parseImg()V
    .locals 2

    .line 474
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mParseImgRunable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removePreView()V
    .locals 2

    .line 566
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 567
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->onPause()V

    .line 568
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->onDestroy()V

    .line 569
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 570
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->setCaptureView(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V

    :cond_0
    return-void
.end method

.method private resetLayout(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "x"

    .line 390
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    const-string v1, "y"

    .line 391
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v1

    const-string v2, "w"

    .line 392
    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v2

    const-string v3, "h"

    .line 393
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    .line 394
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 395
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 396
    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 397
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_1

    .line 399
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 400
    invoke-virtual {v3, v0, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 403
    :cond_1
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v2, p1, v0, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 405
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private selectImgFromSystem()V
    .locals 3

    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 357
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v1, "image/*"

    .line 361
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x12c

    .line 362
    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private final startOrientationChangeListener()V
    .locals 2

    .line 660
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 688
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method private stopCamera()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    .line 602
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->destroyCamera()V

    return-void
.end method

.method private switchLight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 250
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->lightStatus(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->lightSwitchLower21(Z)V

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->lightStatus(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->lightSwitch(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkOpenCameraCallback(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V
    .locals 2

    .line 698
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p1, :cond_0

    .line 699
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "eventType"

    const-string v1, "cameraError"

    .line 701
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 702
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 704
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getDisplayRotation()I
    .locals 3

    .line 641
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 645
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v0, 0xb4

    return v0

    :cond_2
    const/16 v0, 0x10e

    return v0

    :cond_3
    const/16 v0, 0x5a

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public insertCaptureView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "fixedOn"

    .line 371
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    const/4 v2, 0x1

    .line 372
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->captureViewLayout(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    return-void
.end method

.method public jsmethod_closeView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->destroyCamera()V

    .line 192
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removePreView()V

    return-void
.end method

.method public jsmethod_decodeImg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 196
    sput-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 197
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 198
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->sound(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    .line 201
    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->initBeep()V

    .line 202
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->decode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_encodeImg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 206
    sput-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 207
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 208
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->encode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->encodeCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public jsmethod_onPause(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 224
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->onPause()V

    :cond_0
    return-void
.end method

.method public jsmethod_onResume(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 219
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->onResume()V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 111
    sput-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    .line 112
    sput-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->isWindow:Z

    .line 113
    invoke-direct/range {p0 .. p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->callBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 114
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v3

    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 115
    invoke-direct/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->stopCamera()V

    const-string v3, "verticalLineColor"

    .line 116
    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-direct {v0, v1, v4}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initIntentParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Intent;)V

    const-string v5, "isNewUI"

    const/4 v6, 0x1

    .line 119
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "lineColor"

    .line 120
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isDrawQRCodeRect"

    .line 121
    invoke-virtual {v1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->autoZoom:Z

    const-string v3, "fnscanner_album"

    .line 122
    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "albumText"

    invoke-virtual {v1, v5, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "fnscanner_flash_on"

    .line 123
    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lightText"

    invoke-virtual {v1, v7, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "fnscanner_flash_off"

    .line 124
    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "closeText"

    invoke-virtual {v1, v9, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "isAlbum"

    .line 125
    invoke-virtual {v1, v10, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "isLight"

    .line 126
    invoke-virtual {v1, v12, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 128
    invoke-virtual {v4, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "font"

    .line 129
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v2, "hintText"

    .line 133
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    .line 135
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const/16 v12, 0x10

    const-string v13, "size"

    .line 137
    invoke-virtual {v2, v13, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "color"

    const-string v12, "#FFFFFF"

    .line 138
    invoke-virtual {v2, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->setHintTextSise(I)V

    .line 140
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v2

    move-object v2, v12

    goto :goto_0

    :cond_2
    move-object/from16 v16, v2

    :goto_0
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->setHintTextColor(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    move/from16 p1, v14

    const/16 v2, 0x10

    .line 147
    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 148
    invoke-virtual {v0, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 154
    :cond_4
    invoke-virtual {v1, v13, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 155
    invoke-virtual {v1, v15, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "hintTextSize"

    move/from16 v5, p1

    .line 161
    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v12

    goto :goto_1

    :cond_5
    move-object/from16 v3, v16

    :goto_1
    const-string v5, "hintTerxtColor"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "albumTextSize"

    .line 163
    invoke-virtual {v4, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v12

    :cond_6
    const-string v3, "albumTextColor"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "lightTextSize"

    .line 165
    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v12, v1

    :goto_2
    const-string v0, "lightTextColor"

    invoke-virtual {v4, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x64

    move-object/from16 v1, p0

    .line 168
    invoke-virtual {v1, v1, v4, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZActivityResult;Landroid/content/Intent;I)V

    return-void
.end method

.method public jsmethod_openScanner(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 10

    .line 73
    sput-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->isWindow:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->callBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 76
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 77
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->stopCamera()V

    const-string v1, "verticalLineColor"

    .line 78
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->context()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-direct {p0, p1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initIntentParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Intent;)V

    const-string v3, "isNewUI"

    .line 81
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "lineColor"

    .line 82
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isDrawQRCodeRect"

    .line 83
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->autoZoom:Z

    const-string v1, "fnscanner_album"

    .line 84
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "albumText"

    invoke-virtual {p1, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "isAlbum"

    .line 85
    invoke-virtual {p1, v4, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "font"

    .line 86
    invoke-virtual {p1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_0

    .line 88
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v7, "hintText"

    .line 90
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_1

    .line 92
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :cond_1
    const/16 v7, 0x10

    const-string v8, "size"

    .line 94
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "color"

    const-string v9, "#FFFFFF"

    .line 95
    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->setHintTextSise(I)V

    .line 97
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->setHintTextColor(Ljava/lang/String;)V

    const-string v8, "isLight"

    .line 99
    invoke-virtual {p1, v8, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 101
    invoke-virtual {v2, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "hintTextSize"

    .line 104
    invoke-virtual {v2, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "hintTerxtColor"

    .line 105
    invoke-virtual {v2, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x64

    .line 107
    invoke-virtual {p0, p0, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->startActivityForResult(Lcom/uzmap/pkg/uzcore/uzmodule/UZActivityResult;Landroid/content/Intent;I)V

    return-void
.end method

.method public jsmethod_openView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 172
    sput-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x1

    .line 173
    sput-boolean v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->isWindow:Z

    .line 174
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    const/4 v0, 0x0

    const-string v1, "isDrawQRCodeRect"

    .line 175
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->autoZoomView:Z

    .line 176
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->callBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->openDIYScanner(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const-string v1, "autorotation"

    .line 178
    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mIsOrientation:Z

    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initOrientation()V

    .line 181
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->startOrientationChangeListener()V

    :cond_0
    return-void
.end method

.method public jsmethod_setFrame(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 186
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 187
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->resetLayout(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public jsmethod_switchLight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mJsParamsUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/JsParamsUtil;

    .line 215
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->switchLight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 439
    invoke-super {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 441
    sget-object p2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->callBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const/16 p2, 0x64

    if-eq p1, p2, :cond_1

    const/16 p2, 0x12c

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 447
    :cond_0
    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->onDecodeParseResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 444
    :cond_1
    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->onOpenParseResult(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 606
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->destroyCamera()V

    .line 607
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removePreView()V

    .line 608
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 610
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceView:Landroid/view/SurfaceView;

    .line 612
    :cond_0
    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->onClean()V

    return-void
.end method

.method public openDIYScanner(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 240
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->stopCamera()V

    .line 241
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->removePreView()V

    .line 242
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initCaptureView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->initParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->insertCaptureView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 245
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getInstance()Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/Capture;->getCaptureView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->onResume()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 577
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    if-nez p1, :cond_0

    .line 578
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mCamera:Landroid/hardware/Camera;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 582
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 594
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->destroyCamera()V

    return-void
.end method
