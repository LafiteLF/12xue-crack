.class Lcom/apicloud/ijkplayer/RootView$4;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/RootView;->changeState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/RootView;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/RootView;I)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iput p2, p0, Lcom/apicloud/ijkplayer/RootView$4;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 540
    iget v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->val$state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1100(Lcom/apicloud/ijkplayer/RootView;)V

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1100(Lcom/apicloud/ijkplayer/RootView;)V

    .line 547
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string v1, "statePaused"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/RootView;->access$900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/RootView;->access$1000(Lcom/apicloud/ijkplayer/RootView;)V

    .line 543
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$4;->this$0:Lcom/apicloud/ijkplayer/RootView;

    const-string v1, "statePlaying"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/RootView;->access$900(Lcom/apicloud/ijkplayer/RootView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
