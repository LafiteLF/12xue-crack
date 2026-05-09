.class Lcom/apicloud/ijkplayer/RootView$5;
.super Ljava/util/TimerTask;
.source "RootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/RootView;->hideOuterAfterFiveSeconds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/RootView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1200(Lcom/apicloud/ijkplayer/RootView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1200(Lcom/apicloud/ijkplayer/RootView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apicloud/ijkplayer/RootView$5$1;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/RootView$5$1;-><init>(Lcom/apicloud/ijkplayer/RootView$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
