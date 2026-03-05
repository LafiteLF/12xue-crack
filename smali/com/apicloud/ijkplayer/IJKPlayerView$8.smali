.class Lcom/apicloud/ijkplayer/IJKPlayerView$8;
.super Ljava/util/TimerTask;
.source "IJKPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->startPositionTimer()V
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

    .line 1138
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$8;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1142
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$8;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1900(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apicloud/ijkplayer/IJKPlayerView$8$1;

    invoke-direct {v1, p0}, Lcom/apicloud/ijkplayer/IJKPlayerView$8$1;-><init>(Lcom/apicloud/ijkplayer/IJKPlayerView$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
