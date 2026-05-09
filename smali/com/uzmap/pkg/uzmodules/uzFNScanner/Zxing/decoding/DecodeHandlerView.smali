.class final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;
.super Landroid/os/Handler;
.source "DecodeHandlerView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;",
            "Ljava/util/Hashtable<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 47
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 48
    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 49
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    return-void
.end method

.method private decode([BII)V
    .locals 9

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    array-length v2, p1

    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-lt v4, p3, :cond_2

    .line 93
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    .line 94
    invoke-virtual {p1, v2, p3, p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->buildLuminanceSource([BII)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v2, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p2, v2}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 97
    :try_start_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2, p2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p2
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 102
    throw p1

    .line 101
    :catch_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {p2}, Lcom/google/zxing/MultiFormatReader;->reset()V

    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_0

    .line 104
    sget-boolean v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->autoZoomView:Z

    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 106
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    .line 107
    aget-object v3, v2, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    .line 108
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    .line 109
    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    sub-float/2addr v4, v6

    .line 110
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v5, v4

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v5, v2

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 111
    div-int/lit8 p3, p3, 0x4

    if-ge v2, p3, :cond_0

    const/16 p3, 0xa

    if-le v2, p3, :cond_0

    const-string p1, "fn_zoom"

    .line 112
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p3, "fn_decode_succeeded"

    .line 121
    invoke-static {p3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p3

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 124
    sget-object v4, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found barcode ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms):\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p2}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 128
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 130
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "barcode_bitmap"

    .line 129
    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 131
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_1
    const-string p1, "fn_decode_failed"

    .line 136
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 138
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-static {p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void

    :cond_2
    move v6, v3

    :goto_3
    if-lt v6, p2, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    mul-int v7, v6, p3

    add-int/2addr v7, p3

    sub-int/2addr v7, v4

    sub-int/2addr v7, v5

    mul-int v8, v4, p2

    add-int/2addr v8, v6

    .line 86
    aget-byte v8, p1, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "fn_decode"

    .line 54
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_quit"

    .line 55
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 57
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 59
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeHandlerView;->decode([BII)V

    goto :goto_0

    .line 60
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v1, :cond_1

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    :cond_1
    :goto_0
    return-void
.end method
