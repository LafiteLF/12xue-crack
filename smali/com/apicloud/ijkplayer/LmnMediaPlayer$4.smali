.class Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;
.super Ljava/lang/Object;
.source "LmnMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;


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

    .line 234
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$4;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/apicloud/ijkplayer/OnPlayStateListener;->onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
