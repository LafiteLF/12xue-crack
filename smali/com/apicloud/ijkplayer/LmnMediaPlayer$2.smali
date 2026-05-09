.class Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;
.super Ljava/lang/Object;
.source "LmnMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/LmnMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$2;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/ijkplayer/OnPlayStateListener;->onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V

    :cond_0
    return-void
.end method
