.class public Lcom/apicloud/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapDrawableResourceTranscoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "Lcom/apicloud/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "Lcom/apicloud/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/apicloud/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lcom/apicloud/glide/load/engine/Resource;)Lcom/apicloud/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "Lcom/apicloud/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Lcom/apicloud/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 27
    invoke-virtual {p1}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lcom/apicloud/glide/load/engine/Resource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/apicloud/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {p1, v0}, Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lcom/apicloud/glide/load/engine/Resource;)Lcom/apicloud/glide/load/engine/Resource;

    move-result-object p1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lcom/apicloud/glide/load/engine/Resource;

    move-result-object p1

    :goto_0
    return-object p1
.end method
