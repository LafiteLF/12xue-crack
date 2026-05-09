.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;
.super Landroid/widget/RelativeLayout;
.source "CaptureView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final RESTART_PREVIEW:I = 0x3e8


# instance fields
.field private handler:Landroid/os/Handler;

.field private interval:I

.field private mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

.field private mHasSurface:Z

.field private mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

.field private mIsSaveToAlbum:Z

.field private mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mSaveH:I

.field private mSavePath:Ljava/lang/String;

.field private mSaveW:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUzFNScanner:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

.field private mViewfinderView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

.field private oritation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x5a

    .line 54
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->oritation:I

    const/16 v0, 0xbb8

    .line 56
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->interval:I

    .line 238
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->handler:Landroid/os/Handler;

    .line 61
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->oritation:I

    .line 62
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mUzFNScanner:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    .line 63
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string p1, "interval"

    const/4 p2, 0x3

    .line 65
    invoke-virtual {p3, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->interval:I

    .line 66
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->init()V

    .line 67
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->initView()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    return-object p0
.end method

.method private callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "imgPath"

    .line 252
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    const-string p2, "albumPath"

    .line 254
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "content"

    .line 255
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventType"

    const-string p2, "success"

    .line 256
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    .line 260
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->handler:Landroid/os/Handler;

    const/16 p2, 0x3e8

    iget p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->interval:I

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 262
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->init(Landroid/content/Context;)V

    .line 81
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHasSurface:Z

    .line 83
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    .line 84
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$2;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V
    .locals 4

    const-string v0, "rect"

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 137
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 139
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;IIZ)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "w"

    .line 142
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "h"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;IIZ)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;IIZ)V

    .line 149
    :goto_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->oritation:I

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->setScreemOrientation(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    if-nez p1, :cond_2

    .line 160
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    :cond_2
    return-void

    .line 155
    :catch_0
    invoke-virtual {p2, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->checkOpenCameraCallback(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V

    return-void

    :catch_1
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method private initSurface()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 111
    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHasSurface:Z

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mUzFNScanner:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->initCamera(Landroid/view/SurfaceHolder;Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x3

    .line 115
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :goto_0
    return-void
.end method

.method private initView()V
    .locals 2

    .line 94
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 100
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public dealResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ISO-8859-1"

    .line 224
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v0, "GB2312"

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 229
    invoke-direct {p0, v1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public drawViewfinder()V
    .locals 0

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    return-object v0
.end method

.method public getViewfinderView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mViewfinderView:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 198
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->playBeepSoundAndVibrate()V

    .line 201
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSavePath:Ljava/lang/String;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSaveW:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSaveH:I

    iget-boolean v4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mIsSaveToAlbum:Z

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->scanResult2img(Ljava/lang/String;Ljava/lang/String;IIZZLandroid/content/Context;)Ljava/lang/String;

    .line 203
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSavePath:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 204
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSavePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 206
    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScanUtil;->ALBUM_IMG_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->dealResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public initParams(Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSavePath:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSaveW:I

    .line 74
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mSaveH:I

    .line 75
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p4}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    .line 76
    iput-boolean p5, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mIsSaveToAlbum:Z

    return-void
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 211
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

    .line 214
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

.method public onDestroy()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->handler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mInactivityTimer:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/InactivityTimer;->shutdown()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->quitSynchronously()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHandler:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    .line 124
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->closeDriver()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->initSurface()V

    .line 105
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mBeepUtil:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->initBeep()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHasSurface:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 173
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHasSurface:Z

    .line 174
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mUzFNScanner:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->initCamera(Landroid/view/SurfaceHolder;Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 181
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->mHasSurface:Z

    return-void
.end method
