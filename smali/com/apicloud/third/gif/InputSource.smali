.class public abstract Lcom/apicloud/third/gif/InputSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/third/gif/InputSource$AssetFileDescriptorSource;,
        Lcom/apicloud/third/gif/InputSource$AssetSource;,
        Lcom/apicloud/third/gif/InputSource$ByteArraySource;,
        Lcom/apicloud/third/gif/InputSource$DirectByteBufferSource;,
        Lcom/apicloud/third/gif/InputSource$FileDescriptorSource;,
        Lcom/apicloud/third/gif/InputSource$FileSource;,
        Lcom/apicloud/third/gif/InputSource$InputStreamSource;,
        Lcom/apicloud/third/gif/InputSource$ResourcesSource;,
        Lcom/apicloud/third/gif/InputSource$UriSource;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/third/gif/InputSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/third/gif/InputSource;-><init>()V

    return-void
.end method


# virtual methods
.method final createGifDrawable(Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZLcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {p0, p4}, Lcom/apicloud/third/gif/InputSource;->createHandleWith(Lcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p4

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/apicloud/third/gif/GifDrawable;-><init>(Lcom/apicloud/third/gif/GifInfoHandle;Lcom/apicloud/third/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-object v0
.end method

.method final createHandleWith(Lcom/apicloud/third/gif/GifOptions;)Lcom/apicloud/third/gif/GifInfoHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/third/gif/InputSource;->open()Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v0

    iget-char v1, p1, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    iget-boolean p1, p1, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->setOptions(CZ)V

    return-object v0
.end method

.method abstract open()Lcom/apicloud/third/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
