.class Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameSignature;,
        Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final callback:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;

.field private current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private final gifDecoder:Lcom/apicloud/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private requestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/apicloud/glide/gifdecoder/GifDecoder;II)V
    .locals 1

    .line 44
    invoke-static {p1}, Lcom/apicloud/glide/Glide;->get(Landroid/content/Context;)Lcom/apicloud/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/glide/Glide;->getBitmapPool()Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-static {p1, p3, p4, p5, v0}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Landroid/content/Context;Lcom/apicloud/glide/gifdecoder/GifDecoder;IILcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    const/4 p4, 0x0

    .line 43
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/apicloud/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/apicloud/glide/GenericRequestBuilder;)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;Lcom/apicloud/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/apicloud/glide/GenericRequestBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    .line 33
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-nez p3, :cond_0

    .line 50
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$1;)V

    invoke-direct {p3, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 52
    :cond_0
    iput-object p1, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->callback:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    .line 53
    iput-object p2, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/apicloud/glide/gifdecoder/GifDecoder;

    .line 54
    iput-object p3, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    .line 55
    iput-object p4, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    return-void
.end method

.method private static getRequestBuilder(Landroid/content/Context;Lcom/apicloud/glide/gifdecoder/GifDecoder;IILcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/apicloud/glide/load/resource/gif/GifFrameResourceDecoder;

    invoke-direct {v0, p4}, Lcom/apicloud/glide/load/resource/gif/GifFrameResourceDecoder;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 173
    new-instance p4, Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader;

    invoke-direct {p4}, Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader;-><init>()V

    .line 174
    invoke-static {}, Lcom/apicloud/glide/load/resource/NullEncoder;->get()Lcom/apicloud/glide/load/Encoder;

    move-result-object v1

    .line 175
    invoke-static {p0}, Lcom/apicloud/glide/Glide;->with(Landroid/content/Context;)Lcom/apicloud/glide/RequestManager;

    move-result-object p0

    const-class v2, Lcom/apicloud/glide/gifdecoder/GifDecoder;

    .line 176
    invoke-virtual {p0, p4, v2}, Lcom/apicloud/glide/RequestManager;->using(Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/apicloud/glide/RequestManager$GenericModelRequest;

    move-result-object p0

    .line 177
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    move-result-object p0

    const-class p1, Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;->as(Ljava/lang/Class;)Lcom/apicloud/glide/GenericTranscodeRequest;

    move-result-object p0

    .line 179
    invoke-virtual {p0, v1}, Lcom/apicloud/glide/GenericTranscodeRequest;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p0

    const/4 p1, 0x1

    .line 181
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p0

    sget-object p1, Lcom/apicloud/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    .line 182
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p0

    .line 183
    invoke-virtual {p0, p2, p3}, Lcom/apicloud/glide/GenericRequestBuilder;->override(II)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private loadNextFrame()V
    .locals 5

    .line 95
    iget-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/apicloud/glide/gifdecoder/GifDecoder;

    invoke-virtual {v2}, Lcom/apicloud/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 101
    iget-object v2, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/apicloud/glide/gifdecoder/GifDecoder;

    invoke-virtual {v2}, Lcom/apicloud/glide/gifdecoder/GifDecoder;->advance()V

    .line 102
    new-instance v2, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/apicloud/glide/gifdecoder/GifDecoder;

    invoke-virtual {v4}, Lcom/apicloud/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    .line 103
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    new-instance v1, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameSignature;

    invoke-direct {v1}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameSignature;-><init>()V

    .line 104
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v2}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->stop()V

    .line 82
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v0}, Lcom/apicloud/glide/Glide;->clear(Lcom/apicloud/glide/request/target/Target;)V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    return-void
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method onFrameReady(Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 116
    iput-object p1, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->current:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    .line 117
    iget-object v2, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->callback:Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    invoke-static {p1}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;->access$100(Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$DelayTarget;)I

    move-result p1

    invoke-interface {v2, p1}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady(I)V

    if-eqz v0, :cond_1

    .line 120
    iget-object p1, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const/4 p1, 0x0

    .line 123
    iput-boolean p1, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    .line 124
    invoke-direct {p0}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method public setFrameTransformation(Lcom/apicloud/glide/load/Transformation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/apicloud/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Transformation must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    .line 73
    invoke-direct {p0}, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/apicloud/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    return-void
.end method
