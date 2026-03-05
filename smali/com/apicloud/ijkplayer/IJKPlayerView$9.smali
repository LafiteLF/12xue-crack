.class Lcom/apicloud/ijkplayer/IJKPlayerView$9;
.super Ljava/util/TimerTask;
.source "IJKPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->hideOuterAfterFiveSeconds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 1409
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1900(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1900(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
