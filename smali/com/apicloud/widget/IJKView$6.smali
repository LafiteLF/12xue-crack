.class Lcom/apicloud/widget/IJKView$6;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 843
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BDCloudVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    sget-object v0, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$600(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IJKView$PlayerState;)V

    .line 847
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$1202(Lcom/apicloud/widget/IJKView;Z)Z

    .line 849
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    .line 852
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1600(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 853
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1600(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/widget/IJKView$6;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v1}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_0

    :cond_0
    return v0
.end method
