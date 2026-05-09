.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;
.super Ljava/lang/Object;
.source "UzFNScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->decodeImg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->val$path:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/ScannerDecoder;->decodeBar(Ljava/lang/String;)Lcom/google/zxing/Result;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$1(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->playBeepSoundAndVibrate()V

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;ZLjava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$2(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
