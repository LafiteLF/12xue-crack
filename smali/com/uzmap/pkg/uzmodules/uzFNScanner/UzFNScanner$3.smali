.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;
.super Landroid/view/OrientationEventListener;
.source "UzFNScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->startOrientationChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    .line 660
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2

    .line 662
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$3(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)Landroid/view/OrientationEventListener;

    move-result-object p1

    monitor-enter p1

    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->getDisplayRotation()I

    move-result v0

    if-nez v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0xb4

    if-ne v0, v1, :cond_3

    .line 670
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 671
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x5a

    if-ne v0, v1, :cond_5

    .line 675
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    .line 678
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;I)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_7

    .line 680
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$4(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 681
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$5(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;)V

    .line 683
    :cond_6
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;->access$6(Lcom/uzmap/pkg/uzmodules/uzFNScanner/UzFNScanner;I)V

    .line 662
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
