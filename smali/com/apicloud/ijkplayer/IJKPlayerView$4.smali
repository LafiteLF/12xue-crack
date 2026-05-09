.class Lcom/apicloud/ijkplayer/IJKPlayerView$4;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->setSeekBar()V
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

    .line 401
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$300(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 408
    :cond_0
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$300(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 409
    iget-object v2, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v2}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$400(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/PopSeekBarView;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/apicloud/widget/PopSeekBarView;->setPersent(I)V

    .line 411
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$000(Lcom/apicloud/ijkplayer/IJKPlayerView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_1
    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    move v0, v1

    .line 416
    :cond_2
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$4;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$500(Lcom/apicloud/ijkplayer/IJKPlayerView;)Lcom/apicloud/widget/PopSeekBarView;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/apicloud/widget/PopSeekBarView;->setPersent(I)V

    return-void
.end method
