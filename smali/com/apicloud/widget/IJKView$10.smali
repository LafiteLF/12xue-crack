.class Lcom/apicloud/widget/IJKView$10;
.super Ljava/lang/Object;
.source "IJKView.java"

# interfaces
.implements Lcom/apicloud/widget/IRenderView$IRenderCallback;


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

    .line 957
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V
    .locals 1

    const-string p2, "BDCloudVideoView"

    const-string v0, "mSHCallback onSurfaceChanged"

    .line 960
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-interface {p1}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string p1, "onSurfaceChanged: unmatched render callback\n"

    .line 962
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 966
    :cond_0
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, p3}, Lcom/apicloud/widget/IJKView;->access$1002(Lcom/apicloud/widget/IJKView;I)I

    .line 967
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1, p4}, Lcom/apicloud/widget/IJKView;->access$1102(Lcom/apicloud/widget/IJKView;I)I

    .line 968
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$1200(Lcom/apicloud/widget/IJKView;)Z

    move-result p1

    .line 969
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p2

    invoke-interface {p2}, Lcom/apicloud/widget/IRenderView;->shouldWaitForResize()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$100(Lcom/apicloud/widget/IJKView;)I

    move-result p2

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$200(Lcom/apicloud/widget/IJKView;)I

    move-result p2

    .line 970
    :cond_1
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p2

    return-void
.end method

.method public onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V
    .locals 0

    .line 977
    invoke-interface {p1}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/apicloud/widget/IRenderView;

    move-result-object p2

    iget-object p3, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p3}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object p3

    if-eq p2, p3, :cond_0

    const-string p1, "BDCloudVideoView"

    const-string p2, "onSurfaceCreated: unmatched render callback\n"

    .line 978
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 982
    :cond_0
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2, p1}, Lcom/apicloud/widget/IJKView;->access$2102(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 983
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 984
    iget-object p2, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p2}, Lcom/apicloud/widget/IJKView;->access$900(Lcom/apicloud/widget/IJKView;)Ltv/danmaku/ijk/media/player/IjkMediaPlayer;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/apicloud/widget/IJKView;->access$2200(Lcom/apicloud/widget/IJKView;Ltv/danmaku/ijk/media/player/IMediaPlayer;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 986
    :cond_1
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$2300(Lcom/apicloud/widget/IJKView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceDestroyed(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V
    .locals 1

    .line 991
    invoke-interface {p1}, Lcom/apicloud/widget/IRenderView$ISurfaceHolder;->getRenderView()Lcom/apicloud/widget/IRenderView;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {v0}, Lcom/apicloud/widget/IJKView;->access$500(Lcom/apicloud/widget/IJKView;)Lcom/apicloud/widget/IRenderView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string p1, "BDCloudVideoView"

    const-string v0, "onSurfaceDestroyed: unmatched render callback\n"

    .line 992
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 997
    :cond_0
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/widget/IJKView;->access$2102(Lcom/apicloud/widget/IJKView;Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)Lcom/apicloud/widget/IRenderView$ISurfaceHolder;

    .line 998
    iget-object p1, p0, Lcom/apicloud/widget/IJKView$10;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-static {p1}, Lcom/apicloud/widget/IJKView;->access$2400(Lcom/apicloud/widget/IJKView;)V

    return-void
.end method
