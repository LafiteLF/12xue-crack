.class final Lcom/apicloud/third/gif/GifRenderingExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/third/gif/GifRenderingExecutor$InstanceHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/third/gif/GifRenderingExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifRenderingExecutor;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/apicloud/third/gif/GifRenderingExecutor;
    .locals 1

    invoke-static {}, Lcom/apicloud/third/gif/GifRenderingExecutor$InstanceHolder;->access$0()Lcom/apicloud/third/gif/GifRenderingExecutor;

    move-result-object v0

    return-object v0
.end method
