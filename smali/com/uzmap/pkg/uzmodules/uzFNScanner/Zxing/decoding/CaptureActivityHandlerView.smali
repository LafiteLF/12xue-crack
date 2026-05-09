.class public final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;
.super Landroid/os/Handler;
.source "CaptureActivityHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

.field private final decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

.field private state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 42
    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    .line 56
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    .line 57
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->getViewfinderView()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderResultPointCallback;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 56
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    .line 58
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->start()V

    .line 59
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 62
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->startPreview()V

    .line 63
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->restartPreviewAndDecode()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "fn_auto_focus"

    .line 68
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_restart_preview"

    .line 69
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "fn_decode_succeeded"

    .line 71
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    const-string v3, "fn_decode_failed"

    .line 72
    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    const-string v4, "fn_return_scan_result"

    .line 74
    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    const-string v5, "fn_launch_product_query"

    .line 76
    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v5

    const-string v6, "fn_decode"

    .line 78
    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    const-string v7, "fn_zoom"

    .line 79
    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    .line 82
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v7, :cond_0

    .line 84
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->zoomCamera()V

    .line 85
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 86
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 87
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    if-ne p1, v1, :cond_7

    .line 94
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 96
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 97
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->restartPreviewAndDecode()V

    goto :goto_1

    .line 99
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 100
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 102
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "barcode_bitmap"

    .line 103
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 105
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    .line 108
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 109
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_1

    .line 110
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_6

    .line 111
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->TAG:Ljava/lang/String;

    const-string v0, "Got return scan result message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_7

    .line 113
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->TAG:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 116
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_7
    :goto_1
    return-void
.end method

.method public quitSynchronously()V
    .locals 4

    const-string v0, "fn_quit"

    .line 123
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_decode_succeeded"

    .line 124
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "fn_decode_failed"

    .line 125
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 128
    sget-object v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->DONE:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 129
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->stopPreview()V

    .line 130
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :catch_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->removeMessages(I)V

    .line 140
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->removeMessages(I)V

    return-void
.end method

.method public restartPreviewAndDecode()V
    .locals 4

    const-string v0, "fn_decode"

    .line 144
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_auto_focus"

    .line 145
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    sget-object v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    if-ne v2, v3, :cond_0

    .line 148
    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView$State;

    .line 149
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThreadView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 151
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 152
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->drawViewfinder()V

    :cond_0
    return-void
.end method
