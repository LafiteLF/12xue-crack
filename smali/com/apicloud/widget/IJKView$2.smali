.class Lcom/apicloud/widget/IJKView$2;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 716
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 2

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoSizeChanged width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";sarNum="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";sarDen="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BDCloudVideoView"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/apicloud/widget/IJKView;->access$102(Lcom/apicloud/widget/IJKView;I)I

    .line 721
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    move-result p3

    invoke-static {p2, p3}, Lcom/apicloud/widget/IJKView;->access$202(Lcom/apicloud/widget/IJKView;I)I

    .line 722
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    move-result p3

    invoke-static {p2, p3}, Lcom/apicloud/widget/IJKView;->access$302(Lcom/apicloud/widget/IJKView;I)I

    .line 723
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    move-result p1

    invoke-static {p2, p1}, Lcom/apicloud/widget/IJKView;->access$402(Lcom/apicloud/widget/IJKView;I)I

    .line 724
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 726
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result p2

    iget-object p3, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p3}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/apicloud/widget/IRenderView;->setVideoSize(II)V

    .line 727
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$300(Lcom/apicloud/widget/IJKView;)I

    move-result p2

    iget-object p3, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p3}, Lcom/apicloud/widget/IJKView;->access$400(Lcom/apicloud/widget/IJKView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lcom/apicloud/widget/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 730
    :cond_0
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$2;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-virtual {p1}, Lcom/apicloud/widget/IJKView;->requestLayout()V

    :cond_1
    return-void
.end method
