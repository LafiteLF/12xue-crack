.class public Lcom/apicloud/glide/DrawableRequestBuilder;
.super Lcom/apicloud/glide/GenericRequestBuilder;
.source "DrawableRequestBuilder.java"

# interfaces
.implements Lcom/apicloud/glide/BitmapOptions;
.implements Lcom/apicloud/glide/DrawableOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/glide/GenericRequestBuilder<",
        "TModelType;",
        "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
        "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
        ">;",
        "Lcom/apicloud/glide/BitmapOptions;",
        "Lcom/apicloud/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/apicloud/glide/provider/LoadProvider;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TModelType;",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;",
            "Lcom/apicloud/glide/Glide;",
            "Lcom/apicloud/glide/manager/RequestTracker;",
            "Lcom/apicloud/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 49
    const-class v4, Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;)V

    .line 51
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->crossFade()Lcom/apicloud/glide/DrawableRequestBuilder;

    return-void
.end method


# virtual methods
.method public animate(I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 308
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 299
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 290
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic animate(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->animate(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method applyCenterCrop()V
    .locals 0

    .line 467
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;

    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 462
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->fitCenter()Lcom/apicloud/glide/DrawableRequestBuilder;

    return-void
.end method

.method public varargs bitmapTransform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 210
    array-length v0, p1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    const/4 v1, 0x0

    .line 212
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 213
    new-instance v2, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    iget-object v3, p0, Lcom/apicloud/glide/DrawableRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v3}, Lcom/apicloud/glide/Glide;->getBitmapPool()Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-direct {v2, v3, v4}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/Transformation;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/Transformation;

    .line 180
    iget-object v1, p0, Lcom/apicloud/glide/DrawableRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getDrawableCenterCrop()Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic centerCrop()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->centerCrop()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 440
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->clone()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/DrawableRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->clone()Lcom/apicloud/glide/DrawableRequestBuilder;

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

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->clone()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public final crossFade()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 255
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(II)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/apicloud/glide/DrawableRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic crossFade()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->crossFade()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->crossFade(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/DrawableRequestBuilder;->crossFade(II)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/DrawableRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 386
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 281
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->dontAnimate()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 422
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->dontTransform()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 358
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 367
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->error(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 349
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 343
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->fallback(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/Transformation;

    .line 195
    iget-object v1, p0, Lcom/apicloud/glide/DrawableRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getDrawableFitCenter()Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/DrawableRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic fitCenter()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/apicloud/glide/DrawableRequestBuilder;->fitCenter()Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/apicloud/glide/request/target/Target<",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .line 457
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/RequestListener<",
            "-TModelType;",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 377
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 434
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 404
    invoke-super {p0, p1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;->override(II)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/DrawableRequestBuilder;->override(II)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 328
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 337
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->placeholder(I)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/Priority;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 143
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 428
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 395
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Encoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 413
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/DrawableRequestBuilder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "*>;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "***",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 239
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 229
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public varargs transform([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/DrawableRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/apicloud/glide/DrawableRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->bitmapTransform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/DrawableRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    return-object p1
.end method
