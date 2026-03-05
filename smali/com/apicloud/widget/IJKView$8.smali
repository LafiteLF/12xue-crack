.class Lcom/apicloud/widget/IJKView$8;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;


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

    .line 873
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$8;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    const-string v0, "BDCloudVideoView"

    const-string v1, "onSeekComplete"

    .line 877
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$8;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    .line 879
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$8;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$8;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
