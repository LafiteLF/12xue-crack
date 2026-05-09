.class public Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/provider/DataLoadProvider<",
        "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/apicloud/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

.field private final sourceEncoder:Lcom/apicloud/glide/load/model/ImageVideoWrapperEncoder;


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/provider/DataLoadProvider;Lcom/apicloud/glide/provider/DataLoadProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    .line 29
    new-instance v0, Lcom/apicloud/glide/load/model/ImageVideoWrapperEncoder;

    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

    move-result-object v1

    .line 30
    invoke-interface {p2}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apicloud/glide/load/model/ImageVideoWrapperEncoder;-><init>(Lcom/apicloud/glide/load/Encoder;Lcom/apicloud/glide/load/Encoder;)V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/model/ImageVideoWrapperEncoder;

    .line 31
    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 32
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    invoke-interface {p1}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object p1

    .line 33
    invoke-interface {p2}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

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
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

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

    .line 48
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/model/ImageVideoWrapperEncoder;

    return-object v0
.end method
