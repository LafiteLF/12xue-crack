.class public final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x168

.field private static final MAX_FRAME_WIDTH:I = 0x1e0

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

.field private framingLandRect:Landroid/graphics/Rect;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private mContext:Landroid/content/Context;

.field private mPortraitFlag:Z

.field private parameter:Landroid/hardware/Camera$Parameters;

.field private final previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 61
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x2710

    .line 66
    :goto_0
    sput v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->SDK_INT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->mPortraitFlag:Z

    .line 115
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    .line 116
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->mContext:Landroid/content/Context;

    .line 127
    sget-object p1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x3

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 131
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;Z)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    .line 132
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

    .line 134
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;
    .locals 1

    .line 109
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->cameraManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->cameraManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    return-void
.end method

.method private updateFlag(Z)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "reset_orientation"
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->mPortraitFlag:Z

    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;
    .locals 12

    .line 456
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v1

    .line 458
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    const/16 v3, 0x11

    if-eq v1, v3, :cond_1

    const-string v3, "yuv420p"

    .line 474
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;

    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 476
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move v6, p2

    move v7, p3

    .line 475
    invoke-direct/range {v4 .. v11}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v1

    .line 479
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported picture format: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 468
    :cond_1
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v0, v8

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public closeDriver()V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/FlashlightManager;->disableFlashlight()V

    .line 188
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 270
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0xa

    .line 276
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0xa

    if-lt v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 284
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    .line 285
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 288
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v2, v1

    add-int/2addr v1, v0

    invoke-direct {v3, v2, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 309
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .line 392
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    .line 393
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 394
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 401
    sget-boolean v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->isWindow:Z

    if-eqz v3, :cond_0

    .line 402
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 403
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 404
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 405
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 407
    :cond_0
    iget-boolean v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->mPortraitFlag:Z

    if-eqz v3, :cond_1

    .line 408
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 409
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 410
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 411
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 413
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 414
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 415
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 416
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v1

    iget v1, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 420
    :goto_0
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLandFramingRect()Landroid/graphics/Rect;
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingLandRect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 338
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 344
    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 350
    iget v3, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 351
    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 352
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-direct {v4, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingLandRect:Landroid/graphics/Rect;

    .line 353
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calculated framing rect: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingLandRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->framingLandRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public offLight()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    .line 511
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public openDriver(Landroid/view/SurfaceHolder;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 154
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 160
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->initialized:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 161
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->initialized:Z

    .line 162
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;IIZ)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->configManager:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 173
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/FlashlightManager;->enableFlashlight()V

    goto :goto_0

    .line 156
    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public openLight()V
    .locals 2

    .line 501
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    .line 503
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->parameter:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 252
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 254
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 232
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScreemOrientation(I)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    const-string v0, "stopcall"

    const-string v1, "stop call back !!!"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->useOneShotPreviewCallback:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 213
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 214
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->autoFocusCallback:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 215
    iput-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->previewing:Z

    :cond_1
    return-void
.end method

.method public zoomCamera()V
    .locals 3

    .line 483
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 484
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 488
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 492
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    if-le v1, v2, :cond_2

    return-void

    .line 495
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 496
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    return-void
.end method
