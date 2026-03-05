.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;
.super Landroid/os/Handler;
.source "CaptureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    .line 238
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 240
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 241
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;->access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureView;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/decoding/CaptureActivityHandlerView;->restartPreviewAndDecode()V

    :cond_0
    return-void
.end method
