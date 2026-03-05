.class Lcom/apicloud/ijkplayer/RootView$2;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/RootView;->setFootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/RootView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/RootView;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 413
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/RootView;->access$300(Lcom/apicloud/ijkplayer/RootView;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/apicloud/ijkplayer/RootView;->mbIsDragging:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/apicloud/ijkplayer/RootView;->access$202(Lcom/apicloud/ijkplayer/RootView;J)J

    .line 399
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$100(Lcom/apicloud/ijkplayer/RootView;)Lcom/apicloud/ijkplayer/LmnMediaPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/ijkplayer/LmnMediaPlayer;->seekTo(J)V

    .line 403
    :cond_0
    iget-object p1, p0, Lcom/apicloud/ijkplayer/RootView$2;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/apicloud/ijkplayer/RootView;->mbIsDragging:Z

    return-void
.end method
