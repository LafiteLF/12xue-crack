.class Lcom/apicloud/ijkplayer/RootView$3;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Lcom/apicloud/ijkplayer/OnPlayStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/RootView;
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

    .line 464
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 489
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-object v0, p1, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/apicloud/ijkplayer/RootView;->access$600(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V

    .line 490
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string v0, "stateComplete"

    invoke-static {p1, v0}, Lcom/apicloud/ijkplayer/RootView;->access$900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    .line 500
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string p2, "stateError"

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$700(Lcom/apicloud/ijkplayer/RootView;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/apicloud/ijkplayer/RootView;->access$800(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V

    return p3
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPlayStare(I)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0, p1}, Lcom/apicloud/ijkplayer/RootView;->access$400(Lcom/apicloud/ijkplayer/RootView;I)V

    return-void
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    .line 474
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$500(Lcom/apicloud/ijkplayer/RootView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->start()V

    return-void

    .line 478
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-boolean p1, p1, Lcom/apicloud/ijkplayer/RootView;->autoPlay:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 479
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->start()V

    .line 480
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-object v1, p1, Lcom/apicloud/ijkplayer/RootView;->mPauseImgPath:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/apicloud/ijkplayer/RootView;->access$600(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V

    goto :goto_0

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-object v1, p1, Lcom/apicloud/ijkplayer/RootView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/apicloud/ijkplayer/RootView;->access$600(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V

    .line 484
    :goto_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/RootView;->access$700(Lcom/apicloud/ijkplayer/RootView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/ijkplayer/RootView$3;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-boolean v1, v1, Lcom/apicloud/ijkplayer/RootView;->autoPlay:Z

    invoke-static {p1, v0, v1}, Lcom/apicloud/ijkplayer/RootView;->access$800(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onTimedText(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ltv/danmaku/ijk/media/player/IjkTimedText;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    return-void
.end method
