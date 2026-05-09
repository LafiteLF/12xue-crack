.class Lcom/apicloud/ijkplayer/IJKPlayerView$6;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->setFootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 875
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 897
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$900(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 892
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/apicloud/ijkplayer/IJKPlayerView;->mbIsDragging:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 880
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$802(Lcom/apicloud/ijkplayer/IJKPlayerView;J)J

    .line 883
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/IJKView;->seekTo(I)V

    .line 887
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$6;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/apicloud/ijkplayer/IJKPlayerView;->mbIsDragging:Z

    return-void
.end method
