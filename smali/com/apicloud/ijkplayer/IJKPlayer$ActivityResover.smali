.class Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;
.super Landroid/content/BroadcastReceiver;
.source "IJKPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/IJKPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityResover"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayer;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayer;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.apicloud.ijkplayer.pause"

    .line 578
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 580
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 581
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->pause()V

    .line 582
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$402(Lcom/apicloud/ijkplayer/IJKPlayer;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "com.apicloud.ijkplayer.resume"

    .line 584
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 585
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$400(Lcom/apicloud/ijkplayer/IJKPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 586
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->play()V

    .line 587
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$ActivityResover;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$402(Lcom/apicloud/ijkplayer/IJKPlayer;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
