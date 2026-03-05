.class public Lcom/apicloud/glide/GifRequestBuilder;
.super Lcom/apicloud/glide/GenericRequestBuilder;
.source "GifRequestBuilder.java"

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
        "Ljava/io/InputStream;",
        "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
        "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
        ">;",
        "Lcom/apicloud/glide/BitmapOptions;",
        "Lcom/apicloud/glide/DrawableOptions;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/lang/Class<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    return-void
.end method

.method private toGifTransformations([Lcom/apicloud/glide/load/Transformation;)[Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;"
        }
    .end annotation

    .line 198
    array-length v0, p1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;

    const/4 v1, 0x0

    .line 199
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 200
    new-instance v2, Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;

    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/apicloud/glide/GifRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v4}, Lcom/apicloud/glide/Glide;->getBitmapPool()Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/apicloud/glide/load/Transformation;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic animate(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->animate(I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public animate(I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 280
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 309
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 300
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method applyCenterCrop()V
    .locals 0

    .line 440
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->centerCrop()Lcom/apicloud/glide/GifRequestBuilder;

    return-void
.end method

.method applyFitCenter()V
    .locals 0

    .line 435
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->fitCenter()Lcom/apicloud/glide/GifRequestBuilder;

    return-void
.end method

.method public bridge synthetic cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 116
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic centerCrop()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->centerCrop()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;

    .line 150
    iget-object v1, p0, Lcom/apicloud/glide/GifRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getBitmapCenterCrop()Lcom/apicloud/glide/load/resource/bitmap/CenterCrop;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GifRequestBuilder;->transformFrame([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->clone()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 430
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->clone()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/GifRequestBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->clone()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->crossFade()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic crossFade(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->crossFade(I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/GifRequestBuilder;->crossFade(II)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/GifRequestBuilder;->crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public crossFade()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 243
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(II)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 262
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    iget-object v1, p0, Lcom/apicloud/glide/GifRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public crossFade(Landroid/view/animation/Animation;I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            "I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-super {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 385
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->dontAnimate()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontAnimate()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 271
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->dontTransform()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 412
    invoke-super {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 126
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic error(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->error(I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public error(I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 348
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 357
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->fallback(I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 339
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 333
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic fitCenter()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/apicloud/glide/GifRequestBuilder;->fitCenter()Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fitCenter()Lcom/apicloud/glide/GifRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;

    .line 164
    iget-object v1, p0, Lcom/apicloud/glide/GifRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getBitmapFitCenter()Lcom/apicloud/glide/load/resource/bitmap/FitCenter;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GifRequestBuilder;->transformFrame([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/RequestListener<",
            "-TModelType;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 367
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 424
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic override(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/GifRequestBuilder;->override(II)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 394
    invoke-super {p0, p1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;->override(II)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->placeholder(I)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 318
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 327
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/Priority;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 135
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 418
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public skipMemoryCache(Z)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 376
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 403
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public thumbnail(F)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 87
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "***",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public thumbnail(Lcom/apicloud/glide/GifRequestBuilder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "*>;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 225
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public bridge synthetic transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 216
    invoke-super {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0
.end method

.method public varargs transformFrame([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->toGifTransformations([Lcom/apicloud/glide/load/Transformation;)[Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs transformFrame([Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;)Lcom/apicloud/glide/GifRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/resource/bitmap/BitmapTransformation;",
            ")",
            "Lcom/apicloud/glide/GifRequestBuilder<",
            "TModelType;>;"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->toGifTransformations([Lcom/apicloud/glide/load/Transformation;)[Lcom/apicloud/glide/load/resource/gif/GifDrawableTransformation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GifRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GifRequestBuilder;

    move-result-object p1

    return-object p1
.end method
