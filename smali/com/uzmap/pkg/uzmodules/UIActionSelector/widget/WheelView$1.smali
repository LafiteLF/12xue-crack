.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 168
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;Z)Z

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)I

    .line 172
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)V

    .line 155
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->getHeight()I

    move-result p1

    .line 156
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)I

    .line 158
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->stopScrolling()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$202(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;I)I

    .line 161
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$300(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelScroller;->stopScrolling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->access$002(Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;Z)Z

    .line 149
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
