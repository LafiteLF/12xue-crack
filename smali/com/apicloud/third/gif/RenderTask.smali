.class Lcom/apicloud/third/gif/RenderTask;
.super Lcom/apicloud/third/gif/SafeRunnable;


# direct methods
.method constructor <init>(Lcom/apicloud/third/gif/GifDrawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/SafeRunnable;-><init>(Lcom/apicloud/third/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v1, v1, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/apicloud/third/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    iput-wide v5, v4, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {v4}, Lcom/apicloud/third/gif/GifDrawable;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-boolean v4, v4, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-boolean v4, v4, Lcom/apicloud/third/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v4, v4, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v5, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v5, v5, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, p0, v0, v1, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, v4, Lcom/apicloud/third/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v1, v1, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    iget-object v1, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifDrawable;->getCurrentLoop()I

    move-result v1

    iget-object v4, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-wide v4, v4, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v0, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/third/gif/InvalidationHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/third/gif/RenderTask;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_3
    return-void
.end method
