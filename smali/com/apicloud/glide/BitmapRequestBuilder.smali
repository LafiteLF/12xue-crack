.class public Lcom/apicloud/glide/BitmapRequestBuilder;
.super Lcom/apicloud/glide/GenericRequestBuilder;
.source "BitmapRequestBuilder.java"

# interfaces
.implements Lcom/apicloud/glide/BitmapOptions;
.implements Lcom/apicloud/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/glide/GenericRequestBuilder<",
        "TModelType;",
        "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        "TTranscodeType;>;",
        "Lcom/apicloud/glide/BitmapOptions;",
        "Lcom/apicloud/glide/DrawableOptions;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

.field private downsampler:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

.field private imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TModelType;",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    .line 55
    sget-object p1, Lcom/apicloud/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->downsampler:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    .line 63
    iget-object p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {p1}, Lcom/apicloud/glide/Glide;->getBitmapPool()Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 64
    iget-object p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {p1}, Lcom/apicloud/glide/Glide;->getDecodeFormat()Lcom/apicloud/glide/load/DecodeFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

    .line 66
    new-instance p1, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object p2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object p3, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

    invoke-direct {p1, p2, p3}, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 67
    new-instance p1, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    iget-object p2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object p3, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

    invoke-direct {p1, p2, p3}, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-void
.end method

.method private crossFadeNotSupported()Ljava/lang/RuntimeException;
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".crossFade() is not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", use .animate() to provide a compatible animation."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private downsample(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/bitmap/Downsampler;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->downsampler:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    .line 117
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

    invoke-direct {v0, p1, v1, v2}, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 118
    new-instance p1, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    invoke-direct {p1, v0, v1}, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method


# virtual methods
.method public animate(I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 409
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 420
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 440
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 429
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic animate(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method applyCenterCrop()V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->centerCrop()Lcom/apicloud/glide/BitmapRequestBuilder;

    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 593
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->fitCenter()Lcom/apicloud/glide/BitmapRequestBuilder;

    return-void
.end method

.method public approximate()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 78
    sget-object v0, Lcom/apicloud/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->downsample(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asIs()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/apicloud/glide/load/resource/bitmap/Downsampler;->NONE:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->downsample(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public atMost()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 101
    sget-object v0, Lcom/apicloud/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->downsample(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 183
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public centerCrop()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;

    .line 283
    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getBitmapCenterCrop()Lcom/apicloud/glide/load/resource/bitmap/CenterCrop;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->transform([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->centerCrop()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 571
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->clone()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/BitmapRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->clone()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->clone()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 335
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0}, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 338
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public crossFade(I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 351
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 354
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public crossFade(II)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 384
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 387
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 391
    :cond_1
    invoke-direct {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    const-class v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/request/animation/BitmapCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 371
    :cond_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1

    .line 375
    :cond_1
    invoke-direct {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFadeNotSupported()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic crossFade()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFade()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFade(I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFade(II)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/BitmapRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 174
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 516
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 400
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->dontAnimate()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 553
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->dontTransform()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 192
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 479
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 488
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->error(I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 470
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 464
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->fallback(I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;

    .line 296
    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getBitmapFitCenter()Lcom/apicloud/glide/load/resource/bitmap/FitCenter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/BitmapRequestBuilder;->transform([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/BitmapRequestBuilder;->fitCenter()Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/apicloud/glide/load/DecodeFormat;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/DecodeFormat;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->decodeFormat:Lcom/apicloud/glide/load/DecodeFormat;

    .line 245
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->downsampler:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 246
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    new-instance v1, Lcom/apicloud/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v1}, Lcom/apicloud/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    iget-object v2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v0, v1, v2, p1}, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/apicloud/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 247
    new-instance v0, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;

    iget-object v2, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->downsampler:Lcom/apicloud/glide/load/resource/bitmap/Downsampler;

    iget-object v3, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->bitmapPool:Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v1, v2, v3, p1}, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/apicloud/glide/load/resource/bitmap/Downsampler;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    .line 248
    new-instance p1, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v0, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    invoke-direct {p1, v0, v1}, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public imageDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 207
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 588
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 498
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 565
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 525
    invoke-super {p0, p1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;->override(II)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/BitmapRequestBuilder;->override(II)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 449
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 458
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->placeholder(I)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/Priority;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 254
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 559
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 165
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 507
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Encoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 544
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 127
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/BitmapRequestBuilder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "*TTranscodeType;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 535
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "TTranscodeType;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 317
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 307
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public varargs transform([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 269
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public videoDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TTranscodeType;>;"
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->videoDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 221
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    iget-object v1, p0, Lcom/apicloud/glide/BitmapRequestBuilder;->imageDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    invoke-direct {v0, v1, p1}, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method
