.class public interface abstract Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;
.super Ljava/lang/Object;
.source "BitmapDecoderFactory.java"


# virtual methods
.method public abstract getImageInfo()[I
.end method

.method public abstract getImagePath()Ljava/lang/String;
.end method

.method public abstract made()Landroid/graphics/BitmapRegionDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
