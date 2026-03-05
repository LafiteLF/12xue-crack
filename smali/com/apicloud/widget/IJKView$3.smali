.class Lcom/apicloud/widget/IJKView$3;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;


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

    .line 735
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 3

    const-string v0, "BDCloudVideoView"

    const-string v1, "onPrepared"

    .line 737
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    sget-object v2, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARED:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-static {v1, v2}, Lcom/apicloud/widget/IJKView;->access$600(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 740
    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    .line 743
    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/apicloud/widget/IJKView;->access$102(Lcom/apicloud/widget/IJKView;I)I

    .line 744
    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v1, p1}, Lcom/apicloud/widget/IJKView;->access$202(Lcom/apicloud/widget/IJKView;I)I

    .line 746
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 747
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;->onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    .line 750
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared: mVideoWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mVideoHeight="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    .line 751
    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mSurfaceWidth="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$1000(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";mSurfaceHeight="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$1100(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 753
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 754
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/apicloud/widget/IRenderView;->setVideoSize(II)V

    .line 755
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$300(Lcom/apicloud/widget/IJKView;)I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$400(Lcom/apicloud/widget/IJKView;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/apicloud/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 756
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/widget/IRenderView;->shouldWaitForResize()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1000(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1100(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 760
    :cond_1
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1200(Lcom/apicloud/widget/IJKView;)Z

    move-result p1

    goto :goto_0

    .line 768
    :cond_2
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$3;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1200(Lcom/apicloud/widget/IJKView;)Z

    :cond_3
    :goto_0
    return-void
.end method
