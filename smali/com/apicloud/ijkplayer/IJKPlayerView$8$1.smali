.class Lcom/apicloud/ijkplayer/IJKPlayerView$8$1;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$8;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView$8;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$8$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1145
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$8$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$8;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$8;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1800(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    return-void
.end method
