.class Lcom/apicloud/widget/IJKView$7;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;


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

    .line 863
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$7;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$7;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0, p2}, Lcom/apicloud/widget/IJKView;->access$1702(Lcom/apicloud/widget/IJKView;I)I

    .line 867
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$7;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$7;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1800(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V

    :cond_0
    return-void
.end method
