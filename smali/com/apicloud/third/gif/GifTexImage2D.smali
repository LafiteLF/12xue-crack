.class public Lcom/apicloud/third/gif/GifTexImage2D;
.super Ljava/lang/Object;


# instance fields
.field private final mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;


# direct methods
.method public constructor <init>(Lcom/apicloud/third/gif/InputSource;Lcom/apicloud/third/gif/GifOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance p2, Lcom/apicloud/third/gif/GifOptions;

    invoke-direct {p2}, Lcom/apicloud/third/gif/GifOptions;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/third/gif/InputSource;->open()Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget-char v0, p2, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    iget-boolean p2, p2, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/third/gif/GifInfoHandle;->setOptions(CZ)V

    iget-object p1, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {p1}, Lcom/apicloud/third/gif/GifInfoHandle;->initTexImageDescriptor()V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/apicloud/third/gif/GifTexImage2D;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getDuration()I

    move-result v0

    return v0
.end method

.method public getFrameDuration(I)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->getFrameDuration(I)I

    move-result p1

    return p1
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getNumberOfFrames()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->getWidth()I

    move-result v0

    return v0
.end method

.method public glTexImage2D(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/third/gif/GifInfoHandle;->glTexImage2D(II)V

    return-void
.end method

.method public glTexSubImage2D(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/third/gif/GifInfoHandle;->glTexSubImage2D(II)V

    return-void
.end method

.method public recycle()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->recycle()V

    :cond_0
    return-void
.end method

.method public seekToFrame(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->seekToFrameGL(I)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/apicloud/third/gif/GifInfoHandle;->setSpeedFactor(F)V

    return-void
.end method

.method public startDecoderThread()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->startDecoderThread()V

    return-void
.end method

.method public stopDecoderThread()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTexImage2D;->mGifInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->stopDecoderThread()V

    return-void
.end method
