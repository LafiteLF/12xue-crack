.class Lcom/apicloud/ijkplayer/IJKPlayerView$5;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->setHeadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/widget/ImageView;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 658
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    .line 659
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 662
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickOneSelected"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickOne"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    .line 668
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickTwoSelected"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickTwo"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_4

    .line 674
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickThreeSelected"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_4
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v2, "clickThree"

    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$600(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    .line 679
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$5;->val$imageView:Landroid/widget/ImageView;

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method
