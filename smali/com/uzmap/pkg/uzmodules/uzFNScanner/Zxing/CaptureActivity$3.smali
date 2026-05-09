.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;
.super Landroid/view/OrientationEventListener;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    .line 582
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .line 584
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$7(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)Landroid/view/OrientationEventListener;

    move-result-object p1

    monitor-enter p1

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->getDisplayRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$8(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 588
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$9(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$10(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xb4

    if-ne v0, v3, :cond_3

    .line 592
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$8(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$9(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$10(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    const/4 v2, 0x2

    if-ne v0, v1, :cond_5

    .line 597
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$8(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 598
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$9(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$10(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_7

    .line 602
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$8(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)I

    move-result v0

    if-nez v0, :cond_6

    .line 603
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$9(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;)V

    .line 605
    :cond_6
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;->access$10(Lcom/uzmap/pkg/uzmodules/uzFNScanner/Zxing/CaptureActivity;I)V

    .line 584
    :cond_7
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
