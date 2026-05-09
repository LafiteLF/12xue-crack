.class Lcom/apicloud/widget/IJKView$1;
.super Landroid/os/Handler;
.source "IJKView.java"


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
.method constructor <init>(Lcom/apicloud/widget/IJKView;Landroid/os/Looper;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/apicloud/widget/IJKView$1;->this$0:Lcom/apicloud/widget/IJKView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 197
    iget-object v0, p0, Lcom/apicloud/widget/IJKView$1;->this$0:Lcom/apicloud/widget/IJKView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/apicloud/widget/IJKView;->access$000(Lcom/apicloud/widget/IJKView;Z)V

    :cond_1
    return-void
.end method
