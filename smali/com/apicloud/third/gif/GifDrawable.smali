.class public Lcom/apicloud/third/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field final mBuffer:Landroid/graphics/Bitmap;

.field private final mDstRect:Landroid/graphics/Rect;

.field final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

.field final mIsRenderingTriggeredOnDraw:Z

.field volatile mIsRunning:Z

.field final mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/apicloud/third/gif/AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

.field mNextFrameRenderTime:J

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mRenderTask:Lcom/apicloud/third/gif/RenderTask;

.field mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mScaledHeight:I

.field private mScaledWidth:I

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTransform:Lcom/apicloud/third/gif/transforms/Transform;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/apicloud/third/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p2, v0}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-static {p1, p2}, Lcom/apicloud/third/gif/GifViewUtils;->getDensityScale(Landroid/content/res/Resources;I)F

    move-result p1

    iget-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledHeight:I

    iget-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledWidth:I

    return-void
.end method

.method constructor <init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/apicloud/third/gif/RenderTask;

    invoke-direct {v1, p0}, Lcom/apicloud/third/gif/RenderTask;-><init>(Lcom/apicloud/third/gif/GifDrawable;)V

    iput-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTask:Lcom/apicloud/third/gif/RenderTask;

    iput-boolean p4, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/apicloud/third/gif/GifRenderingExecutor;->getInstance()Lcom/apicloud/third/gif/GifRenderingExecutor;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    monitor-enter v1

    :try_start_0
    iget-object v2, p2, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v3}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v2, p2, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v3}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v3

    if-lt v2, v3, :cond_1

    invoke-direct {p2}, Lcom/apicloud/third/gif/GifDrawable;->shutdown()V

    iget-object p2, p2, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    move-object p3, p2

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-nez p3, :cond_3

    iget-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p3}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    iput-object p3, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    :goto_2
    iget-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->isOpaque()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p2}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result p2

    iget-object p3, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p3}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result p3

    invoke-direct {p1, p4, p4, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    new-instance p1, Lcom/apicloud/third/gif/InvalidationHandler;

    invoke-direct {p1, p0}, Lcom/apicloud/third/gif/InvalidationHandler;-><init>(Lcom/apicloud/third/gif/GifDrawable;)V

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTask:Lcom/apicloud/third/gif/RenderTask;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/RenderTask;->doWork()V

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledWidth:I

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledHeight:I

    return-void
.end method

.method protected constructor <init>(Lcom/apicloud/third/gif/InputSource;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLcom/apicloud/third/gif/GifOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p5}, Lcom/apicloud/third/gif/InputSource;->createHandleWith(Lcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Ljava/io/FileDescriptor;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>([B)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p1, v1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-void
.end method

.method private cancelPendingRenderTask()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/third/gif/InvalidationHandler;->removeMessages(I)V

    return-void
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/apicloud/third/gif/GifDrawable;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/apicloud/third/gif/GifDrawable;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private scheduleNextRender()V
    .locals 8

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTask:Lcom/apicloud/third/gif/RenderTask;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTask:Lcom/apicloud/third/gif/RenderTask;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/third/gif/InvalidationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->recycle()V

    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addAnimationListener(Lcom/apicloud/third/gif/AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canSeekForward()Z
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v2, v3}, Lcom/apicloud/third/gif/transforms/Transform;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_2
    return-void
.end method

.method public getAllocationByteCount()J
    .locals 4

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getAllocationByteCount()J

    move-result-wide v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getFrameByteCount()I

    move-result v2

    :goto_0
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCornerRadius()F
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    instance-of v1, v0, Lcom/apicloud/third/gif/transforms/CornerRadiusTransform;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/third/gif/transforms/CornerRadiusTransform;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/transforms/CornerRadiusTransform;->getCornerRadius()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentLoop()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getCurrentLoop()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getLoopCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getDuration()I

    move-result v0

    return v0
.end method

.method public getError()Lcom/apicloud/third/gif/GifError;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/apicloud/third/gif/GifError;->fromCode(I)Lcom/apicloud/third/gif/GifError;

    move-result-object v0

    return-object v0
.end method

.method public getFrameByteCount()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFrameDuration(I)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getFrameDuration(I)I

    move-result p1

    return p1
.end method

.method public getInputSourceByteCount()J
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getSourceLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mScaledWidth:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getMetadataAllocationByteCount()J
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getMetadataByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x2

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPixel(II)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y must be < height"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "x must be < width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPixels([I)V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v1}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public getTransform()Lcom/apicloud/third/gif/transforms/Transform;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    return-object v0
.end method

.method public invalidateSelf()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifDrawable;->scheduleNextRender()V

    return-void
.end method

.method public isAnimationCompleted()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->isAnimationCompleted()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/apicloud/third/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/third/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->stop()V

    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifDrawable;->shutdown()V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public removeAnimationListener(Lcom/apicloud/third/gif/AnimationListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/apicloud/third/gif/GifDrawable$1;

    invoke-direct {v1, p0, p0}, Lcom/apicloud/third/gif/GifDrawable$1;-><init>(Lcom/apicloud/third/gif/GifDrawable;Lcom/apicloud/third/gif/GifDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public seekTo(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/apicloud/third/gif/GifDrawable$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/apicloud/third/gif/GifDrawable$2;-><init>(Lcom/apicloud/third/gif/GifDrawable;Lcom/apicloud/third/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToBlocking(I)V
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/third/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v0, -0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToFrame(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/apicloud/third/gif/GifDrawable$3;

    invoke-direct {v1, p0, p0, p1}, Lcom/apicloud/third/gif/GifDrawable$3;-><init>(Lcom/apicloud/third/gif/GifDrawable;Lcom/apicloud/third/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Frame index is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToFrameAndGet(I)Landroid/graphics/Bitmap;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/third/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Frame index is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seekToPositionAndGet(I)Landroid/graphics/Bitmap;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/third/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position is not positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1

    new-instance v0, Lcom/apicloud/third/gif/transforms/CornerRadiusTransform;

    invoke-direct {v0, p1}, Lcom/apicloud/third/gif/transforms/CornerRadiusTransform;-><init>(F)V

    iput-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {v0, p1}, Lcom/apicloud/third/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setDither(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->setLoopCount(I)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->setSpeedFactor(F)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/third/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/third/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTransform(Lcom/apicloud/third/gif/transforms/Transform;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mTransform:Lcom/apicloud/third/gif/transforms/Transform;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/apicloud/third/gif/transforms/Transform;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    iget-boolean v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->reset()V

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->start()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifDrawable;->stop()V

    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->restoreRemainder()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/third/gif/GifDrawable;->startAnimation(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startAnimation(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    iput-wide v1, p0, Lcom/apicloud/third/gif/GifDrawable;->mNextFrameRenderTime:J

    iget-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 p2, -0x1

    invoke-virtual {p1, p2, v1, v2}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/third/gif/GifDrawable;->cancelPendingRenderTask()V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v3, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTask:Lcom/apicloud/third/gif/RenderTask;

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable;->mRenderTaskSchedule:Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mIsRunning:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifDrawable;->cancelPendingRenderTask()V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->saveRemainder()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/apicloud/third/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "GIF: size: %dx%d, frames: %d, error: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
