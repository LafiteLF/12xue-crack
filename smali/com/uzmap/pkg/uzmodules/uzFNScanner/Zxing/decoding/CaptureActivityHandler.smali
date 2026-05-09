.class public final Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

.field private final decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

.field private state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;",
            "Ljava/util/Vector<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    .line 57
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderResultPointCallback;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/view/ViewfinderResultPointCallback;-><init>()V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    .line 58
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->start()V

    .line 59
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 62
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->startPreview()V

    .line 63
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 4

    const-string v0, "fn_decode"

    .line 150
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_auto_focus"

    .line 151
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 153
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    sget-object v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    if-ne v2, v3, :cond_0

    .line 154
    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 155
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 156
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "fn_auto_focus"

    .line 70
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_restart_preview"

    .line 71
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "fn_decode_succeeded"

    .line 73
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    const-string v3, "fn_decode_failed"

    .line 74
    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v3

    const-string v4, "fn_return_scan_result"

    .line 76
    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v4

    const-string v5, "fn_launch_product_query"

    .line 78
    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v5

    const-string v6, "fn_decode"

    .line 80
    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v6

    const-string v7, "fn_zoom"

    .line 81
    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v7

    .line 84
    iget v8, p1, Landroid/os/Message;->what:I

    if-ne v8, v7, :cond_0

    .line 86
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->zoomCamera()V

    .line 87
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 88
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 89
    :cond_0
    iget v7, p1, Landroid/os/Message;->what:I

    if-ne v7, v0, :cond_1

    .line 95
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    sget-object v1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    if-ne p1, v1, :cond_7

    .line 96
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto/16 :goto_1

    .line 98
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_2

    .line 99
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v0, "Got restart preview message"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto/16 :goto_1

    .line 101
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_4

    .line 102
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->SUCCESS:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const-string v1, "barcode_bitmap"

    .line 106
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/zxing/Result;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 108
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_5

    .line 111
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->PREVIEW:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 112
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0, v6}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_1

    .line 113
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v4, :cond_6

    .line 114
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    const/4 v1, -0x1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 116
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V

    goto :goto_1

    .line 117
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_7

    .line 118
    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x80000

    .line 121
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->activity:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public quitSynchronously()V
    .locals 4

    const-string v0, "fn_quit"

    .line 129
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "fn_decode_succeeded"

    .line 130
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "fn_decode_failed"

    .line 131
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 134
    sget-object v3, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;->DONE:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    iput-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->state:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler$State;

    .line 135
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->get()Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/camera/CameraManager;->stopPreview()V

    .line 136
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->decodeThread:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    .line 146
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandler;->removeMessages(I)V

    return-void
.end method
