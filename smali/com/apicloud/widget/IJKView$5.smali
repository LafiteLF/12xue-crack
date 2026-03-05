.class Lcom/apicloud/widget/IJKView$5;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/IJKView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/widget/IJKView;


# direct methods
.method constructor <init>(Lcom/apicloud/widget/IJKView;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 2

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo: arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BDCloudVideoView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1400(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$1400(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;->onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x3

    const/4 v0, 0x1

    if-eq p2, p1, :cond_5

    const/16 p1, 0x385

    if-eq p2, p1, :cond_4

    const/16 p1, 0x386

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2711

    if-eq p2, p1, :cond_2

    const/16 p1, 0x2712

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "MEDIA_INFO_METADATA_UPDATE:"

    .line 820
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    const-string p1, "MEDIA_INFO_NOT_SEEKABLE:"

    .line 817
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "MEDIA_INFO_BAD_INTERLEAVING:"

    .line 814
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 811
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MEDIA_INFO_NETWORK_BANDWIDTH: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string p1, "MEDIA_INFO_BUFFERING_END:"

    .line 807
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    goto :goto_0

    :pswitch_5
    const-string p1, "MEDIA_INFO_BUFFERING_START:"

    .line 803
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$700(Lcom/apicloud/widget/IJKView;Z)V

    goto :goto_0

    :pswitch_6
    const-string p1, "MEDIA_INFO_VIDEO_TRACK_LAGGING:"

    .line 797
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "MEDIA_INFO_AUDIO_RENDERING_START:"

    .line 835
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    :cond_2
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, p3}, Lcom/apicloud/widget/IJKView;->access$1502(Lcom/apicloud/widget/IJKView;I)I

    .line 830
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MEDIA_INFO_VIDEO_ROTATION_CHANGED: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 832
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$5;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/apicloud/widget/IRenderView;->setVideoRotation(I)V

    goto :goto_0

    :cond_3
    const-string p1, "MEDIA_INFO_SUBTITLE_TIMED_OUT:"

    .line 826
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "MEDIA_INFO_UNSUPPORTED_SUBTITLE:"

    .line 823
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "MEDIA_INFO_VIDEO_RENDERING_START:"

    .line 800
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2bc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x320
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
