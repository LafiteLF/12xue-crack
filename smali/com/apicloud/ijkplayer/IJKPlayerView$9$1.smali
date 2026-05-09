.class Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView$9;)V
    .locals 0

    .line 1417
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1421
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1424
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1425
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1430
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$9$1;->this$1:Lcom/apicloud/ijkplayer/IJKPlayerView$9;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayerView$9;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$2300(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
