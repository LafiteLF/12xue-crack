.class Lcom/apicloud/audiostreamer/MediaService$1;
.super Landroid/os/Handler;
.source "MediaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/audiostreamer/MediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audiostreamer/MediaService;


# direct methods
.method constructor <init>(Lcom/apicloud/audiostreamer/MediaService;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/apicloud/audiostreamer/MediaService$1;->this$0:Lcom/apicloud/audiostreamer/MediaService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 361
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService$1;->this$0:Lcom/apicloud/audiostreamer/MediaService;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->access$000(Lcom/apicloud/audiostreamer/MediaService;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/MediaService$1;->this$0:Lcom/apicloud/audiostreamer/MediaService;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/MediaService;->access$100(Lcom/apicloud/audiostreamer/MediaService;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 369
    sget v0, Lcom/apicloud/audiostreamer/MediaService;->mDuration:I

    div-int/lit16 v0, v0, 0x3e8

    .line 371
    iget-object v1, p0, Lcom/apicloud/audiostreamer/MediaService$1;->this$0:Lcom/apicloud/audiostreamer/MediaService;

    invoke-static {v1}, Lcom/apicloud/audiostreamer/MediaService;->access$200(Lcom/apicloud/audiostreamer/MediaService;)Lcom/apicloud/audiostreamer/PlayListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/apicloud/audiostreamer/MediaService$1;->this$0:Lcom/apicloud/audiostreamer/MediaService;

    invoke-static {v1}, Lcom/apicloud/audiostreamer/MediaService;->access$200(Lcom/apicloud/audiostreamer/MediaService;)Lcom/apicloud/audiostreamer/PlayListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/apicloud/audiostreamer/PlayListener;->onPercent(II)V

    :cond_1
    const/4 p1, 0x0

    const-wide/16 v0, 0x15e

    .line 374
    invoke-virtual {p0, p1, v0, v1}, Lcom/apicloud/audiostreamer/MediaService$1;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
