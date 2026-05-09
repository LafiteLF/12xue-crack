.class public Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/provider/DataLoadProvider<",
        "Landroid/os/ParcelFileDescriptor;",
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

.field private final encoder:Lcom/apicloud/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

.field private final sourceEncoder:Lcom/apicloud/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Encoder<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v1, p1, p2}, Lcom/apicloud/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lcom/apicloud/glide/load/resource/file/FileToStreamDecoder;-><init>(Lcom/apicloud/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 29
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/apicloud/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    .line 30
    new-instance p1, Lcom/apicloud/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {p1}, Lcom/apicloud/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object p1, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lcom/apicloud/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    invoke-static {}, Lcom/apicloud/glide/load/resource/NullEncoder;->get()Lcom/apicloud/glide/load/Encoder;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

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

    .line 36
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

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

    .line 51
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lcom/apicloud/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lcom/apicloud/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/Encoder<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

    return-object v0
.end method
