.class Lcom/apicloud/ijkplayer/RootView$5$1;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/RootView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/ijkplayer/RootView$5;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/RootView$5;)V
    .locals 0

    .line 739
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$5$1;->this$1:Lcom/apicloud/ijkplayer/RootView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5$1;->this$1:Lcom/apicloud/ijkplayer/RootView$5;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5$1;->this$1:Lcom/apicloud/ijkplayer/RootView$5;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1300(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 746
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5$1;->this$1:Lcom/apicloud/ijkplayer/RootView$5;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1400(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$5$1;->this$1:Lcom/apicloud/ijkplayer/RootView$5;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/RootView$5;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1400(Lcom/apicloud/ijkplayer/RootView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
