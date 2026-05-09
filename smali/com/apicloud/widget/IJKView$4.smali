.class Lcom/apicloud/widget/IJKView$4;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/IJKView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/widget/IJKView;


# direct methods
.method constructor <init>(Lcom/apicloud/widget/IJKView;)V
    .locals 0

    .line 776
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    const-string p1, "BDCloudVideoView"

    const-string v0, "onCompletion"

    .line 778
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    .line 780
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-static {p1, v1}, Lcom/apicloud/widget/IJKView;->access$600(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 781
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$1202(Lcom/apicloud/widget/IJKView;Z)Z

    .line 782
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1300(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1300(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$4;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
