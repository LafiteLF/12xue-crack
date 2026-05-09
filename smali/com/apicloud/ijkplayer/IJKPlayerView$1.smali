.class Lcom/apicloud/ijkplayer/IJKPlayerView$1;
.super Landroid/view/OrientationEventListener;
.source "IJKPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastTime:J

.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;Landroid/content/Context;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 180
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    iget-wide v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    return-void

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/Utils/PlayerUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/16 v3, 0x154

    if-lt p1, v3, :cond_4

    .line 186
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->onOrientationPortrait(Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const/16 v3, 0x104

    if-lt p1, v3, :cond_5

    const/16 v3, 0x118

    if-gt p1, v3, :cond_5

    .line 188
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->onOrientationLandscape(Landroid/app/Activity;)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x46

    if-lt p1, v3, :cond_6

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_6

    .line 190
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1, v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->onOrientationReverseLandscape(Landroid/app/Activity;)V

    .line 192
    :cond_6
    :goto_0
    iput-wide v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$1;->mLastTime:J

    return-void
.end method
