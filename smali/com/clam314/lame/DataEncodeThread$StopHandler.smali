.class Lcom/clam314/lame/DataEncodeThread$StopHandler;
.super Landroid/os/Handler;
.source "DataEncodeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clam314/lame/DataEncodeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StopHandler"
.end annotation


# instance fields
.field encodeThread:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/clam314/lame/DataEncodeThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/clam314/lame/DataEncodeThread;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/clam314/lame/DataEncodeThread$StopHandler;->encodeThread:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Lcom/clam314/lame/DataEncodeThread$StopHandler;->encodeThread:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clam314/lame/DataEncodeThread;

    .line 58
    :goto_0
    invoke-static {v0}, Lcom/clam314/lame/DataEncodeThread;->access$000(Lcom/clam314/lame/DataEncodeThread;)I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1}, Lcom/clam314/lame/DataEncodeThread$StopHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 61
    invoke-static {v0}, Lcom/clam314/lame/DataEncodeThread;->access$100(Lcom/clam314/lame/DataEncodeThread;)V

    .line 62
    invoke-virtual {p0}, Lcom/clam314/lame/DataEncodeThread$StopHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 64
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
