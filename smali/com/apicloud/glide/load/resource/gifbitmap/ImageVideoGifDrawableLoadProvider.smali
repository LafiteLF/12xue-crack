.class public Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/provider/DataLoadProvider<",
        "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
        "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/apicloud/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceEncoder:Lcom/apicloud/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Encoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/provider/DataLoadProvider;Lcom/apicloud/glide/provider/DataLoadProvider;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;

    .line 32
    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v1

    .line 33
    invoke-interface {p2}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 36
    new-instance p3, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;

    invoke-direct {v1, v0}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;)V

    invoke-direct {p3, v1}, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;)V

    iput-object p3, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 37
    iput-object v0, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 38
    new-instance p3, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;

    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

    move-result-object v0

    invoke-interface {p2}, Lcom/apicloud/glide/provider/DataLoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

    move-result-object p2

    invoke-direct {p3, v0, p2}, Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;-><init>(Lcom/apicloud/glide/load/ResourceEncoder;Lcom/apicloud/glide/load/ResourceEncoder;)V

    iput-object p3, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    .line 41
    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Lcom/apicloud/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lcom/apicloud/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/Encoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

    return-object v0
.end method
