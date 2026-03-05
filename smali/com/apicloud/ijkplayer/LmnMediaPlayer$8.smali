.class Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;
.super Ljava/lang/Object;
.source "LmnMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;


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

    .line 272
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$8;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$200(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Lcom/apicloud/ijkplayer/OnPlayStateListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/apicloud/ijkplayer/OnPlayStateListener;->onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V

    :cond_0
    return-void
.end method
