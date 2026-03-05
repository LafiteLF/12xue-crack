.class Lcom/apicloud/glide/load/resource/gif/GifResourceEncoder$Factory;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/load/resource/gif/GifResourceEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDecoder(Lcom/apicloud/glide/gifdecoder/GifDecoder$BitmapProvider;)Lcom/apicloud/glide/gifdecoder/GifDecoder;
    .locals 1

    .line 133
    new-instance v0, Lcom/apicloud/glide/gifdecoder/GifDecoder;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/gifdecoder/GifDecoder;-><init>(Lcom/apicloud/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    return-object v0
.end method

.method public buildEncoder()Lcom/apicloud/glide/gifencoder/AnimatedGifEncoder;
    .locals 1

    .line 141
    new-instance v0, Lcom/apicloud/glide/gifencoder/AnimatedGifEncoder;

    invoke-direct {v0}, Lcom/apicloud/glide/gifencoder/AnimatedGifEncoder;-><init>()V

    return-object v0
.end method

.method public buildFrameResource(Landroid/graphics/Bitmap;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/apicloud/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/apicloud/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/resource/bitmap/BitmapResource;-><init>(Landroid/graphics/Bitmap;Lcom/apicloud/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v0
.end method

.method public buildParser()Lcom/apicloud/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .line 137
    new-instance v0, Lcom/apicloud/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lcom/apicloud/glide/gifdecoder/GifHeaderParser;-><init>()V

    return-object v0
.end method
