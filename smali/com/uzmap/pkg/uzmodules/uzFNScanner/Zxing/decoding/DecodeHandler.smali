.class final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

.field private mPortraitFlag:Z

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->mPortraitFlag:Z

    .line 54
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 55
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 56
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    .line 58
    invoke-static {}, Lorg/simple/eventbus/EventBus;->getDefault()Lorg/simple/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/simple/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method private decode([BII)V
    .locals 10

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 110
    sget-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->isWindow:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 111
    array-length v2, p1

    new-array v2, v2, [B

    move v5, v3

    :goto_0
    if-lt v5, p3, :cond_0

    :goto_1
    move-object p1, v2

    move v9, p3

    move p3, p2

    move p2, v9

    goto :goto_5

    :cond_0
    move v6, v3

    :goto_2
    if-lt v6, p2, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    mul-int v7, v6, p3

    add-int/2addr v7, p3

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    mul-int v8, v5, p2

    add-int/2addr v8, v6

    .line 114
    aget-byte v8, p1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 121
    :cond_2
    sget-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->mOrientationFlag:Z

    if-eqz v2, :cond_5

    .line 122
    array-length v2, p1

    new-array v2, v2, [B

    move v5, v3

    :goto_3
    if-lt v5, p3, :cond_3

    goto :goto_1

    :cond_3
    move v6, v3

    :goto_4
    if-lt v6, p2, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    mul-int v7, v6, p3

    add-int/2addr v7, p3

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    mul-int v8, v5, p2

    add-int/2addr v8, v6

    .line 125
    aget-byte v8, p1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 134
    :cond_5
    :goto_5
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 135
    new-instance p3, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p3, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, p3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p3
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_6

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 143
    throw p1

    .line 141
    :catch_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p3}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p3, 0x0

    :goto_6
    if-eqz p3, :cond_6

    .line 145
    sget-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->autoZoom:Z

    if-eqz v2, :cond_6

    .line 146
    invoke-virtual {p3}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 147
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    .line 148
    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 149
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 150
    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v5, v6

    .line 151
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v4, v2

    float-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 152
    div-int/lit8 p2, p2, 0x4

    if-ge v2, p2, :cond_6

    const/16 p2, 0xa

    if-le v2, p2, :cond_6

    const-string p1, "fn_zoom"

    .line 153
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 154
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_6
    if-eqz p3, :cond_7

    const-string p2, "fn_decode_succeeded"

    .line 162
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p2

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 165
    sget-object v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found barcode ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p3}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 169
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 171
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    .line 170
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 172
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_7

    :cond_7
    const-string p1, "fn_decode_failed"

    .line 177
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 179
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_7
    return-void
.end method

.method private updateFlag(Z)V
    .locals 0
    .annotation runtime Lorg/simple/eventbus/Subscriber;
        tag = "reset_orientation"
    .end annotation

    .line 63
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->mPortraitFlag:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "fn_decode"

    .line 68
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_quit"

    .line 69
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 71
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 73
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 74
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 75
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 76
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_1

    .line 77
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
