.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;
.super Landroid/os/Handler;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "WheelView"

    const-string v1, " onFling "

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 204
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 206
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;I)I

    if-eqz v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 214
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    .line 215
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 219
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_3

    .line 220
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->access$500(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->finishScrolling()V

    :goto_0
    return-void
.end method
