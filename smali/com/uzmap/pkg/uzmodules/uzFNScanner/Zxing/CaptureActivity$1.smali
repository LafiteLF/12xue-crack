.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScannerDecoder;->decodeBar(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    const-string v1, "fail"

    const-string v2, "\u975e\u6cd5\u56fe\u7247"

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$1(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->finish()V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Lcom/google/zxing/Result;)V

    :goto_0
    return-void
.end method
