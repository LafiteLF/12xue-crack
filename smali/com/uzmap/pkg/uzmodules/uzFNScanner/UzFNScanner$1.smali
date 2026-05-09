.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;
.super Ljava/lang/Object;
.source "UzFNScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$0(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScannerDecoder;->decodeBar(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 481
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$1(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->playBeepSoundAndVibrate()V

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;ZLjava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
