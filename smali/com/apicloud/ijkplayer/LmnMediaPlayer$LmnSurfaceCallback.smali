.class Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;
.super Ljava/lang/Object;
.source "LmnMediaPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/LmnMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LmnSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;Lcom/apicloud/ijkplayer/LmnMediaPlayer$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;-><init>(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$100(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->createPlayer()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/apicloud/ijkplayer/LmnMediaPlayer$LmnSurfaceCallback;->this$0:Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->access$100(Lcom/apicloud/ijkplayer/LmnMediaPlayer;)Ltv/danmaku/ijk/media/player/IMediaPlayer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void
.end method
