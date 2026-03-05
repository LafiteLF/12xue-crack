.class Lcom/apicloud/ijkplayer/IJKPlayerView$7;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->changeState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

.field final synthetic val$state:Lcom/apicloud/widget/IJKView$PlayerState;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Lcom/apicloud/widget/IJKView$PlayerState;)V
    .locals 0

    .line 1072
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iput-object p2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1076
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYING:Lcom/apicloud/widget/IJKView$PlayerState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1000(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    .line 1078
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1080
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPauseImgPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1081
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v1, "statePlaying"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1400(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PAUSED:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1500(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    .line 1084
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1085
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1086
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v1, "statePaused"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1400(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_IDLE:Lcom/apicloud/widget/IJKView$PlayerState;

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARING:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1099
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_4

    .line 1100
    :cond_3
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PREPARED:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_5

    .line 1101
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1102
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1103
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1104
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1600(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V

    .line 1105
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1106
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1107
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_4

    .line 1109
    :cond_5
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_PLAYBACK_COMPLETED:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_9

    .line 1110
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1500(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    .line 1111
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1112
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1113
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1114
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1115
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v1, "stateComplete"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1400(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    goto :goto_4

    .line 1088
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1500(Lcom/apicloud/ijkplayer/IJKPlayerView;)V

    .line 1089
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1200(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1090
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    iget-object v1, v0, Lcom/apicloud/ijkplayer/IJKPlayerView;->mPlayImgPath:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1300(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;Z)V

    .line 1091
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1100(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1092
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->getCurrentPosition()I

    move-result v1

    :goto_2
    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$900(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V

    .line 1093
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$700(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/IJKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/widget/IJKView;->getDuration()I

    move-result v2

    :goto_3
    invoke-static {v0, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1600(Lcom/apicloud/ijkplayer/IJKPlayerView;I)V

    .line 1094
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->val$state:Lcom/apicloud/widget/IJKView$PlayerState;

    sget-object v1, Lcom/apicloud/widget/IJKView$PlayerState;->STATE_ERROR:Lcom/apicloud/widget/IJKView$PlayerState;

    if-ne v0, v1, :cond_9

    .line 1095
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$7;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    const-string v1, "stateError"

    invoke-static {v0, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$1400(Lcom/apicloud/ijkplayer/IJKPlayerView;Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
